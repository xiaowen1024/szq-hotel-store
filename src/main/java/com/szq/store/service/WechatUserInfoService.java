package com.szq.store.service;

import com.szq.store.dao.WechatUserInfoDAO;
import com.szq.store.entity.bo.WechatUserInfo;
import com.szq.store.util.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2018/2/28.
 */
@Service("wechatUserInfoService")
@Transactional
public class WechatUserInfoService {
    @Resource
    private WechatUserInfoDAO wechatUserInfoDAO;

    //根据openid查询微信用户条数
    public int getWechatUserCount(String openid){
        if(openid == null || StringUtils.isEmpty(openid)){
            return 0;
        }

        return wechatUserInfoDAO.getWechatUserCount(openid);
    }

    //根据openid查询微信用户信息
    public WechatUserInfo getWechatUserInfo(String openid){
        if(openid == null || StringUtils.isEmpty(openid)){
            return null;
        }

        return wechatUserInfoDAO.getWechatUserInfo(openid);
    }

    //新增微信用户信息
    public int addWechatUserInfo(WechatUserInfo wechatUserInfo){
        if(wechatUserInfo == null || StringUtils.isEmpty(wechatUserInfo.getOpenId())){
            return 0;
        }

        return wechatUserInfoDAO.addWechatUserInfo(wechatUserInfo);
    }

    //修改微信用户信息
    public void updateWechatUserInfo(WechatUserInfo wechatUserInfo){
        if(wechatUserInfo == null || StringUtils.isEmpty(wechatUserInfo.getOpenId())){
            return ;
        }

        wechatUserInfoDAO.updateWechatUserInfo(wechatUserInfo);
    }
}
