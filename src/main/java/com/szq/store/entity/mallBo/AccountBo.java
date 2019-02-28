package com.szq.store.entity.mallBo;

import java.util.Date;

/**
 * Created by yxw on 2018/8/1.
 * 账户信息
 */
public class AccountBo {
    private  Integer id;
    private  Integer userId;
    private  String paymentPassword;//支付密码
    private  Integer integral;//积分余额
    private Date createTime;
    private  Integer leavestatus;
    private Long counton;//投资中总资产
    private Long collected;//待收
    private Long cumulative;//累计投资
    private  Long received;//已收
    private  Long earn;//已赚

    public Long getCounton() {
        return counton;
    }

    public void setCounton(Long counton) {
        this.counton = counton;
    }

    public Long getCollected() {
        return collected;
    }

    public void setCollected(Long collected) {
        this.collected = collected;
    }

    public Long getCumulative() {
        return cumulative;
    }

    public void setCumulative(Long cumulative) {
        this.cumulative = cumulative;
    }

    public Long getReceived() {
        return received;
    }

    public void setReceived(Long received) {
        this.received = received;
    }

    public Long getEarn() {
        return earn;
    }

    public void setEarn(Long earn) {
        this.earn = earn;
    }

    public Integer getLeavestatus() {
        return leavestatus;
    }

    public void setLeavestatus(Integer leavestatus) {
        this.leavestatus = leavestatus;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getPaymentPassword() {
        return paymentPassword;
    }

    public void setPaymentPassword(String paymentPassword) {
        this.paymentPassword = paymentPassword;
    }

    public Integer getIntegral() {
        return integral;
    }

    public void setIntegral(Integer integral) {
        this.integral = integral;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}
