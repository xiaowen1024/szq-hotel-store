package com.szq.store.entity.bo;

import com.szq.store.common.base.BaseModel;

import java.util.Date;

/**
 * Created by shishiming on 2018/8/30.
 */
public class MembershipActivitesBo extends BaseModel {
    private Integer id;//id
    private String title;//标题
    private String imgUrl;//图片
    private String content;//内容
    private Date activitieTime;//活动时间
    private String local;//活动所属地区
    private Integer price;//积分价格
    private Integer enrolment;//最多报名人数
    private Date createTime;//创建时间
    private Date updateTime;//修改时间
    private String synopsis;//简介

    public String getSynopsis() {
        return synopsis;
    }

    public void setSynopsis(String synopsis) {
        this.synopsis = synopsis;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getActivitieTime() {
        return activitieTime;
    }

    public void setActivitieTime(Date activitieTime) {
        this.activitieTime = activitieTime;
    }

    public String getLocal() {
        return local;
    }

    public void setLocal(String local) {
        this.local = local;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public Integer getEnrolment() {
        return enrolment;
    }

    public void setEnrolment(Integer enrolment) {
        this.enrolment = enrolment;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
}
