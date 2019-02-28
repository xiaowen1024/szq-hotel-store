package com.szq.store.entity.bo;

import java.util.Date;

/**
 * Created by yxw on 2018/7/20.
 */
public class PrivateClubBo {
    private  Integer id;
    private  String content;
    private  String image;
    private String createUser;//创建者
    private Date createTime;//创建时间
    private Date updateTime;//修改时间
    private String url;
    private  String wapUrl;
    private  String wapImage;

    public String getWapImage() {
        return wapImage;
    }

    public void setWapImage(String wapImage) {
        this.wapImage = wapImage;
    }

    public String getWapUrl() {
        return wapUrl;
    }

    public void setWapUrl(String wapUrl) {
        this.wapUrl = wapUrl;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getCreateUser() {
        return createUser;
    }

    public void setCreateUser(String createUser) {
        this.createUser = createUser;
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

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
