package com.szq.store.entity.bo;


import com.szq.store.common.base.BaseModel;

import java.util.Date;

/**
 * Created by shishiming on 2018/8/7.
 */
public class QuestionnaireBo extends BaseModel {

    private Integer id;//id
    private Integer userId;//用户id
    private Integer score;//分数
    private Date createTime;//创建时间
    private Integer cognizance;//合格者认定：0，没有认定，1已认定 ,2不用再次确认
    private Integer evaluation;//是否测评：0没有，1已经测评
    private Integer examen;//是否问卷调查过：0没有，1有

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getCognizance() {
        return cognizance;
    }

    public void setCognizance(Integer cognizance) {
        this.cognizance = cognizance;
    }

    public Integer getEvaluation() {
        return evaluation;
    }

    public void setEvaluation(Integer evaluation) {
        this.evaluation = evaluation;
    }

    public Integer getExamen() {
        return examen;
    }

    public void setExamen(Integer examen) {
        this.examen = examen;
    }
}
