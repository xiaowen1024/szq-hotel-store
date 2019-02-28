package com.szq.store.entity.bo;

import java.util.Date;

/**
 * Created by yxw on 2018/7/20.
 */
public class BannerBo {
    private Integer id;
    private  String image;
    private  String url;
    private  String createUser;//创建用户
    private  String updateUser;//修改用户
    private Date updateTime;//修改时间
    private String wapImage;
    private String wapUrl;

    public String getWapUrl() {
        return wapUrl;
    }

    public void setWapUrl(String wapUrl) {
        this.wapUrl = wapUrl;
    }

    public String getWapImage() {
        return wapImage;
    }

    public void setWapImage(String wapImage) {
        this.wapImage = wapImage;
    }

    public String getCreateUser() {
        return createUser;
    }

    public void setCreateUser(String createUser) {
        this.createUser = createUser;
    }

    public String getUpdateUser() {
        return updateUser;
    }

    public void setUpdateUser(String updateUser) {
        this.updateUser = updateUser;
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

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
