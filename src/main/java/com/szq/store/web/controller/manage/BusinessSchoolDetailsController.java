package com.szq.store.web.controller.manage;

import com.szq.store.entity.bo.BusinessSchoolDetailsBo;
import com.szq.store.entity.dto.ResultDTOBuilder;
import com.szq.store.pop.SystemConfig;
import com.szq.store.service.BusinessSchoolDetailsService;
import com.szq.store.util.JsonUtils;
import com.szq.store.util.StringUtils;
import com.szq.store.web.controller.base.BaseCotroller;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by yxw on 2018/7/23.
 */
@Controller
@RequestMapping("/BusinessSchoolDetails")
public class BusinessSchoolDetailsController extends BaseCotroller {
    @Autowired
    private BusinessSchoolDetailsService businessSchoolDetailsService;
    @RequestMapping("/list")
    public ModelAndView queryBusinessSchoolDetailsList(){
        ModelAndView view = new ModelAndView();
        view.setViewName("/business_school_details");
        return view;
    }
    @RequestMapping("/delete")
    public void deleteBigEvent(HttpServletResponse response, Integer id){
        if (id == null || id == 0 ) {
            return;
        }
        BusinessSchoolDetailsBo news =businessSchoolDetailsService.queryHomePageDetail(id);

        if (news == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
        }else {
            businessSchoolDetailsService.deleteHomePageDetail(id);
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
            safeJsonPrint(response, json);
        }

    }

    @RequestMapping("/add")
    public void addBigEvent (HttpServletResponse response, BusinessSchoolDetailsBo news){
        if(news == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        }else if(StringUtils.isEmpty(news.getTitle())
                || StringUtils.isEmpty(news.getSynopsis())
                ){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        }else{
            businessSchoolDetailsService.addHomePageDetail(news);
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
            safeTextPrint(response, json);
        }
    }

    @RequestMapping("/update")
    public void updateBigEvent (HttpServletResponse response,BusinessSchoolDetailsBo news){

        BusinessSchoolDetailsBo newsDetail = businessSchoolDetailsService.queryHomePageDetail(news.getId());

        if(news == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        }else if(StringUtils.isEmpty(news.getTitle())
                || StringUtils.isEmpty(news.getSynopsis())  || news.getId() == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        }else if(newsDetail == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
        }else{
            newsDetail.setTitle(news.getTitle());
            newsDetail.setSynopsis(news.getSynopsis());
            newsDetail.setImageUrl(news.getImageUrl());
            newsDetail.setCreateUser(news.getCreateUser());
            businessSchoolDetailsService.updateHomePageDetail(newsDetail);
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
            safeTextPrint(response, json);
        }

    }

    @RequestMapping("/detail")
    public void queryBigEvent (HttpServletResponse response){
        List<BusinessSchoolDetailsBo> news = businessSchoolDetailsService.queryHomePageDetail1();
        if (news == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
        }else{
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(news));
            safeTextPrint(response, json);

        }
    }
    @RequestMapping("/detailWap")
    public void queryBigEventWap (HttpServletResponse response){
        List<BusinessSchoolDetailsBo> news = businessSchoolDetailsService.queryHomePageDetail2();
        if (news == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
        }else{
            JSONObject result = new JSONObject();
            result.put("news",news);
            result.put("Url","https://" + SystemConfig.getString("image_bucketName")+".oss-cn-beijing.aliyuncs.com/");
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(result));
            safeTextPrint(response, json);

        }
    }
}
