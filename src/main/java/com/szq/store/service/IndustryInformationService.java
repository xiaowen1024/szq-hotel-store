package com.szq.store.service;

import com.szq.store.dao.IndustryInformationDao;
import com.szq.store.entity.bo.IndustryInformationBO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * Created by shishiming on 2018/7/18.
 */
@Service("industryInformationService")
@Transactional
public class IndustryInformationService {

    @Resource
    private IndustryInformationDao industryInformationDao;

    public int queryIndustryInformationCount( ){

        return industryInformationDao.queryIndustryInformationCount();
    }

    public List<IndustryInformationBO> queryIndustryInformationList(Map<String,Object> map){
        if(map == null){
            return null;
        }
        List<IndustryInformationBO> industryInformation = industryInformationDao.queryIndustryInformationList(map);
        return industryInformation;
    }

    public IndustryInformationBO queryIndustryInformationById(Integer newsId){
        if (newsId == null){
            return null;
        }

        return industryInformationDao.queryIndustryInformationById(newsId);
    }

    public void deleteIndustryInformation(Integer newsId){
        if (newsId == null){
            return ;
        }
        industryInformationDao.deleteIndustryInformation(newsId);
    }

    public void addIndustryInformation(IndustryInformationBO news){
        if (news == null){
            return ;
        }
        industryInformationDao.addIndustryInformationBO(news);
    }

    public void updateIndustryInformationBO(IndustryInformationBO news){
        if (news == null){
            return ;
        }
        industryInformationDao.updateIndustryInformationBO(news);
    }
}
