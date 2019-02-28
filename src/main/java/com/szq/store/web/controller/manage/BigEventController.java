package com.szq.store.web.controller.manage;

import com.szq.store.entity.bo.BigEventBo;
import com.szq.store.entity.dto.ResultDTOBuilder;
import com.szq.store.pop.SystemConfig;
import com.szq.store.service.BigEventService;
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
 * Created by yxw on 2018/7/18.
 */
@Controller
@RequestMapping("/BigEvent")
public class BigEventController extends BaseCotroller {
    @Autowired
    private BigEventService bigEventService;
    @RequestMapping("/list")
    public ModelAndView queryBigEventList(){
        ModelAndView view = new ModelAndView();
        view.setViewName("/guangheOn/big_event");
        return view;
    }
    @RequestMapping("/delete")
    public void deleteBigEvent(HttpServletResponse response, Integer id){
        if (id == null || id == 0 ) {
            return;
        }
        BigEventBo news =bigEventService.queryBigEvent(id);

        if (news == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
        }else {
            bigEventService.deleteBigEvent(id);
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
            safeJsonPrint(response, json);
        }

    }

    @RequestMapping("/add")
    public void addBigEvent (HttpServletResponse response, BigEventBo news){
        if(news == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        }else if(StringUtils.isEmpty(news.getTitle())
                || StringUtils.isEmpty(news.getContent())
                || StringUtils.isEmpty(news.getCreateUser())){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        }else{
            bigEventService.addBigEvent(news);
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
            safeTextPrint(response, json);
        }
    }

    @RequestMapping("/update")
    public void updateBigEvent (HttpServletResponse response,BigEventBo news){

        BigEventBo newsDetail = bigEventService.queryBigEvent(news.getId());

        if(news == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        }else if(StringUtils.isEmpty(news.getTitle())
                || StringUtils.isEmpty(news.getContent())
                || StringUtils.isEmpty(news.getCreateUser()) || news.getId() == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        }else if(newsDetail == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
        }else{
            newsDetail.setContent(news.getContent());
            newsDetail.setTitle(news.getTitle());
            newsDetail.setYear(news.getYear());
            newsDetail.setImage(news.getImage());
            newsDetail.setCreateUser(news.getCreateUser());
            bigEventService.updateBigEvent(newsDetail);
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
            safeTextPrint(response, json);
        }

    }

    @RequestMapping("/detail")
    public void queryBigEvent (HttpServletResponse response){


        List<BigEventBo> news = bigEventService.queryBigEventDetail();
        if (news == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
        }else{
            JSONObject result = new JSONObject();
            result.put("data", news);
            result.put("Url","https://" + SystemConfig.getString("image_bucketName")+".oss-cn-beijing.aliyuncs.com/");
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(result));
            safeTextPrint(response, json);

        }
}
}
