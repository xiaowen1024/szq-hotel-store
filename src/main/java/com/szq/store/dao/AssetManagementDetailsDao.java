package com.szq.store.dao;


import com.szq.store.entity.bo.AssetManagementDetailsBO;

import java.util.List;

/**
 * Created by shishiming on 2018/7/23.
 */
public interface AssetManagementDetailsDao {

    //修改AssetManagementDetails
    void updateAssetManagement();
    //查询AssetManagementDetails
    AssetManagementDetailsBO queryAssetManagementDetails();
    List<AssetManagementDetailsBO> queryAssetManagementDetailsWap();
}
