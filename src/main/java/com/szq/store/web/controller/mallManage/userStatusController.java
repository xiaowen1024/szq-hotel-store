package com.szq.store.web.controller.mallManage;

import com.szq.store.entity.bo.QuestionnaireBo;
import com.szq.store.entity.bo.UserBO;
import com.szq.store.entity.dto.ResultDTOBuilder;
import com.szq.store.service.BindingService;
import com.szq.store.service.LoginService;
import com.szq.store.service.QuestionnaireService;
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
 * Created by yxw on 2018/9/26.
 */
@Controller
@RequestMapping("/userStatus")
public class userStatusController extends BaseCotroller {
    @Resource
            private QuestionnaireService questionnaireService;
    @Resource
            private BindingService bindingService;
    @Resource
    private LoginService loginService;


    @RequestMapping("/info")
    public void queryShoppingCarById(HttpServletResponse response,HttpServletRequest request){
         UserBO userBO = super.getLoginUser(request) ;
        if (userBO == null ) {
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007" , "用户未登录！")) ;
            super.safeJsonPrint(response , result);
            return ;
        }
        UserBO us = loginService.selectuserInfo(userBO.getId());
        us.setPassword("");
    //    QuestionnaireBo questionnaireBo = questionnaireService.getQuestionnaireByUserId(userBO.getId());
        //int count = bindingService.queryInfo(userBO.getId());
        Map<String, Object> resultMap = new HashMap<String, Object>();
   //     resultMap.put("questionnaireBo",questionnaireBo);
    //    resultMap.put("count",count);
        resultMap.put("userBo",us);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(resultMap));

        safeTextPrint(response, json);

    }
}
