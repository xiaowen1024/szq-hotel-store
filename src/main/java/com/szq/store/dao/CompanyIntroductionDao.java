package com.szq.store.dao;


import com.szq.store.entity.bo.CompanyIntroductionBo;

/**
 * Created by yxw on 2018/7/18.
 */
public interface CompanyIntroductionDao {
    public CompanyIntroductionBo queryCompanyIntroduction(Integer id);
    public void updateCompanyIntroduction(CompanyIntroductionBo companyIntroduction);
    public  void addCompanyIntroduction(CompanyIntroductionBo companyIntroduction);
    public void deleteCompanyIntroduction(Integer Id);
    public  CompanyIntroductionBo queryCompanyIntroductionDetail();
}
