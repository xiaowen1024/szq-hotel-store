package com.szq.store.web.controller.mallManage;

import com.szq.store.entity.dto.ResultDTOBuilder;
import com.szq.store.entity.mallBo.IntegralTransactionBo;
import com.szq.store.query.QueryInfo;
import com.szq.store.service.mallService.IntegralTransactionService;
import com.szq.store.util.JsonUtils;
import com.szq.store.web.controller.base.BaseCotroller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by shishiming on 2018/8/2.
 */
@Controller
@RequestMapping("/integralTransaction")
public class IntegralTransactionController extends BaseCotroller {

    @Resource
    private IntegralTransactionService integralTransactionService;

    /**
     * 查询列表
     */
    @RequestMapping("/list")
    public void queryIntegralTransactionList(HttpServletResponse response,Integer userId,Integer state,Integer pageNo, Integer pageSize){

        if(userId == null || userId == 0){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }

        QueryInfo queryInfo = getQueryInfo(pageNo, pageSize);

        Map<String, Object> map = new HashMap<String, Object>();
        if(queryInfo != null){
            map.put("pageOffset", queryInfo.getPageOffset());
            map.put("pageSize", queryInfo.getPageSize());
        }
        map.put("userId",userId);
        map.put("state",state);

        Map<String, Object> resultMap = new HashMap<String, Object>();
        resultMap.put("data",integralTransactionService.queryIntegralTransactionList(map));

        resultMap.put("count", integralTransactionService.queryIntegralTransactionCount(map));
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(resultMap));

        safeTextPrint(response, json);
    }



    /**
     * 根据id查询详情
     * @param id
     */
    @RequestMapping("/detail")
    public void queryIntegralTransactionById(HttpServletResponse response,Integer id){
//
        if (id == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }

        IntegralTransactionBo bo = integralTransactionService.queryIntegralTransactionById(id);
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
    public void deleteIntegralTransactionbyId(HttpServletResponse response, Integer id){
        if (id == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }

        IntegralTransactionBo bo = integralTransactionService.queryIntegralTransactionById(id);
        if (bo == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
            return;
        }

        integralTransactionService.deleteIntegralTransactionbyId(id);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);

    }


    /**
     * 新增
     * @param bo
     */
    @RequestMapping("/add")
    public void addIntegralTransaction(HttpServletResponse response, IntegralTransactionBo bo){
        if(bo == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }

        integralTransactionService.addIntegralTransaction(bo);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);

    }


    /**
     * 修改
     * @param bo
     */
    @RequestMapping("/update")
    public void updateIntegralTransactionbyId(HttpServletResponse response, IntegralTransactionBo bo){


        if(bo == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }
        if(bo.getId() == null || bo.getUserId() == null || bo.getOrderId() == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }

        IntegralTransactionBo newBo = integralTransactionService.queryIntegralTransactionById(bo.getId());
        if(newBo == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
            return;
        }


        integralTransactionService.updateIntegralTransactionbyId(bo);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);
    }

    /**
     * 修改订单状态
     * @param id,userId,state
     */
    @RequestMapping("/updateState")
    public void updateIntegralTransactionbyId(HttpServletResponse response, Integer id,Integer userId,Integer state){

        if(id == null || userId == null || state == null ){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }

        IntegralTransactionBo newBo = integralTransactionService.queryIntegralTransactionById(id);
        if(newBo == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
            return;
        }


        HashMap<String,Object> map = new HashMap<String,Object>();
        map.put("id",id);
        map.put("userId",userId);
        map.put("state",state);

        //修改状态
        integralTransactionService.updateIntegralTransactionStatebyId(map);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);
    }

}
