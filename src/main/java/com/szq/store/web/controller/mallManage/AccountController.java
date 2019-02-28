package com.szq.store.web.controller.mallManage;

import com.szq.store.entity.dto.ResultDTOBuilder;
import com.szq.store.entity.mallBo.AccountBo;
import com.szq.store.service.mallService.AccountService;
import com.szq.store.util.JsonUtils;
import com.szq.store.web.controller.base.BaseCotroller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by yxw on 2018/8/2.
 */
@Controller
@RequestMapping("/Account")
public class AccountController extends BaseCotroller {
    @Resource
    private AccountService accountService;
    @RequestMapping("/delete")
    public void deleteAccount(HttpServletResponse response, Integer id){
        if (id == null || id == 0 ) {
            return;
        }
        AccountBo news = accountService.queryAccountByUserId(id);

        if (news == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
        }else {
            accountService.deleteAccount(id);
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
            safeJsonPrint(response, json);
        }
    }

    @RequestMapping("/add")
    public void addAccount (HttpServletResponse response, AccountBo news){
        if(news == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        }
        else{
            accountService.addAccount(news);
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
            safeTextPrint(response, json);
        }
    }

    @RequestMapping("/updatePassWord")
    public void updatePassWord (HttpServletResponse response,Integer userId, String passWord){
        AccountBo newsDetail = accountService.queryAccountByUserId(userId);

        if(passWord == null||userId==null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        }
        else if(newsDetail == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
        }else{
            newsDetail.setPaymentPassword(passWord);
            accountService.updatePassWord(newsDetail);
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
            safeTextPrint(response, json);
        }

    }
    @RequestMapping("/updateIntegral")
    public void updateIntegral (HttpServletResponse response,Integer userId, Integer number){
        AccountBo newsDetail = accountService.queryAccountByUserId(userId);

        if(number == null||userId==null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        }
        else if(newsDetail == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
        }else{
            Integer  integral =newsDetail.getIntegral();
            newsDetail.setIntegral(integral-number);
            accountService.updateIntegral(newsDetail);
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
            safeTextPrint(response, json);
        }

    }
    @RequestMapping("/updateAddIntegral")
    public void updateAddIntegral (HttpServletResponse response,Integer userId, Integer number){
        AccountBo newsDetail = accountService.queryAccountByUserId(userId);

        if(number == null||userId==null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        }
        else if(newsDetail == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
        }else{
            Integer  integral =newsDetail.getIntegral();
            newsDetail.setIntegral(integral+number);
            accountService.updateAddIntegral(newsDetail);
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
            safeTextPrint(response, json);
        }

    }

    @RequestMapping("/detail")
    public void queryAccountByUserId (HttpServletResponse response,Integer userId){
        AccountBo news = accountService.queryAccountByUserId(userId);
        if (news == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
        }
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(news));
        safeTextPrint(response, json);

    }

}
