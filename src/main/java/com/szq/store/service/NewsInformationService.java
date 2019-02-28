package com.szq.store.service;

import com.szq.store.dao.NewsInformationDao;
import com.szq.store.entity.bo.NewsInformationBO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * Created by shishiming on 2018/7/18.
 */
@Service("newsInformationService")
@Transactional
public class NewsInformationService {

    @Resource
    private NewsInformationDao newsInformationDao;

    public int queryNewsInformationCount(){
        return newsInformationDao.queryNewsInformationCount();
    }

    public List<NewsInformationBO> queryNewsInformationList(Map<String,Object> map){
        if (map == null){
            return null;
        }
        List<NewsInformationBO> newsInformation = newsInformationDao.queryNewsInformationList(map);
        return newsInformation;

    }

    public NewsInformationBO queryNewsInformationById(Integer newsId){
        if (newsId == null){
            return null;
        }
        NewsInformationBO news = newsInformationDao.queryNewsInformationById(newsId);
        return news;
    }

    public void deleteNewsInformation(Integer newsId){
        if (newsId == null){
            return ;
        }
        newsInformationDao.deleteNewsInformation(newsId);
    }

    public void addNewsInformation(NewsInformationBO news){
        if (news == null){
            return ;
        }
        newsInformationDao.addNewsInformationBO(news);
    }

    public void updateNewsInformationBO(NewsInformationBO news){
        if (news == null){
            return ;
        }
        newsInformationDao.updateNewsInformationBO(news);
    }

}
