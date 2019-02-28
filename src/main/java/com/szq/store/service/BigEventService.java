package com.szq.store.service;

import com.szq.store.dao.BigEventDao;
import com.szq.store.entity.bo.BigEventBo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by yxw on 2018/7/18.
 */
@Service("BigEventService")
@Transactional
public class BigEventService {
    @Resource
    private BigEventDao bigEventDao;
    public BigEventBo queryBigEvent(Integer id){
        return  bigEventDao.queryBigEvent(id);

    }
    public  void updateBigEvent (BigEventBo bigEvent){
        bigEventDao.updateBigEvent(bigEvent);
    }
    public  void deleteBigEvent(Integer id){
        bigEventDao.deleteBigEvent(id);
    }
    public  void addBigEvent(BigEventBo bigEvent){
             bigEventDao.addBigEvent(bigEvent);
    }
    public List<BigEventBo> queryBigEventDetail(){
        return  bigEventDao.queryBigEventDetail();
    }
}





