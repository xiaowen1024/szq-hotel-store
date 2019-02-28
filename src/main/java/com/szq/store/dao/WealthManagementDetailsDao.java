package com.szq.store.dao;


import com.szq.store.entity.bo.WealthManagementDetailsBO;

import java.util.List;

/**
 * Created by shishiming on 2018/7/23.
 */
public interface WealthManagementDetailsDao {

    //修改WealthManagementDetails byId
    void updateWealthManagement(WealthManagementDetailsBO wealthManagementDetailsBO);

    //查询WealthManagementDetailsById
    WealthManagementDetailsBO queryWealthManagementDetails();
    public List<WealthManagementDetailsBO> queryWealthManagementwapList();
    public  WealthManagementDetailsBO queryWealthManagementwap();
}
