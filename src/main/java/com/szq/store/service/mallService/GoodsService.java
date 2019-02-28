package com.szq.store.service.mallService;

import com.szq.store.dao.mallDao.GoodsDao;
import com.szq.store.entity.mallBo.GoodsBo;
import com.szq.store.entity.mallBo.GoodsDetailBo;
import com.szq.store.entity.mallBo.GoodsListBo;
import com.szq.store.entity.mallBo.GoodsResponseBo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * Created by yxw on 2018/8/2.
 */
@Service("GoodsService")
@Transactional
public class GoodsService {
    @Resource
    private GoodsDao goodsDao;
    public void updateGoods(GoodsBo goodsBo){
        goodsDao.updateGoods(goodsBo);
    }
    public int queryGoodsCount(GoodsResponseBo goodsResponseBo){
        return goodsDao.queryGoodsCount(goodsResponseBo);
    }
    public void addGoods(GoodsBo goodsBo){
        goodsDao.addGoods(goodsBo);
    }
    public void deleteGoods(Integer Id){
        goodsDao.deleteGoods(Id);
    }
    public  GoodsBo  queryGoods(Integer id){
        return goodsDao.queryGoods(id);
    }
    public List<GoodsListBo> queryGoodsInfoSort(Map<String,Object> map){
        return goodsDao.queryGoodsInfoSort(map);
    }
    public List<GoodsDetailBo> queryHomeGoodsList(){
        return  goodsDao.queryHomeGoodsList();
    }
    public  List<GoodsDetailBo> queryGoodsdetail(Integer id){
        return  goodsDao.queryGoodsdetail(id);
    }
    public  List<GoodsListBo> queryGoodsbrandsDetailList(Integer id){
        return  goodsDao.queryGoodsbrandsDetailList(id);
    }
    public List<GoodsDetailBo> queryOrderNews(Integer[] intTemp){
        return  goodsDao.queryOrderNews(intTemp);

    }
    public List<GoodsDetailBo> queryHomeGoodsList1(){
        return  goodsDao.queryHomeGoodsList1();
    }
    public List<GoodsDetailBo> queryHomeGoodsList2(){
        return  goodsDao.queryHomeGoodsList2();
    }
}
