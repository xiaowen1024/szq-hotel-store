package com.szq.store.web.controller.mallManage;

import com.szq.store.entity.bo.UserBO;
import com.szq.store.entity.dto.ResultDTOBuilder;
import com.szq.store.entity.mallBo.AccountBo;
import com.szq.store.entity.mallBo.IntegralTransactionBo;
import com.szq.store.entity.mallBo.OrderBo;
import com.szq.store.entity.mallBo.OrderInfo;
import com.szq.store.service.mallService.AccountService;
import com.szq.store.service.mallService.IntegralTransactionService;
import com.szq.store.service.mallService.OrderService;
import com.szq.store.util.JsonUtils;
import com.szq.store.util.MD5Util;
import com.szq.store.web.controller.base.BaseCotroller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import java.util.List;

/**
 * Created by yxw on 2018/9/7.
 */
@Controller
@RequestMapping("/pay")
public class payOrderController extends BaseCotroller {
    @Resource
    private AccountService accountService;
    @Resource
    private OrderService orderService;
    @Resource
    private IntegralTransactionService integralTransactionService;
    @RequestMapping("/payOrder")
    public void payOrder(HttpServletResponse response,HttpServletRequest request, String passWord, Long orderId,Integer count) {
        if (passWord == null || orderId == null||count==null) {
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }
        /*
        * 支付密码正确
        * 订单状态改变
        * 积分记录信息
        * 账户积分余额改变
        */
        UserBO userBO = super.getLoginUser(request);
        Integer userId = userBO.getId();
        AccountBo accountBo =accountService.queryAccountByUserId(userId);
    //* 2. 验证账户状态 *//*
        if (userBO == null) {
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007", "用户未登录！"));
            super.safeJsonPrint(response, result);
            return;
        }
       if(!MD5Util.digest(passWord).equals(accountBo.getPaymentPassword())){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000008"));
            safeTextPrint(response, json);
           return ;
       }
        Date s=new Date();
        //订单状态改变
        OrderBo orderBo =new OrderBo();
        orderBo.setOrderId(orderId);
        orderBo.setState(2);
        orderBo.setCreateTime(s);
        orderService.updateOrderstatus(orderBo);
        /*积分记录信息*/
        IntegralTransactionBo integralTransactionBo =new IntegralTransactionBo();
        integralTransactionBo.setOrderId(orderId);
        integralTransactionBo.setUserId(userId);
        integralTransactionBo.setDeal(-count);
        integralTransactionBo.setOddintegral(accountBo.getIntegral() - count);
        integralTransactionBo.setState(1);
        List<OrderInfo> orderInfos =orderService.queryOrderListByOrderId(orderId);
        String name="";
        for (OrderInfo order:orderInfos){
            if (orderInfos.size()==1) {
                name = name + order.getName();
            }else {
                name = name + order.getName() + "/";
            }
        }
        integralTransactionBo.setPayinfo(name);
        integralTransactionService.addIntegralTransaction(integralTransactionBo);
        accountBo.setIntegral(accountBo.getIntegral()-count);
        accountService.updateIntegral(accountBo);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);
    }
}

