package com.szq.store.web.controller.manage;

import com.szq.store.entity.bo.UserBO;
import com.szq.store.entity.dto.ResultDTOBuilder;
import com.szq.store.query.QueryInfo;
import com.szq.store.service.SystemMessageService;
import com.szq.store.util.JsonUtils;
import com.szq.store.web.controller.base.BaseCotroller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

/**
 * @author Shibo Sun
 *         主机controller
 */
@Controller
@RequestMapping("/message")
public class SystemMessageController extends BaseCotroller {

    @Resource
    private SystemMessageService systemMessageService;

    @RequestMapping("/list")
    public void list (HttpServletResponse response,HttpServletRequest request,Integer pageNo, Integer pageSize){

        UserBO userBO = super.getLoginUser(request);
        /* 2. 验证账户状态 */
        if (userBO == null ) {
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007", "用户未登录！")) ;
            super.safeJsonPrint(response , result);
            return ;
        }

        QueryInfo queryInfo = getQueryInfo(pageNo, pageSize);
        Map<String, Object> m = new HashMap<String, Object>();
        if(queryInfo != null){
            m.put("pageOffset", queryInfo.getPageOffset());
            m.put("pageSize", queryInfo.getPageSize());
        }
        m.put("userId",userBO.getId());

        Map<String,Object> map = new HashMap<String, Object>();
        map.put("data",systemMessageService.getMessageList(m));
        map.put("count",systemMessageService.getMessageCount(userBO.getId()));
        map.put("uncount",systemMessageService.getUnReadCount(userBO.getId()));
        map.put("time",System.currentTimeMillis());
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(map));
        safeTextPrint(response, json);

    }


    @RequestMapping("/setMessageStatus")
    public void setMessageStatus (HttpServletResponse response,HttpServletRequest request){

        UserBO userBO = super.getLoginUser(request);
        /* 2. 验证账户状态 */
        if (userBO == null ) {
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007", "用户未登录！")) ;
            super.safeJsonPrint(response , result);
            return ;
        }

        systemMessageService.setMessageStatus(userBO.getId());
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);


    }

}
