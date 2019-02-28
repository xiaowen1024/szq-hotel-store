package com.szq.store.web.controller.manage;

import com.szq.store.entity.bo.QuestionnaireBo;
import com.szq.store.entity.bo.UserBO;
import com.szq.store.entity.dto.ResultDTOBuilder;
import com.szq.store.service.QuestionnaireService;
import com.szq.store.util.JsonUtils;
import com.szq.store.web.controller.base.BaseCotroller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by shishiming on 2018/8/7.
 */
@Controller
@RequestMapping("/questionnaire")
public class QuestionnaireController extends BaseCotroller {

    @Resource
    private QuestionnaireService questionnaireService;

    /**
     * 查询用户是否测评过
     */
    @RequestMapping("/queryUserInfo")
    public void queryNewsInformationById(HttpServletResponse response,HttpServletRequest request){

        //判断用户是否登录
        UserBO userBO = super.getLoginUser(request);
        if (userBO == null) {
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007", "用户未登录！"));
            super.safeJsonPrint(response, result);
            return;
        }
        //查询是否有用户记录
        int count = questionnaireService.getQuestionnaireCountByUserId(userBO.getId());
        if(count == 0){
            QuestionnaireBo questionnaire = new QuestionnaireBo();
            questionnaire.setUserId(userBO.getId());
            int id = questionnaireService.addQuestionnaire(questionnaire);
        }

        QuestionnaireBo result = questionnaireService.getQuestionnaireByUserId(userBO.getId());
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(result));
        safeTextPrint(response, json);

    }

    /**
     * 修改用户记录
     */

    @RequestMapping("/update")
    public void update(HttpServletResponse response,HttpServletRequest request,QuestionnaireBo bo){

        //判断用户是否登录
        UserBO userBO = super.getLoginUser(request);
        if (userBO == null) {
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007", "用户未登录！"));
            super.safeJsonPrint(response, result);
            return;
        }
        //查询是否有用户记录
        QuestionnaireBo questionnaireBo = questionnaireService.getQuestionnaireByUserId(userBO.getId());
        if(questionnaireBo == null){
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("00000001", "没有找到该条数据！"));
            super.safeJsonPrint(response, result);
            return;
        }
        bo.setUserId(userBO.getId());

        questionnaireService.updateQuestionnaireBoByUserId(bo);
        QuestionnaireBo result = questionnaireService.getQuestionnaireByUserId(userBO.getId());
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(result));
        safeTextPrint(response, json);

    }
}
