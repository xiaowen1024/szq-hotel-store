package com.szq.store.dao;

import com.szq.store.entity.bo.CorporateHonorBo;

import java.util.List;

/**
 * Created by yxw on 2018/7/30.
 */
public interface CorporateHonorDao {
    public CorporateHonorBo queryCorporateHonor(Integer id);

    public List<CorporateHonorBo> queryCorporateHonorDetail();
    public void updateCorporateHonor(CorporateHonorBo corporateHonor);
    public  void addCorporateHonor(CorporateHonorBo corporateHonor);
    public void deleteCorporateHonor(Integer Id);
}
