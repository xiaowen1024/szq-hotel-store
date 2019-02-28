package com.szq.store.service;

import com.szq.store.dao.CompanyIntroductionDao;
import com.szq.store.entity.bo.CompanyIntroductionBo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * Created by yxw on 2018/7/18.
 */
@Service("CompanyItroductionService")
@Transactional
public class CompanyItroductionService {
    @Resource
    private CompanyIntroductionDao companyItroductionDao;
    public CompanyIntroductionBo queryCompanyItroduction(Integer id){
        return  companyItroductionDao.queryCompanyIntroduction(id);
    }
    public  void updateCompanyItroduction (CompanyIntroductionBo companyItroduction){

        companyItroductionDao.updateCompanyIntroduction(companyItroduction);
    }
    public  void deleteCompanyItroduction(Integer id){
        companyItroductionDao.deleteCompanyIntroduction(id);
    }
    public  void addCompanyItroduction(CompanyIntroductionBo companyIntroduction){

        companyItroductionDao.addCompanyIntroduction(companyIntroduction);
    }
    public  CompanyIntroductionBo queryCompanyIntroductionDetail(){
        return companyItroductionDao.queryCompanyIntroductionDetail();
    }
}
