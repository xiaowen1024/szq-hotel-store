package com.szq.store.dao.mallDao;


import com.szq.store.entity.mallBo.MallBannerBo;

import java.util.List;

/**
 * Created by yxw on 2018/8/7.
 */
public interface MallBannerDao {
    public List<MallBannerBo> queryMallBannerInfo();
    public void updateMallBanner(MallBannerBo mallBannerBo);
    public  void addMallBanner(MallBannerBo mallBannerBo);
    public void deleteMallBanner(Integer Id);
    public MallBannerBo queryMallBanner(Integer Id);
}
