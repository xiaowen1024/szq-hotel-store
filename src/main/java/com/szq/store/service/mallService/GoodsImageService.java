package com.szq.store.service.mallService;

import com.szq.store.dao.mallDao.GoodsImageDao;
import com.szq.store.entity.mallBo.GoodsImg;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by yxw on 2018/8/2.
 */
@Service("GoodsImageService")
@Transactional
public class GoodsImageService {
    @Resource
    private GoodsImageDao goodsImageDao;
    public List<GoodsImg> queryGoodsImgInfoByid(Integer id){
        return  goodsImageDao.queryGoodsImgInfoByid(id);
    }
    public void updateGoodsImg(GoodsImg goodsImg){
        goodsImageDao.updateGoodsImg(goodsImg);
    }
    public void addGoodsImg(GoodsImg goodsImg){
        goodsImageDao.addGoodsImg(goodsImg);
    }
    public void deleteGoodsImg(Integer id){
        goodsImageDao.deleteGoodsImg(id);
    }
    public  GoodsImg queryGoodImg(Integer id){
        return  goodsImageDao.queryGoodImg(id);
    }
}
