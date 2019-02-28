package com.szq.store.service;

import com.szq.store.dao.CompanyCultrueDao;
import com.szq.store.entity.bo.CompanyCultrueBO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * Created by shishiming on 2018/7/18.
 */
@Service("companyCultrueService")
@Transactional
public class CompanyCultrueService {

    @Resource
    private CompanyCultrueDao companyCultrueDao;

    public List<CompanyCultrueBO> queryCompanyCultrueList(Map<String,Object> map){
        if (map == null){
            return null;
        }
        List<CompanyCultrueBO> companyCultrue = companyCultrueDao.queryCompanyCultrueList(map);
        return companyCultrue;

    }

    public CompanyCultrueBO queryCompanyCultrueById(Integer newsId){
        if (newsId == null){
            return null;
        }
        return companyCultrueDao.queryCompanyCultrueById(newsId);
    }

    public void deleteCompanyCultrue(Integer newsId){
        if (newsId == null){
            return ;
        }
        companyCultrueDao.deleteCompanyCultrue(newsId);
    }

    public void addCompanyCultrue(CompanyCultrueBO news){
        if (news == null){
            return ;
        }
        companyCultrueDao.addCompanyCultrueBO(news);
    }

    public void updateCompanyCultrueBO(CompanyCultrueBO news){
        if (news == null){
            return ;
        }
        companyCultrueDao.updateCompanyCultrueBO(news);
    }
    public  CompanyCultrueBO  queryCompanyCultruePc(){
        return  companyCultrueDao.queryCompanyCultruePc();
    }
    public  List<CompanyCultrueBO> queryCompanyCultrueWap(){
       return companyCultrueDao.queryCompanyCultrueWap();
    }
}
