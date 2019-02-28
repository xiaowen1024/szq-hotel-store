package com.szq.store.dao.mallDao;


import com.szq.store.entity.mallBo.ReceivingAdressBo;
import com.szq.store.entity.mallBo.orderAddressBo;

import java.util.List;
import java.util.Map;

/**
 * Created by shishiming on 2018/8/2.
 */
public interface ReceivingAdressDao {
    //添加ReceivingAdress
    int addReceivingAdress(ReceivingAdressBo receivingAdressBO);
    int addReceivingAdresswap(ReceivingAdressBo receivingAdressBO);
    //删除ReceivingAdress byId
    void deleteReceivingAdressbyId(Integer id);
    //修改ReceivingAdress byId
    void updateReceivingAdressbyId(ReceivingAdressBo receivingAdressBO);
    //查询ReceivingAdressList
    List<ReceivingAdressBo> queryReceivingAdressList(Map<String, Object> map);
    //查询ReceivingAdressById
    ReceivingAdressBo queryReceivingAdressById(Integer id);
    //查询地址数目
    int queryReceivingAdressCount(Map<String, Object> map);
    //修改所有的地址状态
    void updateReceivingAdressbyUserId(Integer userId);
    //修改默认地址
    void setDefaultAddressbyId(Integer addressId);
    public orderAddressBo queryorderAddress(Map<String, Object> map);

}
