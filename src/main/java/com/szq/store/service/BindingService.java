package com.szq.store.service;


import com.szq.store.dao.BindingDao;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/2/28.
 */
@Service("bindingService")
@Transactional
public class BindingService {

    @Resource
    private BindingDao bindingDao;

    //用户绑定 顾问
    public int addBinding(Map<String,Object> map){
        if(map.get("privateConsultantId") == null || map.get("userId") == null){
            return 0;
        }
        return bindingDao.addBinding(map);
    }

    //用户解绑
    public void deleteBinding(Integer id){
        if(id == null || id == 0){
            return;
        }
        bindingDao.deleteBinding(id);
    }

    //获取已经绑定List
    public List<Map<String,Object>> getBindingList(Integer userId){
        if(userId == null || userId == 0){
            return null;
        }
        return bindingDao.getBindingList(userId);
    }
    public int queryInfo(Integer id){
        return  bindingDao.queryInfo(id);
    }
}
