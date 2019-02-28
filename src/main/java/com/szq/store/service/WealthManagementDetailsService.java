package com.szq.store.service;

import com.szq.store.dao.WealthManagementDetailsDao;
import com.szq.store.entity.bo.WealthManagementDetailsBO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by shishiming on 2018/7/23.
 */
@Service("wealthManagementDetailsService")
@Transactional
public class WealthManagementDetailsService {

    @Resource
    private WealthManagementDetailsDao wealthManagementDetailsDao;


    //修改WealthManagementDetails byId
    public void updateWealthManagementbyId(WealthManagementDetailsBO wealthManagementDetailsBO){
        if (wealthManagementDetailsBO.getId() == null || wealthManagementDetailsBO.getId() == 0){
            return;
        }
        wealthManagementDetailsDao.updateWealthManagement(wealthManagementDetailsBO);
    }


    //查询WealthManagementDetailsById
    public WealthManagementDetailsBO queryWealthManagementDetails(){
        return wealthManagementDetailsDao.queryWealthManagementDetails();
    }
    public List<WealthManagementDetailsBO> queryWealthManagementwapList(){
        return  wealthManagementDetailsDao.queryWealthManagementwapList();
    }
    public WealthManagementDetailsBO queryWealthManagementwap(){
        return  wealthManagementDetailsDao.queryWealthManagementwap();
    }
}
