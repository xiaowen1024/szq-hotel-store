package com.szq.store.web.controller.mallManage;

import com.szq.store.entity.bo.UserBO;
import com.szq.store.entity.dto.ResultDTOBuilder;
import com.szq.store.entity.mallBo.AccountBo;
import com.szq.store.entity.mallBo.OrderBo;
import com.szq.store.entity.mallBo.SubmitResponse;
import com.szq.store.pop.SystemConfig;
import com.szq.store.service.mallService.AccountService;
import com.szq.store.service.mallService.OrderService;
import com.szq.store.util.DateUtils;
import com.szq.store.util.JsonUtils;
import com.szq.store.web.controller.base.BaseCotroller;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by yxw on 2018/9/7.
 */
@Controller
@RequestMapping("/sbmit")
public class sbmitController extends BaseCotroller {
    @Resource
    private AccountService accountService;
    @Resource
    private OrderService orderService;
    @RequestMapping("/page")
    public ModelAndView queryCoreTeamList(){
        ModelAndView view = new ModelAndView();
        view.setViewName("/mall/submit_order");
        return view;
    }
    @RequestMapping("/submitOrder")
    public void deleteMallImage(HttpServletResponse response, HttpServletRequest request,String jsons) {
        if (jsons==null) {
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }
        List<SubmitResponse> goods = JsonUtils.getList4Json(jsons, SubmitResponse.class);
        UserBO userBO = super.getLoginUser(request);

        //* 2. 验证账户状态 *//*
        if (userBO == null) {
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007", "用户未登录！"));
            super.safeJsonPrint(response, result);
            return;
        }
        Integer status=1;
        Date time = new Date();
        Long orderId =Long.parseLong(DateUtils.formatDate(DateUtils.LONG_DATE_PATTERN_PLAIN, new Date()));
        AccountBo news = accountService.queryAccountByUserId(userBO.getId());
        List<OrderBo> orderBos =new ArrayList<OrderBo>();
        for (SubmitResponse good:goods) {
            if (news.getIntegral() < good.getCount()) {
                String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000010","余额不足"));
                safeTextPrint(response, json);
                return;
            }else {
                OrderBo s=new OrderBo();
                s.setUserId(userBO.getId());
                s.setSku(good.getSku());
                s.setAddressId(good.getAddressId());
                s.setState(status);
                s.setNum(good.getNumber());
                s.setPrice(good.getPrice());
                s.setCreateTime(time);
                s.setOrderId(orderId);
                s.setRemake(good.getRemake());
                s.setCount(good.getCount());
                orderBos.add(s);
            }
        }
        orderService.addOrder(orderBos);
        JSONObject result = new JSONObject();
        result.put("orderId", orderId);
        result.put("integral",news.getIntegral());
        result.put("Url","https://" + SystemConfig.getString("image_bucketName")+".oss-cn-beijing.aliyuncs.com/");
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(result));
        safeTextPrint(response, json);
    }
}
