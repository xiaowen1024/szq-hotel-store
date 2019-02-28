package com.szq.store.entity.bo;

import java.util.Date;

/**
 * Created by yxw on 2018/9/27.
 */
public class productResponseBo {
    private Integer confirmationOfAmount;//确认金额
    private Date confirmationOfDate;//确认时间
    private Integer status;//状态 0，申请预约 1 投资中 2 已回款
    private  double nowNet;
    private  Date payTime; //购买时间
    private String aveNet; //平均净值
    private  double payCount;// 购买份额
    private  Date Maturity;//到期日
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

    public Integer getConfirmationOfAmount() {
        return confirmationOfAmount;
    }

    public void setConfirmationOfAmount(Integer confirmationOfAmount) {
        this.confirmationOfAmount = confirmationOfAmount;
    }

    public Date getConfirmationOfDate() {
        return confirmationOfDate;
    }

    public void setConfirmationOfDate(Date confirmationOfDate) {
        this.confirmationOfDate = confirmationOfDate;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public double getNowNet() {
        return nowNet;
    }

    public void setNowNet(double nowNet) {
        this.nowNet = nowNet;
    }

    public Date getPayTime() {
        return payTime;
    }

    public void setPayTime(Date payTime) {
        this.payTime = payTime;
    }

    public String getAveNet() {
        return aveNet;
    }

    public void setAveNet(String aveNet) {
        this.aveNet = aveNet;
    }

    public double getPayCount() {
        return payCount;
    }

    public void setPayCount(double payCount) {
        this.payCount = payCount;
    }

    public Date getMaturity() {
        return Maturity;
    }

    public void setMaturity(Date maturity) {
        Maturity = maturity;
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
}
