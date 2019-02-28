package com.szq.store.web.controller.manage;

import com.szq.store.entity.bo.PrivateClubBo;
import com.szq.store.entity.dto.ResultDTOBuilder;
import com.szq.store.service.PrivateClubService;
import com.szq.store.util.JsonUtils;
import com.szq.store.util.StringUtils;
import com.szq.store.web.controller.base.BaseCotroller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by yxw on 2018/8/7.
 */
@Controller
@RequestMapping("/PrivateClub")
public class PrivateClubController  extends BaseCotroller {
    @Resource
    private PrivateClubService privateClubService;
    @RequestMapping("/delete")
    public void deleteBanner(HttpServletResponse response, Integer id){
        if (id == null || id == 0 ) {
            return;
        }
        PrivateClubBo news =privateClubService.queryPrivateClub(id);

        if (news == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
        }else {
            privateClubService.deletePrivateClub(id);
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
            safeJsonPrint(response, json);
        }

    }

    @RequestMapping("/add")
    public void addBanner (HttpServletResponse response, PrivateClubBo news){
        if(news == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        }else if(StringUtils.isEmpty(news.getImage())||StringUtils.isEmpty(news.getContent())){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        }else{
            privateClubService.addPrivateClub(news);
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
            safeTextPrint(response, json);
        }
    }

    @RequestMapping("/update")
    public void updateBanner (HttpServletResponse response,PrivateClubBo news){

        PrivateClubBo newsDetail = privateClubService.queryPrivateClub(news.getId());

        if(news == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        }else if(StringUtils.isEmpty(news.getImage()) || news.getId() == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        }else if(newsDetail == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
        }else{
            newsDetail.setContent(news.getContent());
            newsDetail.setImage(news.getImage());
            privateClubService.updatePrivateClub(newsDetail);
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
            safeTextPrint(response, json);
        }

    }
    @RequestMapping("/detail")
    public void queryBanner (HttpServletResponse response, Integer Id){
        PrivateClubBo news = privateClubService.queryPrivateClub(Id);
        if (news == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
        }else{
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(news));
            safeTextPrint(response, json);

        }
    }
}
