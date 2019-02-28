package com.szq.store.web.controller.mallManage;

import com.szq.store.entity.bo.UserBO;
import com.szq.store.entity.dto.ResultDTOBuilder;
import com.szq.store.entity.mallBo.BrandBo;
import com.szq.store.service.mallService.BrandService;
import com.szq.store.util.JsonUtils;
import com.szq.store.util.StringUtils;
import com.szq.store.web.controller.base.BaseCotroller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;

/**
 * Created by yxw on 2018/8/2.
 */
@Controller
@RequestMapping("/Brand")
public class BrandController extends BaseCotroller {
    @Resource
    private BrandService brandService;

    @RequestMapping("/delete")
    public void deleteBrand(HttpServletResponse response, Integer id) {
        if (id == null || id == 0) {
            return;
        }
        BrandBo news = brandService.queryBrand(id);

        if (news == null) {
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
        } else {
            brandService.deleteBrand(id);
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
            safeJsonPrint(response, json);
        }

    }

    @RequestMapping("/add")
    public void addBrand(HttpServletResponse response, BrandBo news) {
        if (news == null) {
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        } else if (StringUtils.isEmpty(news.getName())) {
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        } else {
            brandService.addBrand(news);
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
            safeTextPrint(response, json);
        }
    }

    @RequestMapping("/update")
    public void updateBrand(HttpServletResponse response, BrandBo news) {

        BrandBo newsDetail = brandService.queryBrand(news.getId());

        if (news == null) {
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        } else if (StringUtils.isEmpty(news.getName())
                || StringUtils.isEmpty(news.getCreateUser()) || news.getId() == null) {
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        } else if (newsDetail == null) {
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
        } else {
            newsDetail.setName(news.getName());
            newsDetail.setProduced(news.getProduced());
            newsDetail.setCreateUser(news.getCreateUser());
            brandService.updateBrand(newsDetail);
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
            safeTextPrint(response, json);
        }

    }

    /*    @RequestMapping("/detail")
        public void queryBrand (HttpServletResponse response,Integer id){
            List<BrandBo> news = brandService.queryBrandInfo(id);
            if (news == null){
                String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
                safeTextPrint(response, json);
            }else{
                String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(news));
                safeTextPrint(response, json);

            }
        }*/
    @RequestMapping("/onclickdetail")
    public void queryBrandOnclick(HttpServletResponse response, Integer id, Integer pid) {
        HashMap<String, Object> Map = new HashMap<String, Object>();
        if (id != null || pid != null) {
            Map.put("id", id);
            Map.put("pid", pid);
        }
        List<BrandBo> news = brandService.queryBrandOnclick(Map);
        if (news == null) {
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
        } else {
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(news));
            safeTextPrint(response, json);

        }
    }

}
