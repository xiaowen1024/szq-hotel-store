package com.szq.store.web.controller.manage;

import com.szq.store.entity.bo.UserBO;
import com.szq.store.entity.dto.ResultDTOBuilder;
import com.szq.store.pop.SystemConfig;
import com.szq.store.service.BindingService;
import com.szq.store.util.JsonUtils;
import com.szq.store.util.redisUtils.RedissonHandler;
import com.szq.store.web.controller.base.BaseCotroller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by shishiming on 2018/8/30.
 */

@Controller
@RequestMapping("/binding")
public class BindingController extends BaseCotroller{

    @Autowired
    private BindingService bindingService;

    @RequestMapping("/add")
    public void addBinding (HttpServletResponse response,HttpServletRequest request,Integer privateConsultantId,String phone,String code){

        UserBO userBO = super.getLoginUser(request);
        /* 2. 验证账户状态 */
        if (userBO == null ) {
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007" , "用户未登录！")) ;
            super.safeJsonPrint(response , result);
            return ;
        }
        if(privateConsultantId == null || privateConsultantId == 0){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }

        String mobileAuthCode = "";
        mobileAuthCode = RedissonHandler.getInstance().get(phone + "_bing");
        if("".equals(mobileAuthCode) || !code.equals(mobileAuthCode)){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001","验证码错误！"));
            safeTextPrint(response, json);
            return;
        }

        Map<String,Object> map = new HashMap<String, Object>();
        map.put("privateConsultantId",privateConsultantId);
        map.put("userId",userBO.getId());
        map.put("status",1);
        map.put("phone",phone);
        bindingService.addBinding(map);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);
    }


    @RequestMapping("/delete")
    public void deleteBinding (HttpServletResponse response,HttpServletRequest request,Integer id){

        UserBO userBO = super.getLoginUser(request);
        /* 2. 验证账户状态 */
        if (userBO == null ) {
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007" , "用户未登录！")) ;
            super.safeJsonPrint(response , result);
            return ;
        }
        if(id == null || id == 0){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }

        bindingService.deleteBinding(id);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);
    }


    @RequestMapping("/list")
    public void getBindingList (HttpServletResponse response,HttpServletRequest request){

        UserBO userBO = super.getLoginUser(request);
        /* 2. 验证账户状态 */
        if (userBO == null ) {
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007" , "用户未登录！")) ;
            super.safeJsonPrint(response, result);
            return ;
        }

        List<Map<String,Object>> list = bindingService.getBindingList(userBO.getId());
        Map<String,Object> resultMap = new HashMap<String, Object>();
        resultMap.put("Url", "https://" + SystemConfig.getString("image_bucketName") + ".oss-cn-beijing.aliyuncs.com/");
        resultMap.put("data",list);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(resultMap));
        safeTextPrint(response, json);
    }


}
