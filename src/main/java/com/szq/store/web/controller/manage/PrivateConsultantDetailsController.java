package com.szq.store.web.controller.manage;

import com.szq.store.entity.bo.PrivateConsultantDetailsBO;
import com.szq.store.entity.dto.ResultDTOBuilder;
import com.szq.store.pop.SystemConfig;
import com.szq.store.query.QueryInfo;
import com.szq.store.service.PrivateConsultantDetailsService;
import com.szq.store.util.JsonUtils;
import com.szq.store.util.StringUtils;
import com.szq.store.web.controller.base.BaseCotroller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by shishiming on 2018/7/23.
 */
@Controller
@RequestMapping("/privateConsultant")
public class PrivateConsultantDetailsController extends BaseCotroller {

    @Resource
    private PrivateConsultantDetailsService privateConsultantDetailsService;

    @RequestMapping("/page")
    public ModelAndView page(){
        ModelAndView view = new ModelAndView();
        view.setViewName("/consultant/private_consultant");
        view.addObject("Url", "https://" + SystemConfig.getString("image_bucketName") + ".oss-cn-beijing.aliyuncs.com/");
        return view;
    }

    /**
     * 新增私享顾问
     * @param privateConsultant
     */
    @RequestMapping("/add")
    public void L(HttpServletResponse response, PrivateConsultantDetailsBO privateConsultant){
        if(privateConsultant == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001","参数异常！"));
            safeTextPrint(response, json);
            return;
        }
        if(StringUtils.isEmpty(privateConsultant.getName()) || StringUtils.isEmpty(privateConsultant.getImgUrl())
         || StringUtils.isEmpty(privateConsultant.getCreateUser()) || StringUtils.isEmpty(privateConsultant.getGender())
         || StringUtils.isEmpty(privateConsultant.getPosition()) || StringUtils.isEmpty(privateConsultant.getSynopsis())   ){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001","参数异常！"));
            safeTextPrint(response, json);
            return;
        }
        int id = privateConsultantDetailsService.addPrivateConsultant(privateConsultant);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);

    }


    /**
     * 根据Id删除私享顾问
     * @param id
     */
    @RequestMapping("/delete")
    public void deletePrivateConsultantbyId(HttpServletResponse response, int id){
        if( id == 0){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001","参数异常！"));
            safeTextPrint(response, json);
            return;
        }

        privateConsultantDetailsService.deletePrivateConsultantbyId(id);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);
    }


    /**
     * 根据修改私享顾问
     * @param privateConsultant
     */
    @RequestMapping("/update")
    public void updatePrivateConsultantbyId(HttpServletResponse response, PrivateConsultantDetailsBO privateConsultant){
        if( privateConsultant.getId() == null || privateConsultant.getId() == 0 ||
        StringUtils.isEmpty(privateConsultant.getName()) ||  StringUtils.isEmpty(privateConsultant.getImgUrl())
        || StringUtils.isEmpty(privateConsultant.getCreateUser())|| StringUtils.isEmpty(privateConsultant.getGender())
                || StringUtils.isEmpty(privateConsultant.getPosition()) || StringUtils.isEmpty(privateConsultant.getSynopsis())){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001","参数异常！"));
            safeTextPrint(response, json);
            return;
        }

        PrivateConsultantDetailsBO oldBO = privateConsultantDetailsService.queryPrivateConsultantDetailsById(privateConsultant.getId());
        if (oldBO == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004","没有找到该条记录！"));
            safeTextPrint(response, json);
            return;
        }

        privateConsultantDetailsService.updatePrivateConsultantbyId(privateConsultant);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);
    }

    /**
     * 查询私享顾问列表
     * @param pageNo,pageSize
     */
    @RequestMapping("/list")
    public void queryPrivateConsultantDetailsList(HttpServletResponse response,Integer pageNo, Integer pageSize){

        QueryInfo queryInfo = getQueryInfo(pageNo, pageSize);

        Map<String, Object> map = new HashMap<String, Object>();
        if(queryInfo != null){
            map.put("pageOffset", queryInfo.getPageOffset());
            map.put("pageSize", queryInfo.getPageSize());
        }

        Map<String,Object> resultMap = new HashMap<String, Object>();
        resultMap.put("Url", "https://" + SystemConfig.getString("image_bucketName") + ".oss-cn-beijing.aliyuncs.com/");
        resultMap.put("data",privateConsultantDetailsService.queryPrivateConsultantDetailsList(map));
        resultMap.put("count",privateConsultantDetailsService.queryPrivateConsultantListCount());
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(resultMap));
        safeTextPrint(response, json);
    }


    /**
     * 查询私享顾问详情
     * @param id
     */
    @RequestMapping("/detail")
    public void queryNewsInformationById(HttpServletResponse response,Integer id){
//
        if (id == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }

        PrivateConsultantDetailsBO wealth = privateConsultantDetailsService.queryPrivateConsultantDetailsById(id);
        if (wealth == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
            return;
        }

        Map<String,Object> map = new HashMap<String, Object>();
        map.put("Url", "https://" + SystemConfig.getString("image_bucketName") + ".oss-cn-beijing.aliyuncs.com/");
        map.put("data",wealth);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(map));
        safeTextPrint(response, json);

    }

    @RequestMapping("/detailsByJobNumber")
    public void queryPrivateConsultantDetailsByJobNumber(HttpServletResponse response,String jobNumber){
//
        if (StringUtils.isEmpty(jobNumber)){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }

        PrivateConsultantDetailsBO wealth = privateConsultantDetailsService.queryPrivateConsultantDetailsByJobNumber(jobNumber);
        if (wealth == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
            return;
        }

        Map<String,Object> map = new HashMap<String, Object>();
        map.put("Url", "https://" + SystemConfig.getString("image_bucketName") + ".oss-cn-beijing.aliyuncs.com/");
        map.put("data",wealth);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(map));
        safeTextPrint(response, json);

    }
}