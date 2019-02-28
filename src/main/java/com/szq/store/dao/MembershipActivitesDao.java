package com.szq.store.dao;


import com.szq.store.entity.bo.ClubSystemBo;
import com.szq.store.entity.bo.MembershipActivitesBo;

import java.util.List;
import java.util.Map;

/**
 * Created by shishiming on 2018/8/30.
 */
public interface MembershipActivitesDao {

    //查询活动条数
    int getMembershipActivitesCount(Map<String, Object> map);
    //查询活动列表
    List<MembershipActivitesBo> getMembershipActivitesList(Map<String, Object> map);
    //查询活动详情
    MembershipActivitesBo getMembershipActivitesDetails(Integer id);
    List<ClubSystemBo> queryclubSystem();
}
