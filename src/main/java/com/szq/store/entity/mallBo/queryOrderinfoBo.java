package com.szq.store.entity.mallBo;

import java.util.List;

/**
 * Created by yxw on 2018/9/7.
 */
public class queryOrderinfoBo {
    private  Long id;
    private List<OrderInfo> orderBos;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public List<OrderInfo> getOrderBos() {
        return orderBos;
    }

    public void setOrderBos(List<OrderInfo> orderBos) {
        this.orderBos = orderBos;
    }
}
