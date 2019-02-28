package com.szq.store.service;

import com.szq.store.dao.PrivateConsultantDetailsDao;
import com.szq.store.entity.bo.PrivateConsultantDetailsBO;
import com.szq.store.util.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * Created by shishiming on 2018/7/23.
 */
@Service("privateConsultantDetailsService")
@Transactional
public class PrivateConsultantDetailsService {

    @Resource
    private PrivateConsultantDetailsDao privateConsultantDetailsDao;


    //添加PrivateConsultantDetails
    public int addPrivateConsultant(PrivateConsultantDetailsBO asset){
        if (asset == null){
            return 0;
        }
        return privateConsultantDetailsDao.addPrivateConsultant(asset);
    }

    //删除PrivateConsultantDetails byId
    public void deletePrivateConsultantbyId(Integer id){
        if (id == null || id == 0){
            return;
        }
        privateConsultantDetailsDao.deletePrivateConsultantbyId(id);
    }

    //修改PrivateConsultantDetails byId
    public void updatePrivateConsultantbyId(PrivateConsultantDetailsBO asset){
        if (asset.getId() == null || asset.getId() == 0){
            return;
        }
        privateConsultantDetailsDao.updatePrivateConsultantbyId(asset);
    }

    //查询PrivateConsultantDetailsList
    public List<PrivateConsultantDetailsBO> queryPrivateConsultantDetailsList(Map<String, Object> map){
        if(map == null){
            return null;
        }
        return privateConsultantDetailsDao.queryPrivateConsultantDetailsList(map);
    }

    //查询PrivateConsultantDetailsById
    public PrivateConsultantDetailsBO queryPrivateConsultantDetailsById(Integer id){
        return privateConsultantDetailsDao.queryPrivateConsultantDetailsById(id);
    }

    //根据工号查找顾问详情
    public PrivateConsultantDetailsBO queryPrivateConsultantDetailsByJobNumber(String jobNumber){
        if(StringUtils.isEmpty(jobNumber)){
            return null;
        }
        return  privateConsultantDetailsDao.queryPrivateConsultantDetailsByJobNumber(jobNumber);
    }

    public int queryPrivateConsultantListCount() {
        return privateConsultantDetailsDao.queryPrivateConsultantListCount();
    }
}
