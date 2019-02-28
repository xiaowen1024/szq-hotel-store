package com.szq.store.entity.bo;

import java.util.Date;

/**
 * Created by yxw on 2018/7/31.
 */
public class ExpertIectureHallBo {
    private Integer id;           //ID
    private String title;         //标题
    private String englishTitle;  //英文标题

    private String imgUrl;        //图片地址
    private String source;        //来源
    private Date createTime;      //创建时间
    private Date updateTime;      //修改时间
    private String content;       //内容
    private String synopsis;      //简介
    private String createNewsUser;//新闻创建者

    public String getSynopsis() {
        return synopsis;
    }

    public void setSynopsis(String synopsis) {
        this.synopsis = synopsis;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getEnglishTitle() {
        return englishTitle;
    }

    public void setEnglishTitle(String englishTitle) {
        this.englishTitle = englishTitle;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getCreateNewsUser() {
        return createNewsUser;
    }

    public void setCreateNewsUser(String createNewsUser) {
        this.createNewsUser = createNewsUser;
    }
}
