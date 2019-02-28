package com.szq.store.dao;

import com.szq.store.entity.bo.PrivateConsultantDetailsBO;

import java.util.List;
import java.util.Map;

/**
 * Created by shishiming on 2018/7/23.
 */
public interface PrivateConsultantDetailsDao {
    //添加PrivateConsultantDetails
    int addPrivateConsultant(PrivateConsultantDetailsBO PrivateConsultantDetailsBO);
    //删除PrivateConsultantDetails byId
    void deletePrivateConsultantbyId(Integer id);
    //修改PrivateConsultantDetails byId
    void updatePrivateConsultantbyId(PrivateConsultantDetailsBO PrivateConsultantDetailsBO);
    //查询PrivateConsultantDetailsList
    List<PrivateConsultantDetailsBO> queryPrivateConsultantDetailsList(Map<String, Object> map);
    //查询PrivateConsultantDetailsById
    PrivateConsultantDetailsBO queryPrivateConsultantDetailsById(Integer id);

    //根据工号查找顾问详情
    PrivateConsultantDetailsBO queryPrivateConsultantDetailsByJobNumber(String jobNumber);
    
    int queryPrivateConsultantListCount();
}
