package com.szq.store.dao;

import com.szq.store.entity.bo.IndustryInformationBO;

import java.util.List;
import java.util.Map;

/**
 * Created by shishiming on 2018/7/18.
 */
public interface IndustryInformationDao {

    public int queryIndustryInformationCount();

    public List<IndustryInformationBO> queryIndustryInformationList(Map<String, Object> map);

    public IndustryInformationBO queryIndustryInformationById(Integer newId);

    public void deleteIndustryInformation(Integer newId);

    public void addIndustryInformationBO(IndustryInformationBO news);

    public void updateIndustryInformationBO(IndustryInformationBO news);

}
