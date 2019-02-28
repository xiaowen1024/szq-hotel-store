package com.szq.store.service.mallService;

import com.szq.store.dao.mallDao.BrandDao;
import com.szq.store.entity.mallBo.BrandBo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * Created by yxw on 2018/8/2.
 */
@Service("BrandService")
@Transactional
public class BrandService {
    @Resource
    private BrandDao brandDao;
    public BrandBo queryBrand(Integer id){
        return  brandDao.queryBrand(id);
    }
    //id
    public List<BrandBo> queryBrandInfo(Map<String,Object> map){
        return brandDao.queryBrandInfo(map);
    }
    public void updateBrand(BrandBo brand){
        brandDao.updateBrand(brand);
    }
    public  void addBrand(BrandBo brand){
        brandDao.addBrand(brand);
    }
    public void deleteBrand(Integer id){
        brandDao.deleteBrand(id);
    }
    public  List<BrandBo> queryBrandOnclick(Map<String,Object> map){
        return brandDao.queryBrandOnclick( map);
    }
    public  BrandBo queryBrandByGoodsId(Integer id){
        return  brandDao.queryBrandByGoodsId(id);
    }

    public  List<BrandBo> queryBranddetail(Map<String,Object> map){
        return  brandDao.queryBranddetail(map);
    }
}
