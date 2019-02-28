package com.szq.store.service;

import com.szq.store.dao.InfoDao;
import com.szq.store.entity.bo.*;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by yxw on 2018/7/20.
 */
@Service("InfoService")
@Transactional
public class InfoService {
    @Resource
    private InfoDao infoDao;
    public List<CompanyIntroductionBo> queryCompanyIntroductionInfo(){
        return infoDao.queryCompanyIntroductionInfo();
    }
    public List<NewsInformationBO> queryNewsInformationInfo(){
        return  infoDao.queryNewsInformationInfo();
    }
    public  List<ImageBo> queryImageInfo(){
        return  infoDao.queryImageInfo();
    }
    public List<ModuleBo> queryModuleInfo(){
        return  infoDao.queryModuleInfo();
    }
    public  List<PrivateClubBo> queryPrivateClub(){
     return  infoDao.queryPrivateClub();
    }
    public  List<HomeActivitesBo> queryHomeActivite(){
        return  infoDao.queryHomeActivite();
    }
    public  List<HomeGoodsBo> queryHomeGoodsBo(){
        return  infoDao.queryHomeGoodsBo();
    }
}
