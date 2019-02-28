package com.szq.store.entity.bo;

import com.szq.store.common.base.BaseModel;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by yxw on 2018/7/18.
 */
public class AdminBo extends BaseModel implements Serializable {
    /**
     * 用户状态  0：正常 1：删除
     */
    private int status;
    private Integer id;		// ID
    private  String password; //密码
    private  String account; //账户
    private Date createTime;//创建时间
    private  String uuid;
    private  String name;//姓名
    private String lastURL ;

    public String getLastURL() {
        return lastURL;
    }

    public void setLastURL(String lastURL) {
        this.lastURL = lastURL;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
