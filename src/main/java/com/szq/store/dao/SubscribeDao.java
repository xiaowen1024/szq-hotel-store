package com.szq.store.dao;



import com.szq.store.entity.bo.SubscribeBo;
import com.szq.store.entity.bo.productResponseBo;
import com.szq.store.entity.mallBo.AccountBo;

import java.util.List;
import java.util.Map;

/**
 * Created by shishiming on 2018/8/30.
 */
public interface SubscribeDao {
    //添加产品预约
    int addSubscribe(SubscribeBo subscribeBo);
    //查找投资明细
    int getSubscribeCount(Map<String, Object> map);
    //查找投资明细
    List<productResponseBo> getSubscribeList(Map<String, Object> map);
    AccountBo accountInfo(Integer id);
}
