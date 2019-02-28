package com.szq.store.service;

import com.szq.store.dao.PrivateInvestmentRiskLevelDao;
import com.szq.store.entity.bo.PrivateInvestmentRiskLevelBO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by shishiming on 2018/7/18.
 */
@Service("privateInvestmentRiskLevelService")
@Transactional
public class PrivateInvestmentRiskLevelService {

    @Resource
    private PrivateInvestmentRiskLevelDao privateInvestmentRiskLevelDao;

    public int queryPrivateInvestmentRiskLevelCount(){
        return privateInvestmentRiskLevelDao.queryRiskLevelCount();
    }

    public List<PrivateInvestmentRiskLevelBO> queryPrivateInvestmentRiskLevelList(){
        List<PrivateInvestmentRiskLevelBO> privateInvestmentRiskLevel = privateInvestmentRiskLevelDao.queryRiskLevelList();
        return privateInvestmentRiskLevel;

    }

    public PrivateInvestmentRiskLevelBO queryPrivateInvestmentRiskLevelById(Integer id){
        if (id == null){
            return null;
        }
        PrivateInvestmentRiskLevelBO bo = privateInvestmentRiskLevelDao.queryRiskLevelById(id);
        return bo;
    }

    public void deletePrivateInvestmentRiskLevel(Integer id){
        if (id == null){
            return ;
        }
        privateInvestmentRiskLevelDao.deleteRiskLevel(id);
    }

    public void addPrivateInvestmentRiskLevel(String name){
        if (name == null){
            return ;
        }
        privateInvestmentRiskLevelDao.addRiskLevelBO(name);
    }

    public void updatePrivateInvestmentRiskLevelBO(PrivateInvestmentRiskLevelBO bo){
        if (bo == null){
            return ;
        }
        privateInvestmentRiskLevelDao.updateRiskLevelBO(bo);
    }

}
