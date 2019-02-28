package com.szq.store.web.controller.mallManage;

import com.szq.store.entity.bo.UserBO;
import com.szq.store.entity.dto.ResultDTOBuilder;
import com.szq.store.entity.mallBo.ReceivingAdressBo;
import com.szq.store.service.mallService.ReceivingAdressService;
import com.szq.store.util.JsonUtils;
import com.szq.store.util.StringUtils;
import com.szq.store.web.controller.base.BaseCotroller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by shishiming on 2018/8/2.
 */
@Controller
@RequestMapping("receivingAdress")
public class ReceivingAdressController extends BaseCotroller {

    @Resource
    private ReceivingAdressService receivingAdressService;

    /**
     * 查询列表
     */
    @RequestMapping("/list")
    public void queryReceivingAdressList(HttpServletResponse response,HttpServletRequest request){
        UserBO userBO = super.getLoginUser(request);
    /* 2. 验证账户状态 */
        if (userBO == null) {
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007", "用户未登录！"));
            super.safeJsonPrint(response, result);
            return;
        }
        Integer userId =userBO.getId();
        Map<String,Object> map =new HashMap<String, Object>();
        map.put("userId",userId);

        Map<String, Object> resultMap = new HashMap<String, Object>();
        resultMap.put("data",receivingAdressService.queryReceivingAdressList(map));
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(resultMap));

        safeTextPrint(response, json);
    }



    /**
     * 根据id查询详情
     * @param id
     */
    @RequestMapping("/detail")
    public void queryReceivingAdressById(HttpServletResponse response,Integer id){
//
        if (id == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }

        ReceivingAdressBo bo = receivingAdressService.queryReceivingAdressById(id);
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
    public void deleteReceivingAdressbyId(HttpServletResponse response, Integer id,HttpServletRequest request){
        UserBO userBO = super.getLoginUser(request);
       /* 2. 验证账户状态 */
        if (userBO == null) {
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007", "用户未登录！"));
            super.safeJsonPrint(response, result);
            return;
        }
        if (id == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }

        ReceivingAdressBo bo = receivingAdressService.queryReceivingAdressById(id);
        if (bo == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
            return;
        }

        receivingAdressService.deleteReceivingAdressbyId(id);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);

    }


    /**
     * 新增
     * @param bo
     */
    @RequestMapping("/add")
    public void addReceivingAdress(HttpServletResponse response, ReceivingAdressBo bo,HttpServletRequest request){
        if(bo == null  || StringUtils.isEmpty(bo.getName()) || StringUtils.isEmpty(bo.getAddress())
                || StringUtils.isEmpty(bo.getAddressDetail()) || StringUtils.isEmpty(bo.getPhone())){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }
        UserBO userBO = super.getLoginUser(request);
    /* 2. 验证账户状态 */
        if (userBO == null) {
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007", "用户未登录！"));
            super.safeJsonPrint(response, result);
            return;
        }
        Integer userId =userBO.getId();
        Map<String, Object> parMap =new HashMap<String, Object>();
        parMap.put("userId",userId);
        int count = receivingAdressService.queryReceivingAdressCount(parMap);

        if(count >= 10){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001","新增地址不能超过10条"));
            safeTextPrint(response, json);
            return;
        }
          bo.setUserId(userId);
        receivingAdressService.addReceivingAdress(bo);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);

    }
    @RequestMapping("/wapAdd")
    public void addReceivingAdresswap(HttpServletResponse response, ReceivingAdressBo bo,HttpServletRequest request){
        if(bo == null  || StringUtils.isEmpty(bo.getName()) || StringUtils.isEmpty(bo.getAddress())
                || StringUtils.isEmpty(bo.getAddressDetail()) || StringUtils.isEmpty(bo.getPhone())){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }
        UserBO userBO = super.getLoginUser(request);
    /* 2. 验证账户状态 */
        if (userBO == null) {
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007", "用户未登录！"));
            super.safeJsonPrint(response, result);
            return;
        }
        Integer userId =userBO.getId();
        Map<String, Object> parMap =new HashMap<String, Object>();
        parMap.put("userId",userId);
        int count = receivingAdressService.queryReceivingAdressCount(parMap);

        if(count >= 10){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001","新增地址不能超过10条"));
            safeTextPrint(response, json);
            return;
        }
        bo.setUserId(userId);
        if (bo.getDefaultAddress()==1){
            receivingAdressService.updateReceivingAdressbyUserId(userId);
        }
        receivingAdressService.addReceivingAdresswap(bo);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);

    }


    /**
     * 修改
     * @param bo
     */
    @RequestMapping("/update")
    public void updateReceivingAdressbyId(HttpServletResponse response, ReceivingAdressBo bo,HttpServletRequest request){

        UserBO userBO = super.getLoginUser(request);
       /* 2. 验证账户状态 */
        if (userBO == null) {
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007", "用户未登录！"));
            super.safeJsonPrint(response, result);
            return;
        }
        if(bo == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }
        ReceivingAdressBo newBo = receivingAdressService.queryReceivingAdressById(bo.getId());
        if(newBo == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
            return;
        }

          bo.setUserId(userBO.getId());
        receivingAdressService.updateReceivingAdressbyId(bo);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);
    }

    /**
     * 设置默认地址
     * @param addressId
     */
    @RequestMapping("/setDefault")
    public void setDefault(HttpServletResponse response,HttpServletRequest request,Integer addressId){

        if( addressId == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }
        UserBO userBO = super.getLoginUser(request);
    /* 2. 验证账户状态 */
        if (userBO == null) {
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007", "用户未登录！"));
            super.safeJsonPrint(response, result);
            return;
        }
        Integer userId =userBO.getId();

        //修改该用户下的所有地址
        receivingAdressService.updateReceivingAdressbyUserId(userId);

        //修改该用户下的默认地址
        receivingAdressService.setDefaultAddressbyId(addressId);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);
    }


}
