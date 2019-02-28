package com.szq.store.service;

import com.szq.store.dao.PrivateInvestmentInvestmentPoinDao;
import com.szq.store.entity.bo.PrivateInvestmentInvestmentPoinBO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by shishiming on 2018/7/18.
 */
@Service("privateInvestmentInvestmentPoinService")
@Transactional
public class PrivateInvestmentInvestmentPoinService {

    @Resource
    private PrivateInvestmentInvestmentPoinDao privateInvestmentInvestmentPoinDao;

    public int queryPrivateInvestmentInvestmentPoinCount(){
        return privateInvestmentInvestmentPoinDao.queryInvestmentPoinCount();
    }

    public List<PrivateInvestmentInvestmentPoinBO> queryPrivateInvestmentInvestmentPoinList(){
        List<PrivateInvestmentInvestmentPoinBO> privateInvestmentInvestmentPoin = privateInvestmentInvestmentPoinDao.queryInvestmentPoinList();
        return privateInvestmentInvestmentPoin;

    }

    public PrivateInvestmentInvestmentPoinBO queryPrivateInvestmentInvestmentPoinById(Integer id){
        if (id == null){
            return null;
        }
        PrivateInvestmentInvestmentPoinBO bo = privateInvestmentInvestmentPoinDao.queryInvestmentPoinById(id);
        return bo;
    }

    public void deletePrivateInvestmentInvestmentPoin(Integer id){
        if (id == null){
            return ;
        }
        privateInvestmentInvestmentPoinDao.deleteInvestmentPoin(id);
    }

    public void addPrivateInvestmentInvestmentPoin(String name){
        if (name == null){
            return ;
        }
        privateInvestmentInvestmentPoinDao.addInvestmentPoinBO(name);
    }

    public void updatePrivateInvestmentInvestmentPoinBO(PrivateInvestmentInvestmentPoinBO bo){
        if (bo == null){
            return ;
        }
        privateInvestmentInvestmentPoinDao.updateInvestmentPoinBO(bo);
    }

}
