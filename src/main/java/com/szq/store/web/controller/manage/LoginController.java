package com.szq.store.web.controller.manage;

import com.szq.store.common.constants.SysConstants;
import com.szq.store.entity.UserDO;
import com.szq.store.entity.bo.MessageRecordBO;
import com.szq.store.entity.bo.QuestionnaireBo;
import com.szq.store.entity.bo.UserBO;
import com.szq.store.entity.dto.ResultDTOBuilder;
import com.szq.store.entity.mallBo.AccountBo;
import com.szq.store.service.LoginService;
import com.szq.store.service.MessageRecordService;
import com.szq.store.service.QuestionnaireService;
import com.szq.store.service.SystemMessageService;
import com.szq.store.service.mallService.AccountService;
import com.szq.store.util.*;
import com.szq.store.util.message.SendMessageUtil;
import com.szq.store.util.redisUtils.RedissonHandler;
import com.szq.store.web.controller.base.BaseCotroller;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.UUID;

/**
 * @author Shibo Sun
 * 登录controller
 */
@Controller
@RequestMapping("/login")
public class LoginController extends BaseCotroller {

	private static Logger log = LoggerFactory.getLogger(LoginController.class);
	@Resource
	private QuestionnaireService questionnaireService;
	@Resource
	private SystemMessageService systemMessageService;

	@Resource(name = "loginService")
	LoginService loginService ;

	@Resource(name = "messageRecordService")
	MessageRecordService messageRecordService;

	@Resource(name = "AccountService")
	AccountService accountService ;


	@RequestMapping("/registerPage")
	public ModelAndView registerPage(){
		ModelAndView view = new ModelAndView();
		view.setViewName("/register/register");
		return view;
	}

	@RequestMapping("/loginPage")
	public ModelAndView loginPage(){
		ModelAndView view = new ModelAndView();
		view.setViewName("/login/login");
		return view;
	}


	@RequestMapping("/updatePwdPage1")
	public ModelAndView updatePwdPage1(){
		ModelAndView view = new ModelAndView();
		view.setViewName("/updatePwd/find_pwd1");
		return view;
	}

	@RequestMapping("/updatePwdPage2")
	public ModelAndView updatePwdPage2(){
		ModelAndView view = new ModelAndView();
		view.setViewName("/updatePwd/find_pwd2");
		return view;
	}

	@RequestMapping("/updatePwdPage3")
	public ModelAndView updatePwdPage3(){
		ModelAndView view = new ModelAndView();
		view.setViewName("/updatePwd/find_pwd3");
		return view;
	}
	/**
	 * 登录
	 * @param response
	 * @param mobile
	 * @param password
	 */
    @RequestMapping( value = "/signIn" )
    public void signIn(HttpServletResponse response, HttpServletRequest request , String mobile, String password,Integer type){

		/* 1. 验证参数是否完整 */
		if(StringUtils.isEmpty(mobile) || StringUtils.isEmpty(password)){
			String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001" , "参数异常！")) ;
			super.safeJsonPrint(response, result);
			return ;
		}

		//密码登录
		if(type == 0){
			UserBO userInfo = loginService.queryUserInfoByMobile(mobile);

			if(userInfo == null){
				String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004" , "用户不存在！")) ;
				super.safeJsonPrint(response, result);
				return ;
			}

			// 判断密码是否正确
			if(!MD5Util.digest(password).equals(userInfo.getPassword())){
				String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001" , "密码输入不正确！")) ;
				super.safeJsonPrint(response, result);
				return ;
			}

			// 登陆客户信息放入Redis缓存
			String uuid = UUID.randomUUID().toString();

			super.putLoginUser(uuid, userInfo);

			System.out.print(createKey(uuid, SysConstants.CURRENT_LOGIN_USER));
			super.setCookie(response, SysConstants.CURRENT_LOGIN_CLIENT_ID, uuid, SysConstants.SEVEN_DAY_TIME);

			userInfo.setPassword("");
			String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(userInfo)) ;
			super.safeJsonPrint(response, result);
		//验证码登录
		}else if(type == 1){

			UserBO userInfo = loginService.queryUserInfoByMobile(mobile);
			if(userInfo == null){
				//创建未设置密码的用户
				UserBO userBO =new UserBO();
				userBO.setHeadPortrait("image/2017@3x.png");
				userBO.setPhoneNumber(mobile);
				loginService.createUserByPhone(userBO);
				Integer t =userBO.getId();
				AccountBo accountBo =new AccountBo();
				accountBo.setIntegral(0);
				accountBo.setUserId(t);
				accountBo.setLeavestatus(0);
				accountService.addAccount(accountBo);
				QuestionnaireBo questionnaireBo =new QuestionnaireBo();
				questionnaireBo.setUserId(t);
				questionnaireBo.setCognizance(0);
				questionnaireBo.setEvaluation(0);
				questionnaireBo.setExamen(0);
				questionnaireBo.setScore(0);
				questionnaireService.addQuestionnaire(questionnaireBo);
				userInfo = loginService.queryUserInfoByMobile(mobile);
			}
			//获取缓存中验证码
			String mobileAuthCode = RedissonHandler.getInstance().get(mobile + "_login");

			// 判断验证码输入是否正确
			if(StringUtils.isEmpty(mobileAuthCode) || !mobileAuthCode.equals(password)){
				String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001" , "验证码有误")) ;
				super.safeJsonPrint(response , result);
				return ;
			}


			// 登陆客户信息放入Redis缓存
			String uuid = UUID.randomUUID().toString();
			super.putLoginUser(uuid, userInfo);

			super.setCookie(response, SysConstants.CURRENT_LOGIN_CLIENT_ID, uuid, SysConstants.SEVEN_DAY_TIME);

			userInfo.setPassword("");
			String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(userInfo)) ;
			super.safeJsonPrint(response, result);
		}


	}

	@RequestMapping( value = "/queryLoginStatus")
	public void queryLoginStatus (HttpServletResponse response, HttpServletRequest request ){



		/* 1. 找到对应的账户记录 */
		UserBO userBO = super.getLoginUser(request) ;

		/* 2. 验证账户状态 */
		if (userBO == null ) {
			String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007" , "用户未登录！")) ;
			super.safeJsonPrint(response , result);
			return ;
		}
//		if (StringUtils.isBlank(userBO.getStatus()) || userBO.getStatus().equals(UserDO.STATUS_FREEZE)) {
//			String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010005" , "该账户已被冻结!")) ;
//			super.safeJsonPrint(response , result);
//			return ;
//		}
//		if (userBO.getStatus().equals(UserDO.STATUS_INACTIVE) || StringUtils.isBlank(userBO.getStatus())) {
//			JSONObject json = new JSONObject() ;
//			String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010006" , "该账户没有被激活!", json.toString())) ;
//			json.put("userId" , userBO.getId()) ;
//			super.safeJsonPrint(response , result);
//			return ;
//		}

		/* 3. 返回用户信息 */
		userBO.setPassword("");
		String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(userBO), DateUtils.DATE_PATTERN) ;
		super.safeJsonPrint(response, result);
	}


	//登出
	@RequestMapping( value = "/logout")
	public void logout (HttpServletResponse response, HttpServletRequest request ){


		/* 1. 找到对应的账户记录 */
		UserBO userBO = super.getLoginUser(request) ;

		/* 2. 验证账户状态 */
		if (userBO == null ) {
			String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007" , "用户未登录！")) ;
			super.safeJsonPrint(response , result);
			return ;
		}

		/* 1. 找到对应的id */
		String clientLoginID = super.getClientLoginID(request);

		if (StringUtils.isEmpty(clientLoginID)) {
			String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("00000001" , "没有获取到clientLoginID！")) ;
			super.safeJsonPrint(response , result);
			return ;
		}

		String key = super.createKey(clientLoginID,SysConstants.CURRENT_LOGIN_USER);
		//从redis中删除用户信息
		RedissonHandler.getInstance().delete(key);

		String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success("") , DateUtils.DATE_PATTERN) ;
		super.safeJsonPrint(response , result);
	}

	/**
	 * 注册用户
	 * @param response,mobile,password,confirmPassword,authCode
	 */
	@RequestMapping( value = "/register")
	public void register (HttpServletResponse response, String mobile, String password, String confirmPassword,
								  String authCode,String financialManagerNumber){

		/* 校验参数 */
		if(StringUtils.isEmpty(mobile) || StringUtils.isEmpty(password) || StringUtils.isEmpty(confirmPassword)
				|| StringUtils.isEmpty(authCode)){
			String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001" , "参数异常")) ;
			super.safeJsonPrint(response , result);
			return ;
		}

		if(!password.equals(confirmPassword)){
			String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001" , "密码和确认密码不一致")) ;
			super.safeJsonPrint(response , result);
			return ;
		}

		/* 判断手机号码是否注册过 */
		int count = loginService.selectCountByMobileCode(mobile);
		if(count > 0 ){
			String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000002" , "手机号码已注册")) ;
			super.safeJsonPrint(response , result);
			return ;
		}

		/* 判断验证码输入是否正确 */
		String mobileAuthCode = RedissonHandler.getInstance().get(mobile + "_register");
		if(StringUtils.isEmpty(mobileAuthCode) || !mobileAuthCode.equals(authCode)){
			String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001" , "验证码错误")) ;
			super.safeJsonPrint(response , result);
			return ;
		}

		/* 注册用户 */
		UserBO userInfo = new UserBO();
		userInfo.setPhoneNumber(mobile);
		userInfo.setPassword(MD5Util.digest(password));
		userInfo.setFinancialManagerNumber(financialManagerNumber);
		userInfo.setHeadPortrait("image/2017@3x.png");
		loginService.register(userInfo);

		AccountBo accountBo =new AccountBo();
		accountBo.setIntegral(0);
		accountBo.setUserId(userInfo.getId());
		accountBo.setLeavestatus(0);
		accountService.addAccount(accountBo);
		QuestionnaireBo questionnaireBo =new QuestionnaireBo();
		questionnaireBo.setUserId(userInfo.getId());
		questionnaireBo.setCognizance(0);
		questionnaireBo.setEvaluation(0);
		questionnaireBo.setExamen(0);
		questionnaireBo.setScore(0);
		questionnaireService.addQuestionnaire(questionnaireBo);
		String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success("")) ;
		super.safeJsonPrint(response, result);
	}


	/**
	 * 根据手机号重置密码
	 */
	@RequestMapping(value = "/password")
	public void updatePassword(HttpServletResponse response,String mobile,Integer type, String newPassword, String confirmPassword,
								 String authCode){
		//参数校验
		if(StringUtils.isEmpty(mobile) || StringUtils.isEmpty(newPassword) || StringUtils.isEmpty(confirmPassword)
				|| type == null	|| StringUtils.isEmpty(authCode)){
			String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001" , "参数异常")) ;
			super.safeJsonPrint(response , result);
			return ;
		}

		//判断新密码和确认密码是否一致
		if(!newPassword.equals(confirmPassword)){
			String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001" , "两次密码输入不正确")) ;
			super.safeJsonPrint(response , result);
			return ;
		}

		//查找用户
		UserBO userInfo = loginService.queryUserInfoByMobile(mobile);
		if(userInfo == null){
			String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004" , "用户不存在")) ;
			super.safeJsonPrint(response , result);
			return ;
		}

		//获取缓存中验证码
		String mobileAuthCode = RedissonHandler.getInstance().get(mobile + "_reset");
		if(type == 2){
			mobileAuthCode = RedissonHandler.getInstance().get(mobile + "_update");
		}

		// 判断验证码输入是否正确
		if(StringUtils.isEmpty(mobileAuthCode) || !mobileAuthCode.equals(authCode)){
			String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001" , "验证码有误")) ;
			super.safeJsonPrint(response , result);
			return ;
		}

		// 修改客户密码
		userInfo.setPhoneNumber(mobile);
		userInfo.setPassword(MD5Util.digest(newPassword));
		loginService.updatePasswordByMobileCode(userInfo);

		HashMap<String,Object> map = new HashMap<String, Object>();
		map.put("title","找回登录密码");
		map.put("message", "恭喜！您已成功找回密码！请妥善保管。");
		map.put("userId", userInfo.getId());
		systemMessageService.addMessage(map);

		String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success("")) ;
		super.safeJsonPrint(response, result);
	}

	/**
	 * 修改密码时，验证验证码是否正确
	 * @param mobile  手机号码
	 * @param type    发送类型  2：个人信息重置密码
	 */
	@RequestMapping("/verificationCode")
	public void verificationCode(HttpServletResponse response,String mobile, String authCode, Integer type){
		if(StringUtils.isEmpty(mobile) || type == null || StringUtils.isEmpty(authCode)){
			String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001" , "参数不正确")) ;
			super.safeJsonPrint(response, result);
			return ;
		}
		// 查询当前手机号码是否存在
		UserBO userInfo = loginService.queryUserInfoByMobile(mobile);
		if(type == 2){  // 个人信息重置密码
			if(userInfo == null){
				String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004" , "没有找到该用户")) ;
				super.safeJsonPrint(response, result);
				return ;
			}
		}
		//从缓存中获取验证码
		String mobileAuthCode = "";
		if(type == 2){
			mobileAuthCode = RedissonHandler.getInstance().get(mobile + "_update");
		}
		//判断验证码是否和缓存中的验证码一致
		if(StringUtils.isEmpty(mobileAuthCode) || !mobileAuthCode.equals(authCode)){
			String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001" , "验证码不正确")) ;
			super.safeJsonPrint(response, result);
			return ;
		}

		String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success("")) ;
		super.safeJsonPrint(response, result);
	}



	/**
	 * 修改用户信息
	 * param userDO
	 */
	@RequestMapping("/update")
	public void updateUserInfo(HttpServletRequest request, HttpServletResponse response,UserDO userDO){
		UserBO userInfo = getLoginUser(request);
		if(userInfo == null){
			String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004" , "用户没有登录")) ;
			super.safeJsonPrint(response, result);
			return ;
		}

		userDO.setId(userInfo.getId());
		int count = loginService.updateUserInfo(userDO);
		String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(userDO)) ;
		super.safeJsonPrint(response, result);
	}

	/**
	 * 修改用户信息
	 * @param mobile  手机号码
	 * @param type    发送类型  0：注册  1：登录  2：个人信息重置密码 4:预约私募产品
	 */
	@RequestMapping("/sendCode")
	public void sendMessageCode(HttpServletResponse response,String mobile, Integer type){
		if(StringUtils.isEmpty(mobile) || type == null){
			String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001" , "参数不正确")) ;
			super.safeJsonPrint(response, result);
			return ;
		}
		// 查询当前手机号码是否存在
		UserBO userInfo = loginService.queryUserInfoByMobile(mobile);
		if(type == 0){   // 如果是注册，账号不存在
			if(userInfo != null){
				String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000002" , "该用户已注册")) ;
				super.safeJsonPrint(response, result);
				return ;
			}
		}else if(type == 1){  // 登录
//			if(userInfo == null){
//				String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004" , "没有找到该用户")) ;
//				super.safeJsonPrint(response, result);
//				return ;
//			}
		}else if(type == 2){  // 个人信息重置密码
			if(userInfo == null){
				String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004" , "没有找到该用户")) ;
				super.safeJsonPrint(response, result);
				return ;
			}
		}
		String number = RandomUtils.getRandomNumber(6);
		SendMessageUtil.sendSignInCodeMessage(mobile, number);
		MessageRecordBO message = new MessageRecordBO();
		String messageType = "";
		if(type == 0){     // 0：注册发送验证码
			messageType = "register";
			message.setType("注册验证码");
		}else if(type == 1){   // 1：登陆页面忘记密码
			messageType = "login";
			message.setType("登录");
		}else if(type == 2){    //  2：个人信息重置密码
			messageType = "update";
			message.setType("重置密码验证码");
		}else if(type == 3){    //  2：个人信息重置密码
			messageType = "updatePay";
			message.setType("重置支付密码验证码");
		}else if(type == 4){    //  2：个人信息重置密码
			messageType = "subscribe";
			message.setType("预约私募产品");
		}
		else if(type == 5){    //  2：个人信息重置密码
			messageType = "bing";
			message.setType("绑定理财师");
		}
		message.setContent("您好，您的验证码为" + number);
		message.setMobile(mobile);
		message.setSendTime(new Date());
//		message.setStatus(0);
		// 添加发送短信记录信息
		Integer messageId = messageRecordService.addMessageRecord(message);

		message.setMessageId(messageId);

		// 保存验证码信息到Redis
		RedissonHandler.getInstance().set(mobile + "_" + messageType, number, null);

		String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success("")) ;
		super.safeJsonPrint(response, result);
	}

	/**
	 * 根据手机号查找用户信息
	 * param mobile
	 */
	@RequestMapping("/detail")
	public void getUserInfoBy(HttpServletResponse response,String mobile){
		if(StringUtils.isEmpty(mobile)){
			String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001" , "参数不正确")) ;
			super.safeJsonPrint(response, result);
			return ;
		}

		UserBO userInfo = loginService.queryUserInfoByMobile(mobile);
		if (userInfo == null){
			String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004" , "没有找到该用户")) ;
			super.safeJsonPrint(response, result);
			return ;
		}

		String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(userInfo)) ;
		super.safeJsonPrint(response, result);
	}


	@RequestMapping("/authImage ")
	public void authImage(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setHeader("Pragma", "No-cache");
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0);
		response.setContentType("image/jpeg");

		//生成随机字串
		String verifyCode = VerifyCodeUtils.generateVerifyCode(4);

		/* 1. 找到对应的账户记录 */
		UserBO userBO = super.getLoginUser(request) ;

		/* 2. 验证账户状态 */
		if (userBO == null ) {
			String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007" , "用户未登录！")) ;
			super.safeJsonPrint(response , result);
			return ;
		}


		String key = super.createKey("verifyCode",userBO.getId()+"");
		//fangdao
		RedissonHandler.getInstance().set(key,verifyCode,60 * 1000l);

		//生成图片
		int w = 200, h = 80;
		VerifyCodeUtils.outputImage(w, h, response.getOutputStream(), verifyCode);

	}


	/**
	 * 设置密码密码时，验证验证码是否正确
	 * @param mobile  手机号码
	 * @param type    发送类型  2：个人信息重置密码,3:设置支付密码
	 */
	@RequestMapping("/passwordAuthentification")
	public void passwordAuthentification(HttpServletResponse response,HttpServletRequest request,String mobile, String authCode, Integer type,String verCode,String password,String confirmPassword){

		/* 1. 找到对应的账户记录 */
		UserBO userBO = super.getLoginUser(request) ;

		/* 2. 验证账户状态 */
		if (userBO == null) {
			String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007" , "用户未登录！")) ;
			super.safeJsonPrint(response , result);
			return ;
		}
		if (!userBO.getPhoneNumber().equals(mobile)){
			String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001" , "请输入本人手机号码")) ;
			super.safeJsonPrint(response , result);
			return ;
		}

		if(StringUtils.isEmpty(mobile) || type == null || StringUtils.isEmpty(authCode) ||StringUtils.isEmpty(verCode) ){
			String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001" , "参数不正确")) ;
			super.safeJsonPrint(response, result);
			return ;
		}
		String key = super.createKey("verifyCode",userBO.getId()+"");
		//fangdao
		String code = RedissonHandler.getInstance().get(key);

		if(StringUtils.isEmpty(code)){
			String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001" , "没有获取到缓存中的图形验证码")) ;
			super.safeJsonPrint(response, result);
			return ;
		}
		verCode = verCode.toLowerCase();
		code = code .toLowerCase();
		if(!verCode.equals(code)){
			String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001" , "图形验证码不正确")) ;
			super.safeJsonPrint(response, result);
			return ;
		}


		// 查询当前手机号码是否存在
		UserBO userInfo = loginService.queryUserInfoByMobile(mobile);
		if(userInfo == null){
			String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004" , "没有找到该用户")) ;
			super.safeJsonPrint(response, result);
			return ;
		}

		if(type == 3){  // 个人信息重置密码
			AccountBo accountBo = accountService.queryAccountByUserId(userInfo.getId());
			if (accountBo == null){
				AccountBo bo = new AccountBo();
				bo.setIntegral(0);
				bo.setUserId(userInfo.getId());
				bo.setPaymentPassword("");
				accountService.addAccount(bo);
			}


		}

		//从缓存中获取验证码
		String mobileAuthCode = "";
		if(type == 2){
			mobileAuthCode = RedissonHandler.getInstance().get(mobile + "_update");
		}
		if(type == 3){
			mobileAuthCode = RedissonHandler.getInstance().get(mobile + "_updatePay");
		}
		//判断验证码是否和缓存中的验证码一致
		if(StringUtils.isEmpty(mobileAuthCode) || !mobileAuthCode.equals(authCode)){
			String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001" , "短信验证码不正确")) ;
			super.safeJsonPrint(response, result);
			return ;
		}

		String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success("")) ;
		super.safeJsonPrint(response, result);
	}

	/**
	 * 设置密码密码
	 * @param password  mima
	 * @param type    发送类型  2：个人信息重置密码,3:设置支付密码
	 */
	@RequestMapping("/setPwd")
	public void setPwd(HttpServletResponse response,HttpServletRequest request , String password, String confirmPassword, Integer type){
		if(StringUtils.isEmpty(password) || type == null || StringUtils.isEmpty(confirmPassword) ){
			String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001", "参数不正确")) ;
			super.safeJsonPrint(response, result);
			return ;
		}
		// 查询当前手机号码是否存在
		UserBO userInfo = super.getLoginUser(request);
		if(userInfo == null){
			String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007" , "用户未登录！")) ;
			super.safeJsonPrint(response, result);
			return ;
		}

		if(type == 2){  // 个人信息重置密码
			userInfo.setPassword(MD5Util.digest(password));
			loginService.updatePasswordByMobileCode(userInfo);

			HashMap<String,Object> map = new HashMap<String, Object>();
			map.put("title","修改登录密码");
			map.put("message","恭喜！您已成功修改密码！建议定期更换，可提高账户的安全性。");
			map.put("userId", userInfo.getId());
			systemMessageService.addMessage(map);

		}

		if(type == 3){  // 个人信息重置密码

			AccountBo accountBo = accountService.queryAccountByUserId(userInfo.getId());
			if (accountBo == null){
				String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007" , "没有找到用户账户！")) ;
				super.safeJsonPrint(response, result);
				return ;

			}
			AccountBo bo = new AccountBo();
			bo.setUserId(userInfo.getId());
			bo.setPaymentPassword(MD5Util.digest(password));
			accountService.updatePassWord(bo);

			HashMap<String,Object> map = new HashMap<String, Object>();
			map.put("title","修改支付密码");
			map.put("message","恭喜！您已成功修改密码！建议定期更换，可提高账户的安全性。");
			map.put("userId",userInfo.getId());
			systemMessageService.addMessage(map);
		}

		String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success("")) ;
		super.safeJsonPrint(response, result);
	}
}
