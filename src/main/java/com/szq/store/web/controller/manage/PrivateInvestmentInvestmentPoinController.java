package com.szq.store.web.controller.manage;

import com.szq.store.entity.bo.PrivateInvestmentInvestmentPoinBO;
import com.szq.store.entity.dto.ResultDTOBuilder;
import com.szq.store.service.PrivateInvestmentInvestmentPoinService;
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
@RequestMapping("/investmentPoin")
public class PrivateInvestmentInvestmentPoinController extends BaseCotroller {

    @Resource
    private PrivateInvestmentInvestmentPoinService privateInvestmentInvestmentPoinService;


    /**
     * 查询列表
     */
    @RequestMapping("/list")
    public void queryPrivateInvestmentInvestmentPoinList(HttpServletResponse response){

        Map<String, Object> resultMap = new HashMap<String, Object>();
        resultMap.put("data",privateInvestmentInvestmentPoinService.queryPrivateInvestmentInvestmentPoinList());
        resultMap.put("count",privateInvestmentInvestmentPoinService.queryPrivateInvestmentInvestmentPoinCount());
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(resultMap));

        safeTextPrint(response, json);
    }



    /**
     * 根据id查询详情
     * @param id
     */
    @RequestMapping("/detail")
    public void queryPrivateInvestmentInvestmentPoinById(HttpServletResponse response,Integer id){
//
        if (id == null){
            return;
        }

        PrivateInvestmentInvestmentPoinBO bo = privateInvestmentInvestmentPoinService.queryPrivateInvestmentInvestmentPoinById(id);
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
    public void deletePrivateInvestmentInvestmentPoin(HttpServletResponse response, Integer id){
        if (id == null){
            return;
        }

        PrivateInvestmentInvestmentPoinBO bo = privateInvestmentInvestmentPoinService.queryPrivateInvestmentInvestmentPoinById(id);
        if (bo == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
            return;
        }

        privateInvestmentInvestmentPoinService.deletePrivateInvestmentInvestmentPoin(id);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);

    }


    /**
     * 新增
     * @param name
     */
    @RequestMapping("/add")
    public void addPrivateInvestmentInvestmentPoin(HttpServletResponse response, String name){
        if(name == null || StringUtils.isEmpty(name) ){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }

        privateInvestmentInvestmentPoinService.addPrivateInvestmentInvestmentPoin(name);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);

    }


    /**
     * 修改
     * @param bo
     */
    @RequestMapping("/update")
    public void updatePrivateInvestmentInvestmentPoin(HttpServletResponse response, PrivateInvestmentInvestmentPoinBO bo){
        PrivateInvestmentInvestmentPoinBO newBo = privateInvestmentInvestmentPoinService.queryPrivateInvestmentInvestmentPoinById(bo.getId());

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

        privateInvestmentInvestmentPoinService.updatePrivateInvestmentInvestmentPoinBO(newBo);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);
    }
}