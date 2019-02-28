package com.szq.store.service.mallService;

import com.szq.store.dao.mallDao.GoodsFollowDao;
import com.szq.store.entity.mallBo.GoodsDetailBo;
import com.szq.store.entity.mallBo.GoodsFollowBo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * Created by yxw on 2018/8/2.
 */
@Service("GoodsFollowService")
@Transactional
public class GoodsFollowService {
    @Resource
    private GoodsFollowDao goodsFollowDao;
    public void addGoodsFollow(GoodsFollowBo goodsFollow){
        goodsFollowDao.addGoodsFollow(goodsFollow);
    }
    public void deleteGoodsFollow(Integer id){
        goodsFollowDao.deleteGoodsFollow(id);
    }
    public List<GoodsFollowBo> queryMyGoodsFollow(Integer id){
        return  goodsFollowDao.queryMyGoodsFollow(id);
    }
    public GoodsFollowBo queryGoodsFollow(Integer id){
        return  goodsFollowDao.queryGoodsFollow(id);
    }
    public  List<GoodsDetailBo> queryUserFollow(Map<String,Object> map){
        return goodsFollowDao.queryUserFollow(map);
    }
    public  List<Integer> queryUserFollowSku(Integer id){
        return  goodsFollowDao.queryUserFollowSku(id);
    }
    public GoodsFollowBo queryGoodsFollow1(GoodsFollowBo goodsFollowBo){
        return  goodsFollowDao.queryGoodsFollow1(goodsFollowBo);
    }
    public void  deleteFollow(GoodsFollowBo goodsFollowBo){
        goodsFollowDao.deleteFollow(goodsFollowBo);
    }
    public  int queryUserFollowCount(Integer id){
       return   goodsFollowDao.queryUserFollowCount(id);
    }
}
