package com.szq.store.web.controller.manage;


import com.szq.store.common.constants.SysConstants;
import com.szq.store.entity.bo.AdminBo;
import com.szq.store.entity.dto.ResultDTOBuilder;
import com.szq.store.pop.Constant;
import com.szq.store.service.AdminService;
import com.szq.store.util.DateUtils;
import com.szq.store.util.JsonUtils;
import com.szq.store.util.MD5Util;
import com.szq.store.util.StringUtils;
import com.szq.store.web.controller.base.BaseCotroller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by yxw on 2018/7/19.
 */
@Controller
@RequestMapping("/AdminController")
public class AdminController  extends BaseCotroller {
    @Resource
    private AdminService adminService;

    @RequestMapping("/login")
    public void login(HttpServletResponse response, String account, String password){
        if(StringUtils.isEmpty(account) || StringUtils.isEmpty(password)){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000006"));
            safeTextPrint(response, json);
            return ;
        }
        AdminBo adminBo = adminService.queryUserInfoByAccount(account);
        if(adminBo == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000007"));
            safeTextPrint(response, json);
            return ;
        }
        System.out.println(MD5Util.digest(password));
        if(!MD5Util.digest(password).equals(adminBo.getPassword())){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000008"));
            safeTextPrint(response, json);
            return ;
        }
        Object lastURL = super.getSession().getAttribute(SysConstants.CURRENT_LOGIN_LAST_URL);
        adminBo.setLastURL((String) lastURL);
        // 登陆客户信息放入Redis缓存
        super.setLoginClientInfo(adminBo);

        super.setCookie(response, SysConstants.CURRENT_LOGIN_CLIENT_ID,adminBo.getUuid(),SysConstants.SEVEN_DAY_TIME);
        safeTextPrint(response, JsonUtils.encapsulationJSON(Constant.INTERFACE_SUCC, "登录成功", JsonUtils.
                getJsonString4JavaPOJO(adminBo, DateUtils.LONG_DATE_PATTERN)).toString());
        return ;
    }

}
