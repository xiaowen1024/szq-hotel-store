package com.szq.store.web.controller.manage;


import com.szq.store.entity.bo.IndustryInformationBO;
import com.szq.store.entity.dto.ResultDTOBuilder;
import com.szq.store.pop.SystemConfig;
import com.szq.store.query.QueryInfo;
import com.szq.store.service.IndustryInformationService;
import com.szq.store.util.DateUtils;
import com.szq.store.util.JsonUtils;
import com.szq.store.util.StringUtils;
import com.szq.store.web.controller.base.BaseCotroller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by shishiming on 2018/7/18.
 */
@Controller
@RequestMapping("/industryInformation")
public class IndustryInformationController extends BaseCotroller {

    @Resource
    private IndustryInformationService industryInformationService;

    @RequestMapping("/page")
    public ModelAndView page(){
        ModelAndView view = new ModelAndView();
        view.addObject("Url", "https://" + SystemConfig.getString("image_bucketName") + ".oss-cn-beijing.aliyuncs.com/");
        view.setViewName("/industry/industry_information");
        return view;
    }

    @RequestMapping("/findOne")
    public ModelAndView findOne(Integer id){
        ModelAndView view = new ModelAndView();
        view.setViewName("/industry/industry_information_detail");
        view.addObject("id", id);
        return view;
    }

    /**
     * 查询行业资讯列表
     * @param pageNo,pageSize
     */
    @RequestMapping("/list")
    public void queryIndustryInformationList(HttpServletResponse response,Integer pageNo, Integer pageSize){

        QueryInfo queryInfo = getQueryInfo(pageNo, pageSize);

        Map<String, Object> map = new HashMap<String, Object>();
        if(queryInfo != null){
            map.put("pageOffset", queryInfo.getPageOffset());
            map.put("pageSize", queryInfo.getPageSize());
        }


        Map<String, Object> resultMap = new HashMap<String, Object>();

        List<IndustryInformationBO> list = industryInformationService.queryIndustryInformationList(map);
        for(int i=0;i<list.size();i++){
            IndustryInformationBO bo = list.get(i);
            Date date = bo.getCreateTime();
            bo.setCreateTimeStr(DateUtils.format(date));
        }
        resultMap.put("data",list);
        resultMap.put("count",industryInformationService.queryIndustryInformationCount());
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(resultMap));
        safeTextPrint(response, json);
    }

    /**
     * 查询行业资讯详情
     * @param newsId
     */
    @RequestMapping("/detail")
    public void queryIndustryInformationById(HttpServletResponse response,Integer newsId){

        if (newsId == null){
            return;
        }

        IndustryInformationBO news = industryInformationService.queryIndustryInformationById(newsId);
        if (news == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
            return;
        }
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(news));
        safeTextPrint(response, json);

    }


    /**
     * 删除行业资讯
     * @param newsId
     */
    @RequestMapping("/delete")
    public void deleteIndustryInformation(HttpServletResponse response, Integer newsId){
        if (newsId == null){
            return;
        }

        IndustryInformationBO news = industryInformationService.queryIndustryInformationById(newsId);
        if (news == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
            return;
        }
        industryInformationService.deleteIndustryInformation(newsId);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);

    }


    /**
     * 新增行业资讯
     * @param news
     */
    @RequestMapping("/add")
    public void addIndustryInformation(HttpServletResponse response, IndustryInformationBO news){
        if(news == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }
        if(StringUtils.isEmpty(news.getTitle()) || StringUtils.isEmpty(news.getEnglishTitle())
                || StringUtils.isEmpty(news.getImgUrl())
                || StringUtils.isEmpty(news.getSource()) || StringUtils.isEmpty(news.getContent())
                || StringUtils.isEmpty(news.getCreateNewsUser())){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }
        industryInformationService.addIndustryInformation(news);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);
    }


    /**
     * 修改行业资讯
     * @param news
     */
    @RequestMapping("/update")
    public void updateIndustryInformation(HttpServletResponse response, IndustryInformationBO news){
        IndustryInformationBO newsDetail = industryInformationService.queryIndustryInformationById(news.getId());

        if(news == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }
        if(StringUtils.isEmpty(news.getTitle()) || StringUtils.isEmpty(news.getEnglishTitle())
                || StringUtils.isEmpty(news.getImgUrl())
                || StringUtils.isEmpty(news.getSource()) || StringUtils.isEmpty(news.getContent())
                || StringUtils.isEmpty(news.getCreateNewsUser()) || news.getId() == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }
        if(newsDetail == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
            return;
        }
        newsDetail.setTitle(news.getTitle());
        newsDetail.setEnglishTitle(news.getEnglishTitle());
        newsDetail.setImgUrl(news.getImgUrl());
        newsDetail.setSource(news.getSource());
        newsDetail.setContent(news.getContent());
        newsDetail.setCreateNewsUser(news.getCreateNewsUser());

        industryInformationService.updateIndustryInformationBO(newsDetail);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);

    }
}