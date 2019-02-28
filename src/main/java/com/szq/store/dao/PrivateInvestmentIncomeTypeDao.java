package com.szq.store.dao;

import com.szq.store.entity.bo.PrivateInvestmentIncomeTypeBO;

import java.util.List;

/**
 * Created by shishiming on 2018/7/18.
 */
public interface PrivateInvestmentIncomeTypeDao {

    public int queryIncomeTypeCount();

    public List<PrivateInvestmentIncomeTypeBO> queryIncomeTypeList();

    public PrivateInvestmentIncomeTypeBO queryIncomeTypeById(Integer id);

    public void deleteIncomeType(Integer id);

    public void addIncomeTypeBO(String name);

    public void updateIncomeTypeBO(PrivateInvestmentIncomeTypeBO bo);

}
