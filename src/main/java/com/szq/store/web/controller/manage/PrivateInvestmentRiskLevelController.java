package com.szq.store.web.controller.manage;

import com.szq.store.entity.bo.PrivateInvestmentRiskLevelBO;
import com.szq.store.entity.dto.ResultDTOBuilder;
import com.szq.store.service.PrivateInvestmentRiskLevelService;
import com.szq.store.util.JsonUtils;
import com.szq.store.util.StringUtils;
import com.szq.store.web.controller.base.BaseCotroller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by shishiming on 2018/7/18.
 */
@Controller
@RequestMapping("/riskLevel")
public class PrivateInvestmentRiskLevelController extends BaseCotroller {

    @Resource
    private PrivateInvestmentRiskLevelService privateInvestmentRiskLevelService;


    /**
     * 查询列表
     */
    @RequestMapping("/list")
    public void queryPrivateInvestmentRiskLevelList(HttpServletResponse response){

        Map<String, Object> resultMap = new HashMap<String, Object>();
        resultMap.put("data",privateInvestmentRiskLevelService.queryPrivateInvestmentRiskLevelList());
        resultMap.put("count",privateInvestmentRiskLevelService.queryPrivateInvestmentRiskLevelCount());
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(resultMap));

        safeTextPrint(response, json);
    }



    /**
     * 根据id查询详情
     * @param id
     */
    @RequestMapping("/detail")
    public void queryPrivateInvestmentRiskLevelById(HttpServletResponse response,Integer id){
//
        if (id == null){
            return;
        }

        PrivateInvestmentRiskLevelBO bo = privateInvestmentRiskLevelService.queryPrivateInvestmentRiskLevelById(id);
        if (bo == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
            return;
        }

        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(bo));
        safeTextPrint(response, json);

    }

    /**
     * 根据id删除
     * @param id
     */
    @RequestMapping("/delete")
    public void deletePrivateInvestmentRiskLevel(HttpServletResponse response, Integer id){
        if (id == null){
            return;
        }

        PrivateInvestmentRiskLevelBO bo = privateInvestmentRiskLevelService.queryPrivateInvestmentRiskLevelById(id);
        if (bo == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
            return;
        }

        privateInvestmentRiskLevelService.deletePrivateInvestmentRiskLevel(id);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);

    }


    /**
     * 新增
     * @param name
     */
    @RequestMapping("/add")
    public void addPrivateInvestmentRiskLevel(HttpServletResponse response, String name){
        if(name == null || StringUtils.isEmpty(name)){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }

        privateInvestmentRiskLevelService.addPrivateInvestmentRiskLevel(name);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);

    }


    /**
     * 修改
     * @param bo
     */
    @RequestMapping("/update")
    public void updatePrivateInvestmentRiskLevel(HttpServletResponse response, PrivateInvestmentRiskLevelBO bo){
        PrivateInvestmentRiskLevelBO newBo = privateInvestmentRiskLevelService.queryPrivateInvestmentRiskLevelById(bo.getId());

        if(bo == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }
        if(StringUtils.isEmpty(bo.getName()) || bo.getId() == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }
        if(newBo == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
            return;
        }

        newBo.setName(bo.getName());

        privateInvestmentRiskLevelService.updatePrivateInvestmentRiskLevelBO(newBo);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);
    }
}