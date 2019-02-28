package com.szq.store.entity.mallBo;

import java.util.Date;

/**
 * Created by yxw on 2018/8/1.
 * 品牌
 */
public class BrandBo {
    private  Integer id;
    private  String name;
    private  String produced;//产地
    private  String createUser;
    private  String updateUser;
    private Date createTime;
    private  Date updateTime;
    private  Integer goodsTypeId;
    private  Integer leaveId;

    public Integer getLeaveId() {
        return leaveId;
    }

    public void setLeaveId(Integer leaveId) {
        this.leaveId = leaveId;
    }

    public Integer getGoodsTypeId() {
        return goodsTypeId;
    }

    public void setGoodsTypeId(Integer goodsTypeId) {
        this.goodsTypeId = goodsTypeId;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getProduced() {
        return produced;
    }

    public void setProduced(String produced) {
        this.produced = produced;
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
