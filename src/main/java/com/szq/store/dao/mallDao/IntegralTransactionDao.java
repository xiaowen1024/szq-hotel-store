package com.szq.store.dao.mallDao;


import com.szq.store.entity.mallBo.IntegralTransactionBo;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by shishiming on 2018/8/2.
 */
public interface IntegralTransactionDao {
    //添加IntegralTransaction
    int addIntegralTransaction(IntegralTransactionBo integralTransactionBO);
    //删除IntegralTransaction byId
    void deleteIntegralTransactionbyId(Integer id);
    //修改IntegralTransaction byId
    void updateIntegralTransactionbyId(IntegralTransactionBo integralTransactionBO);
    //查询IntegralTransactionList
    List<IntegralTransactionBo> queryIntegralTransactionList(Map<String, Object> map);
    //查询IntegralTransactionById
    IntegralTransactionBo queryIntegralTransactionById(Integer id);
    //查询地址数目
    int queryIntegralTransactionCount(Map<String, Object> map);
    //修改订单状态
    void updateIntegralTransactionStatebyId(HashMap<String, Object> map);
}
