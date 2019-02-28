package com.szq.store.dao.mallDao;


import com.szq.store.entity.mallBo.GoodsBo;
import com.szq.store.entity.mallBo.GoodsDetailBo;
import com.szq.store.entity.mallBo.GoodsListBo;
import com.szq.store.entity.mallBo.GoodsResponseBo;

import java.util.List;
import java.util.Map;

/**
 * Created by yxw on 2018/8/2.
 */
public interface GoodsDao {
    public int queryGoodsCount(GoodsResponseBo goodsResponseBo);
    public void updateGoods(GoodsBo goodsBo);
    public void addGoods(GoodsBo goodsBo);
    public void deleteGoods(Integer Id);
    public  GoodsBo  queryGoods(Integer id);
    public List<GoodsListBo> queryGoodsInfoSort(Map<String, Object> map);//排序
    public List<GoodsDetailBo> queryHomeGoodsList();
    public  List<GoodsDetailBo> queryGoodsdetail(Integer id);
    public  List<GoodsListBo> queryGoodsbrandsDetailList(Integer id);
    public List<GoodsDetailBo> queryOrderNews(Integer[] intTemp);
    public List<GoodsDetailBo> queryHomeGoodsList1();
    public List<GoodsDetailBo> queryHomeGoodsList2();
}

