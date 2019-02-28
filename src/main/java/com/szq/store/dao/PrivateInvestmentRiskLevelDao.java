package com.szq.store.dao;


import com.szq.store.entity.bo.PrivateInvestmentRiskLevelBO;

import java.util.List;

/**
 * Created by shishiming on 2018/7/18.
 */
public interface PrivateInvestmentRiskLevelDao {

    public int queryRiskLevelCount();

    public List<PrivateInvestmentRiskLevelBO> queryRiskLevelList();

    public PrivateInvestmentRiskLevelBO queryRiskLevelById(Integer id);

    public void deleteRiskLevel(Integer id);

    public void addRiskLevelBO(String name);

    public void updateRiskLevelBO(PrivateInvestmentRiskLevelBO bo);

}
