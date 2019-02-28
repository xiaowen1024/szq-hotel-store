package com.szq.store.entity.mallBo;

/**
 * Created by yxw on 2018/8/30.
 */
public class QueryGoodsResponsBo {
    private Integer brandId;//（品牌id）
    private Integer weightStatu;//重量查询标识码
    private Integer sortStatu;//排序查询标识码
    private String query;

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

    public String getQuery() {
        return query;
    }

    public void setQuery(String query) {
        this.query = query;
    }
}
