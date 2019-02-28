package com.szq.store.dao;


import com.szq.store.entity.bo.WechatUserInfo;

public interface WechatUserInfoDAO {

    //根据openid查询微信用户条数
    int getWechatUserCount(String openid);

    //根据openid查询微信用户信息
    WechatUserInfo getWechatUserInfo(String openid);

    //新增微信用户信息
    int addWechatUserInfo(WechatUserInfo wechatUserInfo);

    //修改微信用户信息
    void updateWechatUserInfo(WechatUserInfo wechatUserInfo);
}
