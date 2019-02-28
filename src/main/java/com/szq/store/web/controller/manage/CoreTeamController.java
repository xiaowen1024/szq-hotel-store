package com.szq.store.web.controller.manage;

import com.szq.store.entity.bo.CoreTeamBo;
import com.szq.store.entity.bo.EmployeeBo;
import com.szq.store.entity.dto.ResultDTOBuilder;
import com.szq.store.pop.SystemConfig;
import com.szq.store.service.CoreTeamService;
import com.szq.store.util.JsonUtils;
import com.szq.store.util.StringUtils;
import com.szq.store.web.controller.base.BaseCotroller;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by yxw on 2018/7/18.
 */
@Controller
@RequestMapping("/CoreTeam")
public class CoreTeamController  extends BaseCotroller {
    @Autowired
    private CoreTeamService coreTeamService;
    @RequestMapping("/list")
    public ModelAndView queryCoreTeamList(){
        ModelAndView view = new ModelAndView();
        view.setViewName("/guangheOn/core_team");
        return view;
    }
    @RequestMapping("/delete")
    public void deleteCoreTeam(HttpServletResponse response, Integer id){
        if (id == null || id == 0 ) {
            return;
        }
        CoreTeamBo news =coreTeamService.queryCoreTeam(id);

        if (news == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
        }else {
            coreTeamService.deleteCoreTeam(id);
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
            safeJsonPrint(response, json);
        }
    }

    @RequestMapping("/add")
    public void addCoreTeam (HttpServletResponse response, CoreTeamBo news){
        if(news == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        }else if(StringUtils.isEmpty(news.getTitle())
                || StringUtils.isEmpty(news.getSource()) || StringUtils.isEmpty(news.getCoreTeam())
                || StringUtils.isEmpty(news.getCreateUser())){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        }else{
            coreTeamService.addCoreTeam(news);
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
            safeTextPrint(response, json);
        }
    }

    @RequestMapping("/update")
    public void updateCoreTeam (HttpServletResponse response,CoreTeamBo news){
        CoreTeamBo newsDetail = coreTeamService.queryCoreTeam(news.getId());

        if(news == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        }else if(StringUtils.isEmpty(news.getTitle())
                || StringUtils.isEmpty(news.getSource()) || StringUtils.isEmpty(news.getCoreTeam())
                || StringUtils.isEmpty(news.getCreateUser()) || news.getId() == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        }else if(newsDetail == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
        }else{
            newsDetail.setTitle(news.getTitle());
            newsDetail.setCoreTeam(news.getCoreTeam());
            newsDetail.setSource(news.getSource());
            newsDetail.setImage(news.getImage());
            newsDetail.setCreateUser(news.getCreateUser());
            coreTeamService.updateCoreTeam(newsDetail);
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
            safeTextPrint(response, json);
        }

    }
    @RequestMapping("/detail")
    public void queryCoreTeam (HttpServletResponse response){
        CoreTeamBo news = coreTeamService.queryHomeCoreTeam();
        if (news == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
        }
        List<Object> list =new ArrayList<Object>();
        list.add(news);
        List<EmployeeBo> employeeBo =coreTeamService.queryEmloyee();
        if (employeeBo==null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
        }
        JSONObject result = new JSONObject();
        result.put("coreTeam",list);
        result.put("employee",employeeBo);
        result.put("Url","https://" + SystemConfig.getString("image_bucketName")+".oss-cn-beijing.aliyuncs.com/");
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(result));
        safeTextPrint(response, json);

    }
}
