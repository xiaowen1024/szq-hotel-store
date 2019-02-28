package com.szq.store.service;

import com.szq.store.dao.AssetManagementDetailsDao;
import com.szq.store.entity.bo.AssetManagementDetailsBO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by shishiming on 2018/7/23.
 */
@Service("assetManagementDetailsService")
@Transactional
public class AssetManagementDetailsService {

    @Resource
    private AssetManagementDetailsDao assetManagementDetailsDao;


    //修改AssetManagementDetails
    public void updateAssetManagement(){
        assetManagementDetailsDao.updateAssetManagement();
    }

    //查询AssetManagementDetailsById
    public AssetManagementDetailsBO queryAssetManagementDetails(){
        return assetManagementDetailsDao.queryAssetManagementDetails();
    }

    public List<AssetManagementDetailsBO> queryAssetManagementDetailsWap(){
        return assetManagementDetailsDao.queryAssetManagementDetailsWap();
    }
}
