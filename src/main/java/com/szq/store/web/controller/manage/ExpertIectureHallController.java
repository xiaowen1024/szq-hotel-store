package com.szq.store.web.controller.manage;

import com.szq.store.entity.bo.ExpertIectureHallBo;
import com.szq.store.entity.dto.ResultDTOBuilder;
import com.szq.store.pop.SystemConfig;
import com.szq.store.query.QueryInfo;
import com.szq.store.service.ExpertIectureHallService;
import com.szq.store.util.*;
import com.szq.store.web.controller.base.BaseCotroller;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.text.MessageFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by yxw on 2018/7/31.
 */
@Controller
@RequestMapping("/ExpertIectureHall")
public class ExpertIectureHallController extends BaseCotroller {
    @RequestMapping("/page")
    public ModelAndView page(){
        ModelAndView view = new ModelAndView();
        view.setViewName("/school/expert_lecture_hall");
        return view;
    }
    @RequestMapping("/page1")
    public ModelAndView page1(Integer id){
        ModelAndView view = new ModelAndView();
        view.setViewName("/school/hall");
        view.addObject("newsId", id);
        return view;
    }
    @Resource
    private ExpertIectureHallService expertIectureHallService;
    @RequestMapping("/toAdd")
    public ModelAndView redirectAddPage(){
        ModelAndView view = new ModelAndView();
        view.setViewName("/news/news_information_add");
        sput("base_image", SystemConfig.getString("image_base_url"));
        return view;
    }

    @RequestMapping("/uploadThumbnails")
    public void uploadThumbnails(HttpServletResponse response, @RequestParam("myFile") MultipartFile file){

        if(file == null){
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0", "paramError")) ;
            safeJsonPrint(response, result);
            return;
        }
        if( file.getSize() > 2 * 1024 * 1024){
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0", "big")) ;
            safeJsonPrint(response, result);
            return;
        }
        //获得文件类型（可以判断如果不是图片，禁止上传）
        String contentType = file.getContentType();
        String random = RandomUtil.generateString(4);
        //获得文件后缀名称
        String imageType = contentType.substring(contentType.indexOf("/") + 1);
        String yyyyMMdd = DateUtils.formatDate(DateUtils.DATE_PATTERN_PLAIN, new Date());
        String yyyyMMddHHmmss = DateUtils.formatDate(DateUtils.LONG_DATE_PATTERN_PLAIN, new Date());
        String fileName = yyyyMMddHHmmss + random + "." + imageType;
        String urlMsg = SystemConfig.getString("news_information_image_url");
        urlMsg = MessageFormat.format(urlMsg, new Object[]{yyyyMMdd, fileName});
        String thumbnailsUrl = urlMsg.replace("/attached", SystemConfig.getString("img_file_root"));
        String msgUrl = SystemConfig.getString("client_upload_base");
        String tmpFileUrl = msgUrl + urlMsg;
        File ff = new File(tmpFileUrl.substring(0, tmpFileUrl.lastIndexOf('/')));
        if (!ff.exists()) {
            ff.mkdirs();
        }
        byte[] tmp = null;
        try {
            tmp = file.getBytes();
        } catch (Exception e) {
            e.printStackTrace();
        }
        FileUtils.getFileFromBytes(tmp, tmpFileUrl);

        JSONObject jo = new JSONObject();
        jo.put("baseUrl", SystemConfig.getString("image_base_url"));
        jo.put("thumbnailsUrl", thumbnailsUrl);

        String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success("")) ;
        safeJsonPrint(response, result);
        return ;

    }

    /**
     * 查询新闻动态列表
     * @param pageNo,pageSize
     */
    @RequestMapping("/list")
    public void queryExpertIectureHallList(HttpServletResponse response,Integer pageNo, Integer pageSize){

        QueryInfo queryInfo = getQueryInfo(pageNo, pageSize);

        Map<String, Object> map = new HashMap<String, Object>();
        if(queryInfo != null){
            map.put("pageOffset", queryInfo.getPageOffset());
            map.put("pageSize", queryInfo.getPageSize());
        }


        Map<String, Object> resultMap = new HashMap<String, Object>();
        resultMap.put("data",expertIectureHallService.queryExpertIectureHallList(map));
        resultMap.put("count",expertIectureHallService.queryExpertIectureHallCount());
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(resultMap));

        safeTextPrint(response, json);
    }



    /**
     * 查询新闻动态详情
     * @param newsId
     */
    @RequestMapping("/detail")
    public void queryExpertIectureHallById(HttpServletResponse response,Integer newsId){
//
        if (newsId == null){
            return;
        }

        ExpertIectureHallBo news = expertIectureHallService.queryExpertIectureHallById(newsId);
        if (news == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
            return;
        }

        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(news));
        safeTextPrint(response, json);

    }

    /**
     * 删除新闻动态
     * @param newsId
     */
    @RequestMapping("/delete")
    public void deleteExpertIectureHall(HttpServletResponse response, Integer newsId){
        if (newsId == null){
            return;
        }

        ExpertIectureHallBo news = expertIectureHallService.queryExpertIectureHallById(newsId);
        if (news == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
            return;
        }

        expertIectureHallService.deleteExpertIectureHall(newsId);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);

    }


    /**
     * 新增新闻动态
     * @param news
     */
    @RequestMapping("/add")
    public void addExpertIectureHalln(HttpServletResponse response, ExpertIectureHallBo news){
        if(news == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }
        if(StringUtils.isEmpty(news.getTitle()) || StringUtils.isEmpty(news.getEnglishTitle())
                || StringUtils.isEmpty(news.getImgUrl())|| StringUtils.isEmpty(news.getSource())
                || StringUtils.isEmpty(news.getContent()) || StringUtils.isEmpty(news.getCreateNewsUser())){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }
        expertIectureHallService.addExpertIectureHall(news);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);

    }


    /**
     * 修改新闻动态
     * @param news
     */
    @RequestMapping("/update")
    public void updateExpertIectureHall(HttpServletResponse response, ExpertIectureHallBo news){
        ExpertIectureHallBo newsDetail = expertIectureHallService.queryExpertIectureHallById(news.getId());

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

        expertIectureHallService.updateExpertIectureHall(newsDetail);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);
    }
}
