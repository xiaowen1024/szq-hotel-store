package com.szq.store.service;

import com.szq.store.dao.UserDAO;
import com.szq.store.entity.UserDO;
import com.szq.store.entity.bo.UserBO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.UUID;

/**
 * 登录
 * @author zhaojiafu
 *
 * 2016年1月5日 下午7:16:14
 */
@Service("loginService")
@Transactional
public class LoginService {
	@Resource
    private UserDAO userDAO;

	public UserBO loginByIdNoPwd (int userId) {
		UserBO login = userDAO.loginById(userId);
		login.setUuid(UUID.randomUUID().toString());
		return login ;
	}

	public int selectCountByMobileCode(String mobile) {
		if("".equals(mobile) || mobile == null){
			return  -1;
		}
		int count = userDAO.selectCountByMobileCode(mobile);
		return count ;
	}

	public int register(UserBO userInfo) {
		if (userInfo == null ) {
			return -1 ;
		}
		int count = userDAO.register(userInfo);
		return count ;
	}

	public UserBO queryUserInfoByMobile(String mobile) {
		if("".equals(mobile) || mobile == null){
			return null;
		}
		return userDAO.queryUserInfoByMobile(mobile);
	}

	public void updatePasswordByMobileCode(UserBO userInfo) {
		if (userInfo == null ) {
			return;
		}
		userDAO.updatePasswordByMobileCode(userInfo);
	}

	public int updateUserInfo(UserDO userDO) {
		if (userDO == null ) {
			return -1;
		}
		return userDAO.updateUserInfo(userDO);
	}
	
	public void createUserByPhone(UserBO userBO) {
		  userDAO.createUserByPhone(userBO);
	}

	/*@Override
	public UserBO isLogin(String loginId) {
		return (UserBO) RedisUtil.get(loginId) ;
	}*/
	public void  updateUserimage(UserBO userBO){
		userDAO.updateUserimage(userBO);
	}
	public  UserBO  selectuserInfo(Integer id){
		return  userDAO.selectuserInfo(id);
	}
}
