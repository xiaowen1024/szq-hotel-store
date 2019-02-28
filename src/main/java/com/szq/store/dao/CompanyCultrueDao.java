package com.szq.store.dao;


import com.szq.store.entity.bo.CompanyCultrueBO;

import java.util.List;
import java.util.Map;

/**
 * Created by shishiming on 2018/7/18.
 */
public interface CompanyCultrueDao {

    public int queryCompanyCultrueCount(Map<String, Object> map);

    public List<CompanyCultrueBO> queryCompanyCultrueList(Map<String, Object> map);

    public CompanyCultrueBO queryCompanyCultrueById(Integer newId);

    public void deleteCompanyCultrue(Integer newId);

    public void addCompanyCultrueBO(CompanyCultrueBO news);

    public void updateCompanyCultrueBO(CompanyCultrueBO news);
    public  CompanyCultrueBO  queryCompanyCultruePc();
    public  List<CompanyCultrueBO> queryCompanyCultrueWap();

}
