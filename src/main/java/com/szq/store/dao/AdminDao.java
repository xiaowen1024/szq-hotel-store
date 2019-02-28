package com.szq.store.dao;


import com.szq.store.entity.bo.AdminBo;

/**
 * Created by yxw on 2018/7/19.
 */
public interface AdminDao {
    public AdminBo queryUserInfoByAccount(String account);
}
