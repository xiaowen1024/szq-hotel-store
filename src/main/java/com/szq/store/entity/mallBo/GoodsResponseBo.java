package com.szq.store.entity.mallBo;

/**
 * Created by yxw on 2018/8/15.
 */
public class GoodsResponseBo {
    private Integer leaveId; //一级分类id（pid）
    private Integer goodsTypeId; //分类id
    private Integer brandId;//（品牌id）
    private Integer weightStatu;//重量查询标识码
    private Integer sortStatu;//排序查询标识码


    public Integer getLeaveId() {
        return leaveId;
    }

    public void setLeaveId(Integer leaveId) {
        this.leaveId = leaveId;
    }

    public Integer getGoodsTypeId() {
        return goodsTypeId;
    }

    public void setGoodsTypeId(Integer goodsTypeId) {
        this.goodsTypeId = goodsTypeId;
    }

    public Integer getBrandId() {
        return brandId;
    }

    public void setBrandId(Integer brandId) {
        this.brandId = brandId;
    }

    public Integer getWeightStatu() {
        return weightStatu;
    }

    public void setWeightStatu(Integer weightStatu) {
        this.weightStatu = weightStatu;
    }

    public Integer getSortStatu() {
        return sortStatu;
    }

    public void setSortStatu(Integer sortStatu) {
        this.sortStatu = sortStatu;
    }
}
