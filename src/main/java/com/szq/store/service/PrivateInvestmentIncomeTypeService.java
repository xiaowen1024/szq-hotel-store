package com.szq.store.service;

import com.szq.store.dao.PrivateInvestmentIncomeTypeDao;
import com.szq.store.entity.bo.PrivateInvestmentIncomeTypeBO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by shishiming on 2018/7/18.
 */
@Service("privateInvestmentIncomeTypeService")
@Transactional
public class PrivateInvestmentIncomeTypeService {

    @Resource
    private PrivateInvestmentIncomeTypeDao privateInvestmentIncomeTypeDao;

    public int queryPrivateInvestmentIncomeTypeCount(){
        return privateInvestmentIncomeTypeDao.queryIncomeTypeCount();
    }

    public List<PrivateInvestmentIncomeTypeBO> queryPrivateInvestmentIncomeTypeList(){
        List<PrivateInvestmentIncomeTypeBO> privateInvestmentIncomeType = privateInvestmentIncomeTypeDao.queryIncomeTypeList();
        return privateInvestmentIncomeType;

    }

    public PrivateInvestmentIncomeTypeBO queryPrivateInvestmentIncomeTypeById(Integer id){
        if (id == null){
            return null;
        }
        PrivateInvestmentIncomeTypeBO bo = privateInvestmentIncomeTypeDao.queryIncomeTypeById(id);
        return bo;
    }

    public void deletePrivateInvestmentIncomeType(Integer id){
        if (id == null){
            return ;
        }
        privateInvestmentIncomeTypeDao.deleteIncomeType(id);
    }

    public void addPrivateInvestmentIncomeType(String name){
        if (name == null){
            return ;
        }
        privateInvestmentIncomeTypeDao.addIncomeTypeBO(name);
    }

    public void updatePrivateInvestmentIncomeTypeBO(PrivateInvestmentIncomeTypeBO bo){
        if (bo == null){
            return ;
        }
        privateInvestmentIncomeTypeDao.updateIncomeTypeBO(bo);
    }

}
