package com.szq.store.service;

import com.szq.store.dao.PrivateInvestmentProductTermDao;
import com.szq.store.entity.bo.PrivateInvestmentProductTermBO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by shishiming on 2018/7/18.
 */
@Service("privateInvestmentProductTermService")
@Transactional
public class PrivateInvestmentProductTermService {

    @Resource
    private PrivateInvestmentProductTermDao privateInvestmentProductTermDao;

    public int queryPrivateInvestmentProductTermCount(){
        return privateInvestmentProductTermDao.queryProductTermCount();
    }

    public List<PrivateInvestmentProductTermBO> queryPrivateInvestmentProductTermList(){
        List<PrivateInvestmentProductTermBO> privateInvestmentProductTerm = privateInvestmentProductTermDao.queryProductTermList();
        return privateInvestmentProductTerm;

    }

    public PrivateInvestmentProductTermBO queryPrivateInvestmentProductTermById(Integer id){
        if (id == null){
            return null;
        }
        PrivateInvestmentProductTermBO bo = privateInvestmentProductTermDao.queryProductTermById(id);
        return bo;
    }

    public void deletePrivateInvestmentProductTerm(Integer id){
        if (id == null){
            return ;
        }
        privateInvestmentProductTermDao.deleteProductTerm(id);
    }

    public void addPrivateInvestmentProductTerm(String name){
        if (name == null){
            return ;
        }
        privateInvestmentProductTermDao.addProductTermBO(name);
    }

    public void updatePrivateInvestmentProductTermBO(PrivateInvestmentProductTermBO bo){
        if (bo == null){
            return ;
        }
        privateInvestmentProductTermDao.updateProductTermBO(bo);
    }

}
