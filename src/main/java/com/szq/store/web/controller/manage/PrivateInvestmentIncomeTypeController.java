package com.szq.store.web.controller.manage;

import com.szq.store.entity.bo.PrivateInvestmentIncomeTypeBO;
import com.szq.store.entity.dto.ResultDTOBuilder;
import com.szq.store.service.PrivateInvestmentIncomeTypeService;
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
@RequestMapping("/incomeType")
public class PrivateInvestmentIncomeTypeController extends BaseCotroller {

    @Resource
    private PrivateInvestmentIncomeTypeService privateInvestmentIncomeTypeService;


    /**
     * 查询列表
     */
    @RequestMapping("/list")
    public void queryPrivateInvestmentIncomeTypeList(HttpServletResponse response){

        Map<String, Object> resultMap = new HashMap<String, Object>();
        resultMap.put("data",privateInvestmentIncomeTypeService.queryPrivateInvestmentIncomeTypeList());
        resultMap.put("count",privateInvestmentIncomeTypeService.queryPrivateInvestmentIncomeTypeCount());
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(resultMap));

        safeTextPrint(response, json);
    }



    /**
     * 根据id查询详情
     * @param id
     */
    @RequestMapping("/detail")
    public void queryPrivateInvestmentIncomeTypeById(HttpServletResponse response,Integer id){
//
        if (id == null){
            return;
        }

        PrivateInvestmentIncomeTypeBO bo = privateInvestmentIncomeTypeService.queryPrivateInvestmentIncomeTypeById(id);
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
    public void deletePrivateInvestmentIncomeType(HttpServletResponse response, Integer id){
        if (id == null){
            return;
        }

        PrivateInvestmentIncomeTypeBO bo = privateInvestmentIncomeTypeService.queryPrivateInvestmentIncomeTypeById(id);
        if (bo == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
            return;
        }

        privateInvestmentIncomeTypeService.deletePrivateInvestmentIncomeType(id);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);

    }


    /**
     * 新增
     * @param name
     */
    @RequestMapping("/add")
    public void addPrivateInvestmentIncomeType(HttpServletResponse response, String name){
        if(name == null || StringUtils.isEmpty(name)){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }

        privateInvestmentIncomeTypeService.addPrivateInvestmentIncomeType(name);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);

    }


    /**
     * 修改
     * @param bo
     */
    @RequestMapping("/update")
    public void updatePrivateInvestmentIncomeType(HttpServletResponse response, PrivateInvestmentIncomeTypeBO bo){
        PrivateInvestmentIncomeTypeBO newBo = privateInvestmentIncomeTypeService.queryPrivateInvestmentIncomeTypeById(bo.getId());

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

        privateInvestmentIncomeTypeService.updatePrivateInvestmentIncomeTypeBO(newBo);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);
    }
}