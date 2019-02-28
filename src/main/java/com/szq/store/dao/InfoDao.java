package com.szq.store.dao;

import com.szq.store.entity.bo.*;

import java.util.List;

/**
 * Created by yxw on 2018/7/20.
 */
public interface InfoDao {
    public List<CompanyIntroductionBo> queryCompanyIntroductionInfo();
    public List<NewsInformationBO> queryNewsInformationInfo();
    public  List<ImageBo> queryImageInfo();
    public List<ModuleBo> queryModuleInfo();
    public  List<PrivateClubBo> queryPrivateClub();
    public  List<HomeActivitesBo> queryHomeActivite();
    public  List<HomeGoodsBo> queryHomeGoodsBo();

}
