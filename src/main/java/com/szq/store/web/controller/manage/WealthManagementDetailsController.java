package com.szq.store.web.controller.manage;

import com.szq.store.entity.bo.WealthManagementDetailsBO;
import com.szq.store.entity.dto.ResultDTOBuilder;
import com.szq.store.pop.SystemConfig;
import com.szq.store.service.WealthManagementDetailsService;
import com.szq.store.util.JsonUtils;
import com.szq.store.web.controller.base.BaseCotroller;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by shishiming on 2018/7/23.
 */
@Controller
@RequestMapping("/wealthManagement")
public class WealthManagementDetailsController extends BaseCotroller {

    @Resource
    private WealthManagementDetailsService wealthManagementDetailsService;


    @RequestMapping("/page")
    public ModelAndView page(){
        ModelAndView view = new ModelAndView();
        view.setViewName("/wealth/wealth_management");
        view.addObject("Url", "https://" + SystemConfig.getString("image_bucketName") + ".oss-cn-beijing.aliyuncs.com/");
        return view;
    }



    /**
     * 根据修改财富管理
     * @param wealthManagementDetailsBO
     */
    @RequestMapping("/update")
    public void updateWealthManagementbyId(HttpServletResponse response, WealthManagementDetailsBO wealthManagementDetailsBO){
        if( wealthManagementDetailsBO.getId() == null || wealthManagementDetailsBO.getId() == 0){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001","参数异常！"));
            safeTextPrint(response, json);
            return;
        }

        WealthManagementDetailsBO oldBO = wealthManagementDetailsService.queryWealthManagementDetails();
        if (oldBO == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004","没有找到该条记录！"));
            safeTextPrint(response, json);
            return;
        }

        wealthManagementDetailsService.updateWealthManagementbyId(wealthManagementDetailsBO);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);
    }


    /**
     * 查询财富管理详情
     */
    @RequestMapping("/detail")
    public void queryNewsInformationById(HttpServletResponse response){

        WealthManagementDetailsBO wealth = wealthManagementDetailsService.queryWealthManagementDetails();
        if (wealth == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
            return;
        }

        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(wealth));
        safeTextPrint(response, json);

    }
    @RequestMapping("/productList")
    public  void  query1(HttpServletResponse response){
        List<WealthManagementDetailsBO> wealth = wealthManagementDetailsService.queryWealthManagementwapList();
        JSONObject result = new JSONObject();
        result.put("productList", wealth);
        result.put("Url","https://" + SystemConfig.getString("image_bucketName")+".oss-cn-beijing.aliyuncs.com/");
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(result));
        safeTextPrint(response, json);
    }
    @RequestMapping("/product")
    public  void  query2(HttpServletResponse response){
        WealthManagementDetailsBO wealth = wealthManagementDetailsService.queryWealthManagementwap();
        JSONObject result = new JSONObject();
        result.put("product", wealth);
        result.put("Url","https://" + SystemConfig.getString("image_bucketName")+".oss-cn-beijing.aliyuncs.com/");
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(result));
        safeTextPrint(response, json);
    }
}