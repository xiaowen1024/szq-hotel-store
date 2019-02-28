package com.szq.store.service;

import com.szq.store.dao.BannerDao;
import com.szq.store.entity.bo.BannerBo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by yxw on 2018/7/20.
 */
@Service("BannerService")
@Transactional
public class BannerService {
    @Resource
    private BannerDao bannerDao;
    public List<BannerBo> queryBannerInfo(){
      return bannerDao.queryBannerInfo();
    }
    public void updateBanner(BannerBo bannerBo){
        bannerDao.updateBanner(bannerBo);
    }
    public  void addBanner(BannerBo bannerBo){
        bannerDao.addBanner(bannerBo);
    }
    public void deleteBanner(Integer id){
        bannerDao.deleteBanner(id);
    }
    public  BannerBo  queryBanner(Integer Id){
        return  bannerDao.queryBanner(Id);
    }


}
