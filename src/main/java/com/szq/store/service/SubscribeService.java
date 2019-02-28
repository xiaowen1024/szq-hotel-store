package com.szq.store.service;

import com.szq.store.dao.SubscribeDao;
import com.szq.store.entity.bo.SubscribeBo;
import com.szq.store.entity.bo.productResponseBo;
import com.szq.store.entity.mallBo.AccountBo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

import java.util.List;
import java.util.Map;

/**
 * Created by shishiming on 2018/8/30.
 */

@Service("subscribeService")
@Transactional
public class SubscribeService {

    @Resource
    private SubscribeDao subscribeDao;


    //添加产品预约
    public int addSubscribe(SubscribeBo subscribeBo){
        if (subscribeBo == null){
            return 0;
        }
        return  subscribeDao.addSubscribe(subscribeBo);
    }

    //查找投资明细
    public int getSubscribeCount(Map<String,Object> map){
        return subscribeDao.getSubscribeCount(map);
    }
    //查找投资明细
    public List<productResponseBo> getSubscribeList(Map<String,Object> map){
        return subscribeDao.getSubscribeList(map);
    }
    public AccountBo accountInfo(Integer id){
        return  subscribeDao.accountInfo(id);
    }

}
