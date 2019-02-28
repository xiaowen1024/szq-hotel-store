package com.szq.store.service;

import com.szq.store.dao.CorporateHonorDao;
import com.szq.store.entity.bo.CorporateHonorBo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by yxw on 2018/7/30.
 */
@Service("CorporateHonorService")
@Transactional
public class CorporateHonorService {
    @Resource
    private CorporateHonorDao corporateHonorDao;
    public CorporateHonorBo queryCorporateHonor(Integer id){
          return  corporateHonorDao.queryCorporateHonor(id);
    }

    public List<CorporateHonorBo> queryCorporateHonorDetail(){
        return  corporateHonorDao.queryCorporateHonorDetail();

    }
    public void updateCorporateHonor(CorporateHonorBo corporateHonor){
        corporateHonorDao.updateCorporateHonor(corporateHonor);
    }
    public  void addCorporateHonor(CorporateHonorBo corporateHonor){
        corporateHonorDao.addCorporateHonor(corporateHonor);
    }
    public void deleteCorporateHonor(Integer id){
        corporateHonorDao.deleteCorporateHonor(id);
    }
}
