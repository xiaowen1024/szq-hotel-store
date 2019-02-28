package com.szq.store.dao;

import com.szq.store.entity.bo.NewsInformationBO;

import java.util.List;
import java.util.Map;

/**
 * Created by shishiming on 2018/7/18.
 */
public interface NewsInformationDao {

    public int queryNewsInformationCount();

    public List<NewsInformationBO> queryNewsInformationList(Map<String, Object> map);

    public NewsInformationBO queryNewsInformationById(Integer newId);

    public void deleteNewsInformation(Integer newId);

    public void addNewsInformationBO(NewsInformationBO news);

    public void updateNewsInformationBO(NewsInformationBO news);

}
