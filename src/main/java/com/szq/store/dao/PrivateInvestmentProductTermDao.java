package com.szq.store.dao;

import com.szq.store.entity.bo.PrivateInvestmentProductTermBO;

import java.util.List;

/**
 * Created by shishiming on 2018/7/18.
 */
public interface PrivateInvestmentProductTermDao {

    public int queryProductTermCount();

    public List<PrivateInvestmentProductTermBO> queryProductTermList();

    public PrivateInvestmentProductTermBO queryProductTermById(Integer id);

    public void deleteProductTerm(Integer id);

    public void addProductTermBO(String name);

    public void updateProductTermBO(PrivateInvestmentProductTermBO bo);

}
