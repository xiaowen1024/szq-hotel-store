package com.szq.store.service;

import com.szq.store.dao.SystemMessageDao;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/2/28.
 */
@Service("systemMessageService")
@Transactional
public class SystemMessageService {
    @Resource
    private SystemMessageDao systemMessageDao;

    public int getMessageCount(Integer userId){
        return systemMessageDao.getMessageCount(userId);
    }
    public int getUnReadCount(Integer userId){
        return systemMessageDao.getUnReadCount(userId);
    }
    public List<Map<String,Object>> getMessageList(Map<String,Object> map){
        return systemMessageDao.getMessageList(map);
    }

    public void addMessage(Map<String,Object> map){
        systemMessageDao.addMessage(map);
    }
    public void setMessageStatus(Integer userId){
        systemMessageDao.setMessageStatus(userId);
    }
}
