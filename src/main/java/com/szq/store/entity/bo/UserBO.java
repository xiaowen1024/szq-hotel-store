package com.szq.store.entity.bo;


import com.szq.store.common.base.BaseModel;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

/**
 * 用户业务对象
 * @author Shibo Sun
 */

public class UserBO extends BaseModel implements Serializable {
	public static final Integer IS_MEMBER=1; //会员
	public static final Integer IS_USER=0;//是用户
	public static final Integer IS_NOT_USER= -1;//不是用户

	private Integer id;		// ID
	private String username;	// 用户名
	private String name;		// 姓名
	private String nickname;	// 昵称
	private String gender;		// 性别：1-男；2-女
	private Date birthday;	// 生日
	private String phoneNumber;	// 手机号
	private Integer member; //会员
	private String email;		// 电子邮箱
	private String wechat;		// 微信号
	private String sinaWeibo;		// 新浪微博号
	private String twiter;		// twiter号
	private String facebook;		// facbook 号
	private String licensePlateNumber; //车牌号
	private String  remark;          //备注
	private String hobby;           //爱好
	private String qq;              //QQ
	private String linkedin;		// linkedin 号
	private Date createTime;		// 创建时间
	private Date modifyTime;		// 修改时间
	private String status ; // 用户状态
	private String headPortrait;		// 头像路径
	private String uuid ; // 用户登录的UUID
	private String country ;//国家
	private String password ;//密码
	private  String credentialNo;  //证件号码
	private  String address;      //地址
	private  Integer certificateId;  //证件类型
	private BigDecimal member_card;//会员号
	private String nation;//民族
	public UserBO() {
	}


	public static Integer getIsMember() {
		return IS_MEMBER;
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

	public Integer getMember() {
		return member;
	}

	public void setMember(Integer member) {
		this.member = member;
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

	public String getLicensePlateNumber() {
		return licensePlateNumber;
	}

	public void setLicensePlateNumber(String licensePlateNumber) {
		this.licensePlateNumber = licensePlateNumber;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getHobby() {
		return hobby;
	}

	public void setHobby(String hobby) {
		this.hobby = hobby;
	}

	public String getQq() {
		return qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
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

	public String getCredentialNo() {
		return credentialNo;
	}

	public void setCredentialNo(String credentialNo) {
		this.credentialNo = credentialNo;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Integer getCertificateId() {
		return certificateId;
	}

	public void setCertificateId(Integer certificateId) {
		this.certificateId = certificateId;
	}

	public BigDecimal getMember_card() {
		return member_card;
	}

	public void setMember_card(BigDecimal member_card) {
		this.member_card = member_card;
	}

	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}
}
