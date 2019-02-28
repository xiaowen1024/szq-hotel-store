package com.szq.store.entity.mallBo;

import com.szq.store.common.base.BaseModel;

import java.util.Date;

/**
 * Created by shishiming on 2018/8/31.
 */
public class BrowseHistoryBo extends BaseModel{

    private Integer sku;//商品规格编号
    private Date createTime;//浏览时间

    public Integer getSku() {
        return sku;
    }

    public void setSku(Integer sku) {
        this.sku = sku;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}
