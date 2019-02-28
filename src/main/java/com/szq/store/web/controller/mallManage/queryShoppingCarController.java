package com.szq.store.web.controller.mallManage;

import com.szq.store.entity.bo.UserBO;
import com.szq.store.entity.dto.ResultDTOBuilder;
import com.szq.store.entity.mallBo.OrderInfo;
import com.szq.store.entity.mallBo.queryOrderinfoBo;
import com.szq.store.pop.SystemConfig;
import com.szq.store.service.mallService.OrderService;
import com.szq.store.util.JsonUtils;
import com.szq.store.web.controller.base.BaseCotroller;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by yxw on 2018/9/7.
 */
@Controller
@RequestMapping("/QueryGoodsList")
public class queryShoppingCarController  extends BaseCotroller {
    @Resource
    private OrderService orderService;
    @RequestMapping("/info")
    public void info(HttpServletResponse response,HttpServletRequest request) {
        List<queryOrderinfoBo> queryOrderinfoBos = new ArrayList<queryOrderinfoBo>();
        UserBO userBO = super.getLoginUser(request);
    /* 2. 验证账户状态 */
        if (userBO == null) {
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007", "用户未登录！"));
            super.safeJsonPrint(response, result);
            return;
        }
        Integer userId = userBO.getId();
        List<Long> ids = orderService.queryIdList(userId);
        for (Long id: ids) {
            OrderInfo orderBo = new OrderInfo();
            orderBo.setOrderId(id);
            orderBo.setUserId(userId);
            List<OrderInfo> orderBos = orderService.queryOrderList1(orderBo);
            queryOrderinfoBo queryOrderinfo = new queryOrderinfoBo();
            queryOrderinfo.setId(id);
            queryOrderinfo.setOrderBos(orderBos);
            queryOrderinfoBos.add(queryOrderinfo);
        }

        JSONObject result = new JSONObject();
        result.put("queryOrderinfoBos", queryOrderinfoBos);
        result.put("Url","https://" + SystemConfig.getString("image_bucketName")+".oss-cn-beijing.aliyuncs.com/");
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(result));
        safeTextPrint(response, json);
    }
    @RequestMapping("/NoPay")
    public void deleteInfoList(HttpServletResponse response,HttpServletRequest request) {
        List<queryOrderinfoBo> queryOrderinfoBos = new ArrayList<queryOrderinfoBo>();
        UserBO userBO = super.getLoginUser(request);
    /* 2. 验证账户状态 */
        if (userBO == null) {
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007", "用户未登录！"));
            super.safeJsonPrint(response, result);
            return;
        }
        Integer userId = userBO.getId();
        List<Long> ids = orderService.queryIdList(userId);
        for (Long id : ids) {
            OrderInfo orderBo = new OrderInfo();
            orderBo.setOrderId(id);
            orderBo.setUserId(userId);
            orderBo.setState(1);
            List<OrderInfo> orderBos = orderService.queryOrderList2(orderBo);
            queryOrderinfoBo queryOrderinfo = new queryOrderinfoBo();
            queryOrderinfo.setId(id);
            queryOrderinfo.setOrderBos(orderBos);
            queryOrderinfoBos.add(queryOrderinfo);
        }

        JSONObject result = new JSONObject();
        result.put("queryOrderinfoBos", queryOrderinfoBos);
        result.put("Url","https://" + SystemConfig.getString("image_bucketName")+".oss-cn-beijing.aliyuncs.com/");
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(result));
        safeTextPrint(response, json);
    }
    @RequestMapping("/Pay")
    public void pay(HttpServletResponse response,HttpServletRequest request) {
        List<queryOrderinfoBo> queryOrderinfoBos = new ArrayList<queryOrderinfoBo>();
        UserBO userBO = super.getLoginUser(request);
    /* 2. 验证账户状态 */
        if (userBO == null) {
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007", "用户未登录！"));
            super.safeJsonPrint(response, result);
            return;
        }
        Integer userId = userBO.getId();
        List<Long> ids = orderService.queryIdList(userId);
        for (Long id : ids) {
            OrderInfo orderBo = new OrderInfo();
            orderBo.setOrderId(id);
            orderBo.setUserId(userId);
            orderBo.setState(2);
            List<OrderInfo> orderBos = orderService.queryOrderList3(orderBo);
            queryOrderinfoBo queryOrderinfo = new queryOrderinfoBo();
            queryOrderinfo.setId(id);
            queryOrderinfo.setOrderBos(orderBos);
            queryOrderinfoBos.add(queryOrderinfo);
        }

        JSONObject result = new JSONObject();
        result.put("queryOrderinfoBos", queryOrderinfoBos);
        result.put("Url","https://" + SystemConfig.getString("image_bucketName")+".oss-cn-beijing.aliyuncs.com/");
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(result));
        safeTextPrint(response, json);
    }
    @RequestMapping("/query")
    public void query(HttpServletResponse response,HttpServletRequest request,String query) {
        List<queryOrderinfoBo> queryOrderinfoBos = new ArrayList<queryOrderinfoBo>();
            UserBO userBO = super.getLoginUser(request);
    /* 2. 验证账户状态 */
            if (userBO == null) {
                String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007", "用户未登录！"));
                super.safeJsonPrint(response, result);
                return;
            }
        Integer userId = userBO.getId();
        List<Long> ids = orderService.queryIdList(userId);
        for (Long id : ids) {
            OrderInfo orderBo = new OrderInfo();
            orderBo.setOrderId(id);
            orderBo.setUserId(userId);
            orderBo.setQuery(query);
            List<OrderInfo> orderBos = orderService.queryOrderList4(orderBo);
            queryOrderinfoBo queryOrderinfo = new queryOrderinfoBo();
            queryOrderinfo.setId(id);
            queryOrderinfo.setOrderBos(orderBos);
            queryOrderinfoBos.add(queryOrderinfo);
        }
        JSONObject result = new JSONObject();
        result.put("queryOrderinfoBos", queryOrderinfoBos);
        result.put("Url", "https://" + SystemConfig.getString("image_bucketName") + ".oss-cn-beijing.aliyuncs.com/");
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(result));
        safeTextPrint(response, json);
    }
}
