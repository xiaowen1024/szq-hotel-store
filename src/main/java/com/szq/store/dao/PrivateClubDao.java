package com.szq.store.dao;


import com.szq.store.entity.bo.PrivateClubBo;

/**
 * Created by yxw on 2018/8/7.
 */
public interface PrivateClubDao {
    public PrivateClubBo queryPrivateClub(Integer id);
    public void updatePrivateClub(PrivateClubBo privateClubBo);
    public  void addPrivateClub(PrivateClubBo privateClubBo);
    public void deletePrivateClub(Integer Id);
}

