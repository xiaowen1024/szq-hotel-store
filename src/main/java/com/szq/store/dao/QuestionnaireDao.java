package com.szq.store.dao;

import com.szq.store.entity.bo.QuestionnaireBo;

/**
 * Created by shishiming on 2018/8/7.
 */
public interface QuestionnaireDao {

    //查找用户count
    int getQuestionnaireCountByUserId(Integer userId);
    //查找用户信息
    QuestionnaireBo getQuestionnaireByUserId(Integer userId);
    //修改问卷调查
    void updateQuestionnaireBoByUserId(QuestionnaireBo bo);
    //创建用户记录
    int addQuestionnaire(QuestionnaireBo bo);

}
