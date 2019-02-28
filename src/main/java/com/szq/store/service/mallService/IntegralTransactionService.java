package com.szq.store.service.mallService;

import com.szq.store.dao.mallDao.IntegralTransactionDao;
import com.szq.store.entity.mallBo.IntegralTransactionBo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by shishiming on 2018/8/2.
 */
@Service("integralTransactionService")
@Transactional
public class IntegralTransactionService {

    @Resource
    private IntegralTransactionDao integralTransactionDao;

    //添加IntegralTransaction
    public int addIntegralTransaction(IntegralTransactionBo integralTransactionBo){
        if(integralTransactionBo == null){
            return 0;
        }
        if(integralTransactionBo.getUserId() == 0 ){
            return 0;
        }
        return integralTransactionDao.addIntegralTransaction(integralTransactionBo);
    }

    //删除IntegralTransaction byId
    public void deleteIntegralTransactionbyId(Integer id){
        integralTransactionDao.deleteIntegralTransactionbyId(id);
    }
    //修改IntegralTransaction byId
    public void updateIntegralTransactionbyId(IntegralTransactionBo integralTransactionBo){
        if(integralTransactionBo.getId() == 0 || integralTransactionBo.getId() == null){
            return ;
        }
        if(integralTransactionBo.getUserId() == 0 || integralTransactionBo.getUserId() == null){
            return ;
        }
        integralTransactionDao.updateIntegralTransactionbyId(integralTransactionBo);

    }
    //查询IntegralTransactionList
    public List<IntegralTransactionBo> queryIntegralTransactionList(Map<String, Object> map){
        return integralTransactionDao.queryIntegralTransactionList(map);
    }

    //查询IntegralTransactionById
    public IntegralTransactionBo queryIntegralTransactionById(Integer id){
        if(id == null || id == 0){
            return null;
        }
        return integralTransactionDao.queryIntegralTransactionById(id);
    }

    public int queryIntegralTransactionCount(Map<String, Object> map) {
        return integralTransactionDao.queryIntegralTransactionCount(map);
    }

    public void updateIntegralTransactionStatebyId(HashMap<String, Object> map) {
        integralTransactionDao.updateIntegralTransactionStatebyId(map);
    }
}
