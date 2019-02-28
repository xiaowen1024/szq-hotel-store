package com.szq.store.dao;


import com.szq.store.entity.bo.BusinessSchoolDetailsBo;

import java.util.List;

/**
 * Created by yxw on 2018/7/23.
 */
public interface BusinessSchoolDetailsDao {
     public BusinessSchoolDetailsBo queryHomePageDetail(Integer id);
     public  void updateHomePageDetail(BusinessSchoolDetailsBo businessSchoolDetailsBo);
     public  void addHomePageDetail(BusinessSchoolDetailsBo businessSchoolDetailsBo);
     public  void deleteHomePageDetail(Integer id);
     public List<BusinessSchoolDetailsBo> queryHomePageDetail1();
     public  List<BusinessSchoolDetailsBo> queryHomePageDetail2();
}
