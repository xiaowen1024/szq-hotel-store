package com.szq.store.dao.mallDao;


import com.szq.store.entity.mallBo.GoodTypeBo;

import java.util.List;

/**
 * Created by yxw on 2018/8/1.
 */
public interface GoodsTypeDao {
    public GoodTypeBo queryGoodTypeById(Integer id);//查询目录
    public  List<GoodTypeBo> queryGoodType();//通过pid 查一级目录
    public  void updateGoodType(GoodTypeBo goodTypeBo);
    public  void addGoodType(GoodTypeBo GoodTypeBo);
    public void deleteGoodType(Integer Id);
    public  GoodTypeBo queryGoodTypeFirstById(Integer id);
    public  GoodTypeBo queryGoodTypeSecondById(Integer id);

    public  List<GoodTypeBo> queryTypeById();

    public  List<GoodTypeBo> queryGoodTypeByPid(Integer pid); //一级查二级


}
