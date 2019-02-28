package com.szq.store.entity.mallBo;


import com.szq.store.common.base.BaseModel;

import java.util.Date;

/**
 * Created by yxw on 2018/8/1.
 * 购物车
 */
public class ShoppingCarBo extends BaseModel {
    private  Integer carId;
    private  Integer sku;
    private  Integer number;
    private  Integer userId;
    private Date createTime;


    public Integer getCarId() {
        return carId;
    }

    public void setCarId(Integer carId) {
        this.carId = carId;
    }

    public Integer getSku() {
        return sku;
    }

    public void setSku(Integer sku) {
        this.sku = sku;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
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

}
