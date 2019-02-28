package com.szq.store.dao;

import java.util.List;
import java.util.Map;

/**
 * Created by shishiming on 2018/9/4.
 */
public interface BindingDao {

    //用户绑定 顾问
    int addBinding(Map<String, Object> map);

    //用户解绑
    void deleteBinding(Integer id);

    //获取已经绑定List
    List<Map<String,Object>> getBindingList(Integer userId);
    int queryInfo(Integer id);
}
