package com.szq.store.entity.bo;

import java.util.Date;

/**
 * Created by yxw on 2018/7/20.
 */
public class ModuleBo {
    private  Integer id;
    private  String title;
    private  String engTitle;
    private  String image;
    private  String content;
    private  String createUser;//创建用户
    private  String updateUser;//修改用户
    private Date updateTime;//修改时间

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

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getEngTitle() {
        return engTitle;
    }

    public void setEngTitle(String engTitle) {
        this.engTitle = engTitle;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
