package com.szq.store.entity.bo;


import com.szq.store.common.base.BaseModel;

import java.util.Date;

/**
 * Created by shishiming on 2018/7/31.
 */
public class PrivateInvestmentBO extends BaseModel {

    private Integer id; //id
    private String fundName; //基金名称
    private String fundType; //基金类型
    private String productTerm; //产品期限
    private String comparisonDatum; //比较基准
    private Date createTime; //创建时间
    private Date startTime; //开始时间
    private Date endTime; //开始时间
    private Integer amountOfInvestment; //起投金额
    private Integer increasingAmount; //递增金额
    private Integer productScaleStart; //产品规模开始
    private Integer productScaleEnd; //产品规模结束
    private String imgUrl;//详情图片地址
    private Integer investmentPoinId; //投资起点id
    private Integer productTermId; //产品期限id
    private Integer riskLevelId; //风险级别id
    private Integer incomeTypeId; //收益类型id

    private Date recommendTime;//推荐日期
    private String wapImage;
    private String openDay; //开放日
    private  String exitday;//退出期
    private  String extendedday;//退出延长期
    private  Date closeTime;//封闭结束日
    private double earnings; //收益日
    private  String prestorelimit;//预存期限
    private  Integer productType;//产品类型

    public String getOpenDay() {
        return openDay;
    }

    public void setOpenDay(String openDay) {
        this.openDay = openDay;
    }

    public String getExitday() {
        return exitday;
    }

    public void setExitday(String exitday) {
        this.exitday = exitday;
    }

    public String getExtendedday() {
        return extendedday;
    }

    public void setExtendedday(String extendedday) {
        this.extendedday = extendedday;
    }

    public Date getCloseTime() {
        return closeTime;
    }

    public void setCloseTime(Date closeTime) {
        this.closeTime = closeTime;
    }

    public double getEarnings() {
        return earnings;
    }

    public void setEarnings(double earnings) {
        this.earnings = earnings;
    }

    public String getPrestorelimit() {
        return prestorelimit;
    }

    public void setPrestorelimit(String prestorelimit) {
        this.prestorelimit = prestorelimit;
    }

    public Integer getProductType() {
        return productType;
    }

    public void setProductType(Integer productType) {
        this.productType = productType;
    }

    public Date getRecommendTime() {
        return recommendTime;
    }

    public void setRecommendTime(Date recommendTime) {
        this.recommendTime = recommendTime;
    }

    public String getWapImage() {
        return wapImage;
    }

    public void setWapImage(String wapImage) {
        this.wapImage = wapImage;
    }
/* public Date getOpenDay() {
        return openDay;
    }

    public void setOpenDay(Date openDay) {
        this.openDay = openDay;
    }

    public String getExitday() {
        return exitday;
    }

    public void setExitday(String exitday) {
        this.exitday = exitday;
    }

    public String getExtendedday() {
        return extendedday;
    }

    public void setExtendedday(String extendedday) {
        this.extendedday = extendedday;
    }

    public Date getCloseTime() {
        return closeTime;
    }

    public void setCloseTime(Date closeTime) {
        this.closeTime = closeTime;
    }

    public double getEarnings() {
        return earnings;
    }

    public void setEarnings(double earnings) {
        this.earnings = earnings;
    }

    public String getPrestorelimit() {
        return prestorelimit;
    }

    public void setPrestorelimit(String prestorelimit) {
        this.prestorelimit = prestorelimit;
    }

    public Integer getProductType() {
        return productType;
    }

    public void setProductType(Integer productType) {
        this.productType = productType;
    }

    public String getWapImage() {
        return wapImage;
    }

    public void setWapImage(String wapImage) {
        this.wapImage = wapImage;
    }*/

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFundName() {
        return fundName;
    }

    public void setFundName(String fundName) {
        this.fundName = fundName;
    }

    public String getFundType() {
        return fundType;
    }

    public void setFundType(String fundType) {
        this.fundType = fundType;
    }

    public String getProductTerm() {
        return productTerm;
    }

    public void setProductTerm(String productTerm) {
        this.productTerm = productTerm;
    }

    public String getComparisonDatum() {
        return comparisonDatum;
    }

    public void setComparisonDatum(String comparisonDatum) {
        this.comparisonDatum = comparisonDatum;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public Integer getAmountOfInvestment() {
        return amountOfInvestment;
    }

    public void setAmountOfInvestment(Integer amountOfInvestment) {
        this.amountOfInvestment = amountOfInvestment;
    }

    public Integer getIncreasingAmount() {
        return increasingAmount;
    }

    public void setIncreasingAmount(Integer increasingAmount) {
        this.increasingAmount = increasingAmount;
    }

    public Integer getProductScaleStart() {
        return productScaleStart;
    }

    public void setProductScaleStart(Integer productScaleStart) {
        this.productScaleStart = productScaleStart;
    }

    public Integer getProductScaleEnd() {
        return productScaleEnd;
    }

    public void setProductScaleEnd(Integer productScaleEnd) {
        this.productScaleEnd = productScaleEnd;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

    public Integer getInvestmentPoinId() {
        return investmentPoinId;
    }

    public void setInvestmentPoinId(Integer investmentPoinId) {
        this.investmentPoinId = investmentPoinId;
    }

    public Integer getProductTermId() {
        return productTermId;
    }

    public void setProductTermId(Integer productTermId) {
        this.productTermId = productTermId;
    }

    public Integer getRiskLevelId() {
        return riskLevelId;
    }

    public void setRiskLevelId(Integer riskLevelId) {
        this.riskLevelId = riskLevelId;
    }

    public Integer getIncomeTypeId() {
        return incomeTypeId;
    }

    public void setIncomeTypeId(Integer incomeTypeId) {
        this.incomeTypeId = incomeTypeId;
    }

   /* public Date getRecommendTime() {
        return recommendTime;
    }

    public void setRecommendTime(Date recommendTime) {
        this.recommendTime = recommendTime;
    }*/
}
