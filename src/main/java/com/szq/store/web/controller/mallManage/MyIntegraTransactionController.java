package com.szq.store.web.controller.mallManage;

import com.szq.store.entity.bo.UserBO;
import com.szq.store.entity.bo.imageresultBo;
import com.szq.store.entity.dto.ResultDTOBuilder;
import com.szq.store.entity.mallBo.AccountBo;
import com.szq.store.entity.mallBo.IntegralTransactionBo;
import com.szq.store.pop.SystemConfig;
import com.szq.store.query.QueryInfo;
import com.szq.store.service.LoginService;
import com.szq.store.service.UploadService;
import com.szq.store.service.mallService.AccountService;
import com.szq.store.service.mallService.IntegralTransactionService;
import com.szq.store.util.JsonUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by yxw on 2018/9/8.
 */
@Controller
@RequestMapping("myintegraTransactionController")
//FIXME  等待后续添加模块
public class MyIntegraTransactionController extends  BrandController {
    @Resource
    private IntegralTransactionService integralTransactionService;
    @Resource
    private UploadService uploadService;
    @Resource
    private AccountService accountService;
    @Resource
    private LoginService loginService;
    @RequestMapping("/list")
    public  void info(HttpServletRequest request ,HttpServletResponse response,Integer pageNo,Integer pageSize){
        UserBO userBO = super.getLoginUser(request);
    /* 2. 验证账户状态 */
        if (userBO == null) {
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007", "用户未登录！"));
            super.safeJsonPrint(response, result);
            return;
        }
        QueryInfo queryInfo = getQueryInfo(pageNo, pageSize);

        Map<String, Object> map = new HashMap<String, Object>();
        if(queryInfo != null){
            map.put("pageOffset", queryInfo.getPageOffset());
            map.put("pageSize", queryInfo.getPageSize());
        }

        AccountBo news = accountService.queryAccountByUserId(userBO.getId());
        map.put("userId",userBO.getId());
        List<IntegralTransactionBo>integralTransactionInfo=integralTransactionService.queryIntegralTransactionList(map);
        Map<String, Object> resultMap = new HashMap<String, Object>();
        if (news.getLeavestatus()==0){
            resultMap.put("leave_image", SystemConfig.getString("image_account0"));
            resultMap.put("smallimage",SystemConfig.getString(""));
            resultMap.put("leave","普通会员");
        }
        if (news.getLeavestatus()==1){
            resultMap.put("leave_image",SystemConfig.getString("image_account1"));
            resultMap.put("smallimage",SystemConfig.getString("image_account_small0"));
            resultMap.put("leave","悦享卡会员");
        }
        if (news.getLeavestatus()==2){
            resultMap.put("leave_image",SystemConfig.getString("image_account2"));
            resultMap.put("smallimage",SystemConfig.getString("image_account_small1"));
            resultMap.put("leave","悦亲卡会员");
        }
        if (news.getLeavestatus()==3){
            resultMap.put("leave_image",SystemConfig.getString("image_account3"));
            resultMap.put("smallimage",SystemConfig.getString("image_account_small2"));
            resultMap.put("leave","悦荣卡会员");
        }
        if (news.getLeavestatus()==4){
            resultMap.put("leave_image",SystemConfig.getString("image_account4"));
            resultMap.put("smallImage",SystemConfig.getString("image_account_small3"));
            resultMap.put("leave","悦尊卡会员");
        }
        resultMap.put("data",integralTransactionInfo);
        resultMap.put("count", integralTransactionService.queryIntegralTransactionCount(map));
        resultMap.put("phone",userBO.getPhoneNumber());
        resultMap.put("integral",news.getIntegral());
        resultMap.put("Url","https://" + SystemConfig.getString("image_bucketName")+".oss-cn-beijing.aliyuncs.com/");

        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(resultMap));
        safeTextPrint(response, json);

    }

    @RequestMapping(value = "/uploadImage", produces = {"application/json;charset=UTF-8"})
    @RequiresPermissions(value = "material:upload")
    public void uploadMaterialLibrary(@RequestParam("myFile") MultipartFile file,
                                      HttpServletResponse response,HttpServletRequest request) throws Exception {
        UserBO userBO = super.getLoginUser(request) ;
        if (userBO==null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }
        imageresultBo result = uploadService.uploadMaterialLibrary(file);
        if (result==null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }else {
            userBO.setHeadPortrait(result.getImageUrl());
            loginService.updateUserimage(userBO);
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(result));
            safeTextPrint(response, json);
        }
    }

}

