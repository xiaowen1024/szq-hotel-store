package com.szq.store.web.controller.manage;

import com.szq.store.entity.bo.CompanyIntroductionBo;
import com.szq.store.entity.dto.ResultDTOBuilder;
import com.szq.store.pop.SystemConfig;
import com.szq.store.service.CompanyItroductionService;
import com.szq.store.util.JsonUtils;
import com.szq.store.util.StringUtils;
import com.szq.store.web.controller.base.BaseCotroller;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;

/**
 * Created by yxw on 2018/7/18.
 */
@Controller
@RequestMapping("/CompanyIntroduction")
public class CompanyIntroductionController extends BaseCotroller {
    @Autowired
    private CompanyItroductionService companyItroductionService;
    @RequestMapping("/list")
    public ModelAndView queryCompanyIntroductionList(){
        ModelAndView view = new ModelAndView();
        view.setViewName("/guangheOn/company_introduction");
        return view;
    }
    @RequestMapping("/delete")
    public void deleteCompanyItroduction(HttpServletResponse response, Integer id){
        if (id == null || id == 0 ) {
            return;
        }
        CompanyIntroductionBo news =companyItroductionService.queryCompanyItroduction(id);

        if (news == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
        }else {
            companyItroductionService.deleteCompanyItroduction(id);
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
            safeJsonPrint(response, json);
        }
    }

    @RequestMapping("/add")
    public void addBigECompanyItroduction (HttpServletResponse response, CompanyIntroductionBo news){
        if(news == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        }else if(StringUtils.isEmpty(news.getTitle())
                || StringUtils.isEmpty(news.getSource()) || StringUtils.isEmpty(news.getCompanyIntroduction())
                || StringUtils.isEmpty(news.getCreateUser())){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        }else{
            companyItroductionService.addCompanyItroduction(news);
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
            safeTextPrint(response, json);
        }
    }

    @RequestMapping("/update")
    public void updateCompanyItroduction (HttpServletResponse response,CompanyIntroductionBo news) {
        CompanyIntroductionBo newsDetail = companyItroductionService.queryCompanyItroduction(news.getId());

        if (news == null) {
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        } else if (StringUtils.isEmpty(news.getTitle())
                || StringUtils.isEmpty(news.getSource()) || StringUtils.isEmpty(news.getCompanyIntroduction())
                || StringUtils.isEmpty(news.getCreateUser()) || news.getId() == null) {
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        } else if (newsDetail == null) {
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
        } else {
            newsDetail.setTitle(news.getTitle());
            newsDetail.setCompanyIntroduction(news.getCompanyIntroduction());
            newsDetail.setSource(news.getSource());
            newsDetail.setImage(news.getImage());
            newsDetail.setCreateUser(news.getCreateUser());
            companyItroductionService.updateCompanyItroduction(newsDetail);
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
            safeTextPrint(response, json);
        }
    }

        @RequestMapping("/detail")
    public void queryCompanyItroduction (HttpServletResponse response){
            CompanyIntroductionBo news = companyItroductionService.queryCompanyIntroductionDetail();
            if (news == null){
                String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
                safeTextPrint(response, json);
            }else{
                JSONObject result = new JSONObject();
                result.put("CompanyIntroductionBo", news);
                result.put("Url","https://" + SystemConfig.getString("image_bucketName")+".oss-cn-beijing.aliyuncs.com/");
                String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(result));
                safeTextPrint(response, json);
            }
        }
}
