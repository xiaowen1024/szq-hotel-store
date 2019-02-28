package com.szq.store.service;

import com.szq.store.dao.QuestionnaireDao;
import com.szq.store.entity.bo.QuestionnaireBo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * Created by shishiming on 2018/8/7.
 */
@Transactional
@Service("questionnaireService")
public class QuestionnaireService {
    @Resource
    private QuestionnaireService questionnaireService;
    @Resource
    private QuestionnaireDao questionnaireDao;

    //查找用户count
    public int getQuestionnaireCountByUserId(Integer userId){
        if(userId == null || userId == 0){
            return 0;
        }
        return  questionnaireDao.getQuestionnaireCountByUserId(userId);
    }
    //查找用户信息
    public QuestionnaireBo getQuestionnaireByUserId(Integer userId){
        if(userId == null || userId == 0){
            return null;
        }
        return  questionnaireDao.getQuestionnaireByUserId(userId);
    }
    //修改问卷调查
    public void updateQuestionnaireBoByUserId(QuestionnaireBo bo){
        if(bo.getUserId() == null || bo.getUserId() == 0){
            return;
        }
        questionnaireDao.updateQuestionnaireBoByUserId(bo);
    }
    //创建用户记录
    public int addQuestionnaire(QuestionnaireBo bo){
        if(bo.getUserId() == null || bo.getUserId() == 0){
            return 0;
        }
        return questionnaireDao.addQuestionnaire(bo);
    }

}
