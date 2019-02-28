package com.szq.store.service.mallService;

import com.szq.store.dao.mallDao.OrderDao;
import com.szq.store.entity.mallBo.OrderBo;
import com.szq.store.entity.mallBo.OrderInfo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by shishiming on 2018/8/2.
 */
@Service("orderService")
@Transactional
public class OrderService {

    @Resource
    private OrderDao orderDao;

    //添加Order
    public void addOrder(List<OrderBo> orderBo){
        orderDao.addOrder(orderBo);
    }

    //删除Order byId
    public void deleteOrderbyId(Integer id){
        orderDao.deleteOrderbyId(id);
    }
    //修改Order byId
    public void updateOrderbyId(OrderBo orderBO){
        if(orderBO.getId() == 0 || orderBO.getId() == null){
            return ;
        }
        if(orderBO.getUserId() == 0 || orderBO.getUserId() == null){
            return ;
        }
        orderDao.updateOrderbyId(orderBO);

    }
    //查询OrderList
    public List<OrderBo> queryOrderList(Map<String, Object> map){
        return orderDao.queryOrderList(map);
    }

    //查询OrderById
    public OrderBo queryOrderById(Integer id){
        if(id == null || id == 0){
            return null;
        }
        return orderDao.queryOrderById(id);
    }

    public int queryOrderCount(Map<String, Object> map) {
        return orderDao.queryOrderCount(map);
    }

    public void updateOrderStatebyId(HashMap<String, Object> map) {
        orderDao.updateOrderStatebyId(map);
    }
   public List<Long> queryIdList(Integer userId){
       return  orderDao.queryIdList(userId);
   }
   public List<OrderInfo> queryOrderList1(OrderInfo orderBo){
       return  orderDao.queryOrderList1(orderBo);
   }
    public List<OrderInfo> queryOrderList2(OrderInfo orderBo){
        return  orderDao.queryOrderList2(orderBo);
    }
    public List<OrderInfo> queryOrderList3(OrderInfo orderBo){
        return  orderDao.queryOrderList3(orderBo);
    }
    public List<OrderInfo> queryOrderList4(OrderInfo orderBo){
        return  orderDao.queryOrderList4(orderBo);
    }
    public void updateOrderstatus(OrderBo OrderBo){
        orderDao.updateOrderstatus(OrderBo);
    }
    public List<OrderInfo> queryOrderListByOrderId(Long id){
      return   orderDao.queryOrderListByOrderId(id);
    }
}
