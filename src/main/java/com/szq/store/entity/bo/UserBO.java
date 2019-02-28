package com.szq.store.entity.bo;


import com.szq.store.common.base.BaseModel;

import java.io.Serializable;
import java.util.Date;

/**
 * 用户业务对象
 * @author Shibo Sun
 */

public class UserBO extends BaseModel implements Serializable {

	private Integer id;		// ID
	private String username;	// 用户名
	private String name;		// 姓名
	private String nickname;	// 昵称
	private String gender;		// 性别：1-男；2-女
	private Date birthday;	// 生日
	private String phoneNumber;	// 手机号
	private String email;		// 电子邮箱
	private String wechat;		// 微信号
	private String sinaWeibo;		// 新浪微博号
	private String twiter;		// twiter号
	private String facebook;		// facbook 号
	private String linkedin;		// linkedin 号
	private Date createTime;		// 创建时间
	private Date modifyTime;		// 修改时间
	private String status ; // 用户状态
	private String headPortrait;		// 头像路径
	private String uuid ; // 用户登录的UUID
	private String country ;//国家
	private String password ;//密码
	private String financialManagerNumber;//推荐理财师工号
	public String getFinancialManagerNumber() {
		return financialManagerNumber;
	}

	public void setFinancialManagerNumber(String financialManagerNumber) {
		this.financialManagerNumber = financialManagerNumber;
	}

	public UserBO() {
		// TODO Auto-generated constructor stub
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getWechat() {
		return wechat;
	}

	public void setWechat(String wechat) {
		this.wechat = wechat;
	}

	public String getSinaWeibo() {
		return sinaWeibo;
	}

	public void setSinaWeibo(String sinaWeibo) {
		this.sinaWeibo = sinaWeibo;
	}

	public String getTwiter() {
		return twiter;
	}

	public void setTwiter(String twiter) {
		this.twiter = twiter;
	}

	public String getFacebook() {
		return facebook;
	}

	public void setFacebook(String facebook) {
		this.facebook = facebook;
	}

	public String getLinkedin() {
		return linkedin;
	}

	public void setLinkedin(String linkedin) {
		this.linkedin = linkedin;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getModifyTime() {
		return modifyTime;
	}

	public void setModifyTime(Date modifyTime) {
		this.modifyTime = modifyTime;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getHeadPortrait() {
		return headPortrait;
	}

	public void setHeadPortrait(String headPortrait) {
		this.headPortrait = headPortrait;
	}

	public String getUuid() {
		return uuid;
	}

	public void setUuid(String uuid) {
		this.uuid = uuid;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
