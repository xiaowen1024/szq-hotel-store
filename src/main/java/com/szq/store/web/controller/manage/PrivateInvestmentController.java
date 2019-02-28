package com.szq.store.web.controller.manage;

import com.szq.store.entity.bo.PrivateInvestmentBO;
import com.szq.store.entity.dto.ResultDTOBuilder;
import com.szq.store.pop.SystemConfig;
import com.szq.store.query.QueryInfo;
import com.szq.store.service.PrivateInvestmentService;
import com.szq.store.util.JsonUtils;
import com.szq.store.web.controller.base.BaseCotroller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by shishiming on 2018/7/18.
 */
@Controller
@RequestMapping("/privateInvestment")
public class PrivateInvestmentController extends BaseCotroller {

    @Resource
    private PrivateInvestmentService privateInvestmentService;


    @RequestMapping("/page")
    public ModelAndView page(){
        ModelAndView view = new ModelAndView();
        view.setViewName("/privateInvestment/private_investment_list");
        return view;
    }


    @RequestMapping("/details")
    public ModelAndView details(){
        ModelAndView view = new ModelAndView();
        view.setViewName("/privateInvestment/private_investment_details");
        return view;
    }

    /**
     * 查询列表
     */
    @RequestMapping("/list")
    public void queryPrivateInvestmentList(HttpServletResponse response,Integer pageNo, Integer pageSize,Integer investmentPoinId,
       Integer productTermId,Integer riskLevelId,Integer incomeTypeId,String sortType){

        QueryInfo queryInfo = getQueryInfo(pageNo, pageSize);

        Map<String, Object> map = new HashMap<String, Object>();
        if(queryInfo != null){
            map.put("pageOffset", queryInfo.getPageOffset());
            map.put("pageSize", queryInfo.getPageSize());
        }

        map.put("investmentPoinId",investmentPoinId);
        map.put("productTermId",productTermId);
        map.put("riskLevelId",riskLevelId);
        map.put("incomeTypeId",incomeTypeId);
        map.put("sortType",sortType);

        Map<String, Object> resultMap = new HashMap<String, Object>();
        resultMap.put("data",privateInvestmentService.queryPrivateInvestmentList(map));
        resultMap.put("count",privateInvestmentService.queryPrivateInvestmentCount(map));
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(resultMap));

        safeTextPrint(response, json);
    }



    /**
     * 根据id查询详情
     * @param id
     */
    @RequestMapping("/detail")
    public void queryPrivateInvestmentById(HttpServletResponse response,Integer id){
//
        if (id == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }

        PrivateInvestmentBO bo = privateInvestmentService.queryPrivateInvestmentById(id);
        if (bo == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
            return;
        }

        Map<String,Object> map = new HashMap<String, Object>();
        map.put("Url", "https://" + SystemConfig.getString("image_bucketName") + ".oss-cn-beijing.aliyuncs.com/");
        map.put("data",bo);

        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(map));
        safeTextPrint(response, json);

    }


    @RequestMapping("/setRecommendTime")
    public void setRecommendTime(HttpServletResponse response, Integer id){

        if(id == null || id == 0){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }

        privateInvestmentService.setRecommendTime(id);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);
    }

    @RequestMapping("/recommendList")
    public void queryPrivateInvestmentListByRecommendTime(HttpServletResponse response){

        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(privateInvestmentService.queryPrivateInvestmentListByRecommendTime()));

        safeTextPrint(response, json);
    }

}