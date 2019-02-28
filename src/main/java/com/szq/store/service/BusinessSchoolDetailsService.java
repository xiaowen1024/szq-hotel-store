package com.szq.store.service;

import com.szq.store.dao.BusinessSchoolDetailsDao;
import com.szq.store.entity.bo.BusinessSchoolDetailsBo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by yxw on 2018/7/23.
 */
@Service("BusinessSchoolDetailsService")
@Transactional
public class BusinessSchoolDetailsService {
    @Resource
    private BusinessSchoolDetailsDao businessSchoolDetailsDao;
    public BusinessSchoolDetailsBo queryHomePageDetail(Integer id){
        return  businessSchoolDetailsDao.queryHomePageDetail(id);
    }
    public  void updateHomePageDetail(BusinessSchoolDetailsBo businessSchoolDetailsBo){
        businessSchoolDetailsDao.updateHomePageDetail(businessSchoolDetailsBo);
    }
    public  void addHomePageDetail(BusinessSchoolDetailsBo businessSchoolDetailsBo){
        businessSchoolDetailsDao.addHomePageDetail(businessSchoolDetailsBo);
    }
    public  void deleteHomePageDetail(Integer id){
        businessSchoolDetailsDao.deleteHomePageDetail(id);
    }
    public  List<BusinessSchoolDetailsBo> queryHomePageDetail1(){
        return  businessSchoolDetailsDao.queryHomePageDetail1();
    }
    public List<BusinessSchoolDetailsBo> queryHomePageDetail2(){
        return  businessSchoolDetailsDao.queryHomePageDetail2();
    }
}
