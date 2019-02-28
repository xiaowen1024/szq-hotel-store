package com.szq.store.dao.mallDao;


import com.szq.store.entity.mallBo.AccountBo;

/**
 * Created by yxw on 2018/8/2.
 */
public interface AccountDao {
    public AccountBo queryAccountByUserId(Integer userId);//通过账户Id查询个人信息
    public void updatePassWord(AccountBo accountBo);//修改支付密码
    public void updateIntegral(AccountBo accountBo);//修改积分
    public void updateAddIntegral(AccountBo accountBo);//管理员增加积分
    public void addAccount(AccountBo accountBo);//添加
    public  void deleteAccount(Integer id);
}
