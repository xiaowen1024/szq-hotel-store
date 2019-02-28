package com.szq.store.service.mallService;

import com.szq.store.dao.mallDao.RecommendImageDao;
import com.szq.store.entity.mallBo.RecommendImageBo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by yxw on 2018/8/7.
 */
@Service("RecommendImageService")
@Transactional
public class RecommendImageService {
    @Resource
    private RecommendImageDao recommendImageDao;
    public List<RecommendImageBo> queryRecommendImageInfo(){
        return  recommendImageDao.queryRecommendImageInfo();
    }
    public void updateRecommendImage(RecommendImageBo recommendImageBo){
        recommendImageDao.updateRecommendImage(recommendImageBo);
    }
    public  void addRecommendImage(RecommendImageBo recommendImageBo){
        recommendImageDao.addRecommendImage(recommendImageBo);
    }
    public void deleteRecommendImage(Integer Id){
        recommendImageDao.deleteRecommendImage(Id);
    }
    public RecommendImageBo queryRecommendImage(Integer Id){
        return  recommendImageDao.queryRecommendImage(Id);
    }

}
