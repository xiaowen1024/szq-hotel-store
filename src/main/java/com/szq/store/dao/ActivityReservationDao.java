package com.szq.store.dao;


import com.szq.store.entity.bo.ActivityReservationBo;

/**
 * Created by shishiming on 2018/8/30.
 */
public interface ActivityReservationDao {

    //新增会员活动报名
    int addActivityReservation(ActivityReservationBo activityReservationBo);
}
