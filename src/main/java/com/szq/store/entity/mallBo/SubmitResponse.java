package com.szq.store.entity.mallBo;

/**
 * Created by yxw on 2018/9/7.
 */
public class SubmitResponse {
    private  Integer addressId;//地址id
    private Integer number;//数量
    private  Integer price;
    private  Integer sku;//sku
    private  Integer count;//总价
    private  String remake;//备注

    public Integer getAddressId() {
        return addressId;
    }

    public void setAddressId(Integer addressId) {
        this.addressId = addressId;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public Integer getSku() {
        return sku;
    }

    public void setSku(Integer sku) {
        this.sku = sku;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public String getRemake() {
        return remake;
    }

    public void setRemake(String remake) {
        this.remake = remake;
    }
}
