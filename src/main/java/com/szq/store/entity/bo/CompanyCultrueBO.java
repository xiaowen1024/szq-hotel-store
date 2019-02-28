package com.szq.store.entity.bo;

import com.szq.store.common.base.BaseModel;

import java.util.Date;

/**
 * Created by shishiming on 2018/7/18.
 */
public class CompanyCultrueBO extends BaseModel {
    private Integer id;           //ID
    private String title;         //标题
    private String headTitle;     //头部标题
    private String source;        //来源
    private Date createTime;      //创建时间
    private Date updateTime;      //修改时间
    private String content;       //状态
    private String createNewsUser;//新闻创建者
    private String Image;
    private  Integer status;

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getImage() {
        return Image;
    }

    public void setImage(String image) {
        Image = image;
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

    public String getHeadTitle() {
        return headTitle;
    }

    public void setHeadTitle(String headTitle) {
        this.headTitle = headTitle;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
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

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getCreateNewsUser() {
        return createNewsUser;
    }

    public void setCreateNewsUser(String createNewsUser) {
        this.createNewsUser = createNewsUser;
    }
}
