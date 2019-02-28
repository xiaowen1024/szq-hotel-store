package com.szq.store.dao.mallDao;


import com.szq.store.entity.mallBo.GoodsDetailBo;
import com.szq.store.entity.mallBo.GoodsFollowBo;

import java.util.List;
import java.util.Map;

/**
 * Created by yxw on 2018/8/2.
 */
public interface GoodsFollowDao {
    public void addGoodsFollow(GoodsFollowBo goodsFollow);
    public void deleteGoodsFollow(Integer Id);
    public List<GoodsFollowBo> queryMyGoodsFollow(Integer id);//用户查询已经关注信息
    public GoodsFollowBo queryGoodsFollow(Integer id);
    public  List<GoodsDetailBo> queryUserFollow(Map<String, Object> map);
    public  List<Integer> queryUserFollowSku(Integer id);
    public GoodsFollowBo queryGoodsFollow1(GoodsFollowBo goodsFollowBo);
    public void  deleteFollow(GoodsFollowBo goodsFollowBo);
    public  int queryUserFollowCount(Integer id);
}
