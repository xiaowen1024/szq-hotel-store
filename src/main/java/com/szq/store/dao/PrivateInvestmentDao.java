package com.szq.store.dao;


import com.szq.store.entity.bo.PrivateInvestmentBO;

import java.util.List;
import java.util.Map;

/**
 * Created by shishiming on 2018/7/18.
 */
public interface PrivateInvestmentDao {

    public int queryPrivateInvestmentCount(Map<String, Object> map);

    public List<PrivateInvestmentBO> queryPrivateInvestmentList(Map<String, Object> map);

    public PrivateInvestmentBO queryPrivateInvestmentById(Integer id);

    public void setRecommendTime(Integer id);

    public List<PrivateInvestmentBO> queryPrivateInvestmentListByRecommendTime();

}
