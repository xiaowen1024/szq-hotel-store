package com.szq.store.entity.bo;

import java.util.Date;

/**
 * Created by yxw on 2018/7/20.
 */
public class ImageBo {
    private  Integer id;
    private  String image;
    private  String createUser;//创建用户
    private  String updateUser;//修改用户
    private Date updateTime;//修改时间

    public String getUpdateUser() {
        return updateUser;
    }

    public void setUpdateUser(String updateUser) {
        this.updateUser = updateUser;
    }

    public String getCreateUser() {
        return createUser;
    }

    public void setCreateUser(String createUser) {
        this.createUser = createUser;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
}
