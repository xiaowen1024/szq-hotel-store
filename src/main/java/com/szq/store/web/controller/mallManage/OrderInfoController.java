package com.szq.store.web.controller.mallManage;

import com.szq.store.entity.bo.UserBO;
import com.szq.store.entity.dto.ResultDTOBuilder;
import com.szq.store.entity.mallBo.AccountBo;
import com.szq.store.entity.mallBo.orderAddressBo;
import com.szq.store.pop.SystemConfig;
import com.szq.store.service.mallService.AccountService;
import com.szq.store.service.mallService.GoodsService;
import com.szq.store.service.mallService.ReceivingAdressService;
import com.szq.store.util.JsonUtils;
import com.szq.store.web.controller.base.BaseCotroller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by yxw on 2018/9/6.
 */
@Controller
@RequestMapping("/orderInfo")
public class OrderInfoController extends BaseCotroller {
    @Resource
    private GoodsService goodsService;
    @Resource
    private ReceivingAdressService receivingAdressService;
    @Resource
    private AccountService accountService;
    @RequestMapping("/detailList")
    public void deleteInfoList(HttpServletResponse response,HttpServletRequest request) {
    UserBO userBO = super.getLoginUser(request);

    //* 2. 验证账户状态 *//*
        if (userBO == null) {
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007", "用户未登录！"));
            super.safeJsonPrint(response, result);
            return;
        }
        Integer userId =userBO.getId();
        AccountBo accountBo = accountService.queryAccountByUserId(userId);

        Map<String,Object> map =new HashMap<String, Object>();
        map.put("userId",userId);
        Map<String, Object> resultMap = new HashMap<String, Object>();
        if (accountBo.getPaymentPassword()==null||accountBo.getPaymentPassword().equals("")){
            resultMap.put("passWord",false);
        }else {
            resultMap.put("passWord",true);
        }
        resultMap.put("address",receivingAdressService.queryReceivingAdressList(map));
        resultMap.put("Url","https://" + SystemConfig.getString("image_bucketName")+".oss-cn-beijing.aliyuncs.com/");
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(resultMap));
        safeTextPrint(response, json);
    }
    @RequestMapping("/orderAdreess")
    public  void orderAdress(HttpServletResponse response,HttpServletRequest request,Long orderId){
        UserBO userBO = super.getLoginUser(request);
        if (userBO == null) {
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007", "用户未登录！"));
            super.safeJsonPrint(response, result);
            return;
        }
        Integer userId =userBO.getId();
        Map<String,Object> map =new HashMap<String, Object>();
        map.put("orderId",orderId);
        map.put("userId",userId);
        orderAddressBo addressBo= receivingAdressService.queryorderAddress(map);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(addressBo));
        safeTextPrint(response, json);

    }

}
