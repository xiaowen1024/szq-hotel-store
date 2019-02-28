package com.szq.store.web.controller.manage;

import com.szq.store.entity.bo.PrivateInvestmentProductTermBO;
import com.szq.store.entity.dto.ResultDTOBuilder;
import com.szq.store.service.PrivateInvestmentProductTermService;
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
@RequestMapping("/productTerm")
public class PrivateInvestmentProductTermController extends BaseCotroller {

    @Resource
    private PrivateInvestmentProductTermService privateInvestmentProductTermService;


    /**
     * 查询列表
     */
    @RequestMapping("/list")
    public void queryPrivateInvestmentProductTermList(HttpServletResponse response){

        Map<String, Object> resultMap = new HashMap<String, Object>();
        resultMap.put("data",privateInvestmentProductTermService.queryPrivateInvestmentProductTermList());
        resultMap.put("count",privateInvestmentProductTermService.queryPrivateInvestmentProductTermCount());
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(resultMap));

        safeTextPrint(response, json);
    }



    /**
     * 根据id查询详情
     * @param id
     */
    @RequestMapping("/detail")
    public void queryPrivateInvestmentProductTermById(HttpServletResponse response,Integer id){
//
        if (id == null){
            return;
        }

        PrivateInvestmentProductTermBO bo = privateInvestmentProductTermService.queryPrivateInvestmentProductTermById(id);
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
    public void deletePrivateInvestmentProductTerm(HttpServletResponse response, Integer id){
        if (id == null){
            return;
        }

        PrivateInvestmentProductTermBO bo = privateInvestmentProductTermService.queryPrivateInvestmentProductTermById(id);
        if (bo == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
            return;
        }

        privateInvestmentProductTermService.deletePrivateInvestmentProductTerm(id);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);

    }


    /**
     * 新增
     * @param name
     */
    @RequestMapping("/add")
    public void addPrivateInvestmentProductTerm(HttpServletResponse response, String name){
        if(name == null || StringUtils.isEmpty(name)){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }

        privateInvestmentProductTermService.addPrivateInvestmentProductTerm(name);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);

    }


    /**
     * 修改
     * @param bo
     */
    @RequestMapping("/update")
    public void updatePrivateInvestmentProductTerm(HttpServletResponse response, PrivateInvestmentProductTermBO bo){
        PrivateInvestmentProductTermBO newBo = privateInvestmentProductTermService.queryPrivateInvestmentProductTermById(bo.getId());

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

        privateInvestmentProductTermService.updatePrivateInvestmentProductTermBO(newBo);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);
    }
}