package com.szq.store.entity.mallBo;


import com.szq.store.common.base.BaseModel;

import java.util.Date;

/**
 * Created by yxw on 2018/8/1.
 * 配送地址
 */
public class ReceivingAdressBo extends BaseModel {
    private  Integer id;
    private  String name;//收货人姓名
    private  String address;//地址
    private  String addressDetails;//详细地址
    private  String phone;//电话
    private  String fixedTelephone;//固定电话
    private  String postalCode;//邮政编码
    private  String addressAlias;//地址别名
    private  Integer userId;//用户Id
    private Date createTime;
    private  Date updateTime;
    private Integer defaultAddress;//是否为默认地址

    public Integer getDefaultAddress() {
        return defaultAddress;
    }

    public void setDefaultAddress(Integer defaultAddress) {
        this.defaultAddress = defaultAddress;
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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAddressDetail() {
        return addressDetails;
    }

    public void setAddressDetail(String addressDetail) {
        this.addressDetails = addressDetail;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getFixedTelephone() {
        return fixedTelephone;
    }

    public void setFixedTelephone(String fixedTelephone) {
        this.fixedTelephone = fixedTelephone;
    }

    public String getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }

    public String getAddressAlias() {
        return addressAlias;
    }

    public void setAddressAlias(String addressAlias) {
        this.addressAlias = addressAlias;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
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
