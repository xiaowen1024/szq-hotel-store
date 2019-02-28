package com.szq.store.entity.bo;


import com.szq.store.common.base.BaseModel;

import java.util.Date;

/**
 * Created by shishiming on 2018/7/23.
 */

public class AssetManagementDetailsBO extends BaseModel {
    private Integer id;              //主键
    private String imgUrl;           //图片地址
    private Date createTime;         //穿件时间
    private Date updateTime;         //修改时间
    private Integer status;
    private  String content;
    private  String title;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
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
