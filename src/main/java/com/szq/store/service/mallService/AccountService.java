package com.szq.store.service.mallService;

import com.szq.store.dao.mallDao.AccountDao;
import com.szq.store.entity.mallBo.AccountBo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * Created by yxw on 2018/8/2.
 */
@Service("AccountService")
@Transactional
public class AccountService {
    @Resource
    private AccountDao accountDao;
    //通过账户Id查询个人信息
    public AccountBo queryAccountByUserId(Integer userId){
        return  accountDao.queryAccountByUserId(userId);
    }
    //修改支付密码
    public void updatePassWord(AccountBo accountBo){
        accountDao.updatePassWord(accountBo);
    }
    //修改积分
    public void updateIntegral(AccountBo accountBo){
        accountDao.updateIntegral(accountBo);
    }
    //管理员增加积分
    public void updateAddIntegral(AccountBo accountBo){
        accountDao.updateAddIntegral(accountBo);
    }
    //添加
    public void addAccount(AccountBo accountBo){
        accountDao.addAccount(accountBo);
    }

    public  void deleteAccount(Integer id){
        accountDao.deleteAccount(id);
    }
}
