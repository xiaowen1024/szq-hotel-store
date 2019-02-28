package com.szq.store.service.mallService;

import com.szq.store.dao.mallDao.GoodsTypeDao;
import com.szq.store.entity.mallBo.GoodTypeBo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by yxw on 2018/8/1.
 */
@Service("GoodsTypeService")
@Transactional
public class GoodsTypeService {
    @Resource
    private GoodsTypeDao goodsTypeDao;
    /*
    *查所有
    */
    public  List<GoodTypeBo> queryGoodType(){
        return  goodsTypeDao.queryGoodType();
    }
    /*
    *通过二级查一级
    */
    /*通过商品id查询相关分类*/
    public  GoodTypeBo queryGoodTypeFirstById(Integer id){
        return  goodsTypeDao.queryGoodTypeFirstById(id);
    }

    public  GoodTypeBo queryGoodTypeSecondById(Integer id)
    {
        return  goodsTypeDao.queryGoodTypeSecondById(id);
    }

    public  GoodTypeBo queryGoodTypeById(Integer id){
         return goodsTypeDao.queryGoodTypeById(id);
    }
    public  void updateGoodType(GoodTypeBo goodTypeBo){
        goodsTypeDao.updateGoodType(goodTypeBo);
    }
    public  void addGoodType(GoodTypeBo goodTypeBo){
        goodsTypeDao.addGoodType(goodTypeBo);
    }
    public void deleteGoodType(Integer id){
        goodsTypeDao.deleteGoodType(id);
    }
    public  List<GoodTypeBo> queryTypeById(){
        return  goodsTypeDao.queryTypeById();
    }
    public  List<GoodTypeBo> queryGoodTypeByPid(Integer id){

        return  goodsTypeDao.queryGoodTypeByPid(id);
    }
}
