package com.szq.store.service.mallService;

import com.szq.store.dao.mallDao.MallImageDao;
import com.szq.store.entity.mallBo.MallImageBo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by yxw on 2018/8/7.
 */
@Service("MallImageService")
@Transactional
public class MallImageService {
    @Resource
    private MallImageDao mallImageDao;
    public List<MallImageBo> queryMallImageInfo(){
        return  mallImageDao.queryMallImageInfo();
    }
    public void updateMallImage(MallImageBo mallImageBo){
        mallImageDao.updateMallImage(mallImageBo);
    }
    public  void addMallImage(MallImageBo mallImageBo){
        mallImageDao.addMallImage(mallImageBo);
    }
    public void deleteMallImage(Integer Id){
        mallImageDao.deleteMallImage(Id);
    }
    public MallImageBo queryMallImage(Integer Id){
        return mallImageDao.queryMallImage(Id);
    }

}
