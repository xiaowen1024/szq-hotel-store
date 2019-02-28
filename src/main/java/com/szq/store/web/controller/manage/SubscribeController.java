package com.szq.store.web.controller.manage;


import com.szq.store.entity.bo.SubscribeBo;
import com.szq.store.entity.bo.UserBO;
import com.szq.store.entity.dto.ResultDTOBuilder;
import com.szq.store.query.QueryInfo;
import com.szq.store.service.SubscribeService;
import com.szq.store.util.JsonUtils;
import com.szq.store.util.StringUtils;
import com.szq.store.util.redisUtils.RedissonHandler;
import com.szq.store.web.controller.base.BaseCotroller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by shishiming on 2018/8/30.
 */

@Controller
@RequestMapping("/subscribe")
public class SubscribeController extends BaseCotroller {

    @Autowired
    private SubscribeService subscribeService;

    @RequestMapping("/list")
    public void getSubscribeList(HttpServletResponse response,HttpServletRequest request,Integer pageNo, Integer pageSize,Integer productType,Integer status){

        UserBO userBO = super.getLoginUser(request);
        //* 2. 验证账户状态 *//*
        if (userBO == null ) {
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007" , "用户未登录！")) ;
            super.safeJsonPrint(response , result);
            return ;
        }


        QueryInfo queryInfo = getQueryInfo(pageNo, pageSize);

        Map<String, Object> map = new HashMap<String, Object>();
        if(queryInfo != null){
            map.put("pageOffset", queryInfo.getPageOffset());
            map.put("pageSize", queryInfo.getPageSize());
        }

        map.put("userId",userBO.getId());
        /*map.put("userId",userBO.getId());*/
        map.put("productType",productType);
        map.put("status",status);
    /*    List<productResponseBo> responseBos =subscribeService.getSubscribeList(map);
        for (productResponseBo s:responseBos){
            if (s.getProductType()==3||s.getPayTime()!=null){
              Long paytime = s.getPayTime().getTime();
                Long mTime =s.getMaturity().getTime();
                Date date =new Date();
               Long newDate =date.getTime();
                double betweenDate = (newDate - paytime) / (1000 * 60 * 60 * 24 * 12);
                double A= Math.floor(betweenDate);
            }
        }*/
        Map<String, Object> resultMap = new HashMap<String, Object>();
        resultMap.put("data",subscribeService.getSubscribeList(map));
        resultMap.put("account",subscribeService.accountInfo(userBO.getId()));
        resultMap.put("count",subscribeService.getSubscribeCount(map));
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(resultMap));

        safeTextPrint(response, json);
    }



    @RequestMapping("/add")
    public void addSubscribe (HttpServletResponse response, HttpServletRequest request, SubscribeBo subscribeBo, String code){

        UserBO userBO = super.getLoginUser(request);
        /* 2. 验证账户状态 */
        if (userBO == null ) {
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007" , "用户未登录！")) ;
            super.safeJsonPrint(response , result);
            return ;
        }
        if(subscribeBo == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }
        if(StringUtils.isEmpty(subscribeBo.getName())|| StringUtils.isEmpty(subscribeBo.getPhone()) || null == subscribeBo.getAmountOfInvestment()
                || null == subscribeBo.getPrivateInvestmentId()){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }

        //从缓存中获取验证码
        String mobileAuthCode = "";
        mobileAuthCode = RedissonHandler.getInstance().get(subscribeBo.getPhone() + "_subscribe");
        if("".equals(mobileAuthCode) || !code.equals(mobileAuthCode)){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001","验证码错误！"));
            safeTextPrint(response, json);
            return;
        }
        subscribeBo.setUserId(userBO.getId());
        subscribeBo.setStatus(1);
        subscribeService.addSubscribe(subscribeBo);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);
    }


}
