package com.szq.store.entity.bo;


import com.szq.store.common.base.BaseModel;

import java.util.Date;

/**
 * Created by shishiming on 2018/9/4.
 */
public class BindingBo extends BaseModel {

    private Integer id;//主键
    private Integer userId;//用户id
    private Integer privateConsultantId;//顾问id
    private Date crateTime;//创建时间

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

    public Integer getPrivateConsultantId() {
        return privateConsultantId;
    }

    public void setPrivateConsultantId(Integer privateConsultantId) {
        this.privateConsultantId = privateConsultantId;
    }

    public Date getCrateTime() {
        return crateTime;
    }

    public void setCrateTime(Date crateTime) {
        this.crateTime = crateTime;
    }
}
