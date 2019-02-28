package com.szq.store.service.mallService;

import com.szq.store.dao.mallDao.ShoppingCarDao;
import com.szq.store.entity.mallBo.GoodsDetailBo;
import com.szq.store.entity.mallBo.ShoppingCarBo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by shishiming on 2018/8/2.
 */
@Service("shoppingCarService")
@Transactional
public class ShoppingCarService {

    @Resource
    private ShoppingCarDao shoppingCarDao;

    //添加ShoppingCar
    public int addShoppingCar(ShoppingCarBo shoppingCarBO){
        if(shoppingCarBO.getUserId() == 0 || shoppingCarBO.getUserId() == null){
            return 0;
        }
        if(shoppingCarBO.getSku() == 0 || shoppingCarBO.getSku() == null){
            return 0;
        }
        return shoppingCarDao.addShoppingCar(shoppingCarBO);
    }

    //删除ShoppingCar byId
    public void deleteShoppingCarbyId(Integer id){
        shoppingCarDao.deleteShoppingCarbyId(id);
    }
    //修改ShoppingCar byId
    public void updateShoppingCarbyId(ShoppingCarBo shoppingCarBO){
        shoppingCarDao.updateShoppingCarbyId(shoppingCarBO);

    }
    public  void  updateShopping(ShoppingCarBo shoppingCarBo)
    {
       shoppingCarDao.updateShopping(shoppingCarBo);
    }
    //查询ShoppingCarList
    public List<ShoppingCarBo> queryShoppingCarList(Map<String, Object> map){
        return shoppingCarDao.queryShoppingCarList(map);
    }
    //查询ShoppingCarById
    public ShoppingCarBo queryShoppingCarById(Integer id){
        if(id == null || id == 0){
            return null;
        }
        return shoppingCarDao.queryShoppingCarById(id);
    }
    public ShoppingCarBo queryShopping(ShoppingCarBo shoppingCarBo){

        return shoppingCarDao.queryShopping(shoppingCarBo);
    }


    public void deleteShoppingCarbyIds(List<String> ids) {
        if(ids == null){
            return ;
        }
        shoppingCarDao.deleteShoppingCarByIds(ids);
    }

    public List<String> queryInvalidGoodsList(HashMap<String,Object> parMap) {
        if (parMap == null){
            return null;
        }
        return shoppingCarDao.queryInvalidGoodsList(parMap);
    }
    public  List<GoodsDetailBo> queryShoppingCar(Integer id){
        return shoppingCarDao.queryShoppingCar(id);
    }
    public  void  deleteInfoList(Integer[] intTemp){
        shoppingCarDao.deleteInfoList(intTemp);
    }
    public void  deleteAll(Integer userId){
        shoppingCarDao.deleteAll(userId);
    }
    public void AddFollowList(Map<String, Object> map){
        shoppingCarDao.AddFollowList(map);
    }
    public List<Integer> queryFollow(Integer userId){
        return  shoppingCarDao.queryFollow(userId);
    }
    public  int querycount(Integer userId){
        return  shoppingCarDao.querycount(userId);
    }
}
