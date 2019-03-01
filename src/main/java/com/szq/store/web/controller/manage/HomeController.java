package com.szq.store.web.controller.manage;

import com.szq.store.entity.bo.*;
import com.szq.store.entity.dto.ResultDTOBuilder;
import com.szq.store.pop.SystemConfig;
import com.szq.store.service.BannerService;
import com.szq.store.service.InfoService;
import com.szq.store.util.DateUtils;
import com.szq.store.util.JsonUtils;
import com.szq.store.web.controller.base.BaseCotroller;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/home")
public class HomeController extends BaseCotroller {
    @Resource
    private InfoService infoService;
    @Resource
    private BannerService bannerService;
    @RequestMapping("/list")
    public ModelAndView queryCoachList(){
        ModelAndView view = new ModelAndView();
        view.setViewName("/index");
        return view;
    }
    @RequestMapping("/info")
    public void info(HttpServletResponse response,HttpServletRequest request){
        /* 1. 找到对应的账户记录 */
        UserBO userBO = super.getLoginUser(request) ;
        List<BannerBo> bannerBo= bannerService.queryBannerInfo();
        if (bannerBo==null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        }

        List<CompanyIntroductionBo> companyIntroductionBo =infoService.queryCompanyIntroductionInfo();
        if (companyIntroductionBo==null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        }
        List<NewsInformationBO> newsInformationBO = infoService.queryNewsInformationInfo();
        if (newsInformationBO==null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        }
        for(int i=0;i<newsInformationBO.size();i++){
            NewsInformationBO bo = newsInformationBO.get(i);
            Date date = bo.getCreateTime();
            bo.setCreateTimeStr(DateUtils.format(date));
        }
        List<ImageBo> imageBo =infoService.queryImageInfo();
        if (imageBo==null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        }
        List<ModuleBo> moduleBo = infoService.queryModuleInfo();



        List<PrivateClubBo> privateClubBo =infoService.queryPrivateClub();
        if (privateClubBo==null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        }
        List<HomeActivitesBo> homeActivitesBos =infoService.queryHomeActivite();
        if (homeActivitesBos==null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        }
        List<HomeGoodsBo> homeGoodsBos =infoService.queryHomeGoodsBo();
        if (homeGoodsBos==null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        }

        // simple code
        JSONObject result = new JSONObject();
        if (userBO==null){
            result.put("loginStatus",false);
        }else {
            result.put("loginStatus",true);
        }
        result.put("banner", bannerBo);
        result.put("companyIntroduction",companyIntroductionBo);
        result.put("news", JsonUtils.getJsonString4JavaListDate(newsInformationBO, DateUtils.DATE_PATTERN));
        result.put("image",imageBo);
        result.put("detail",moduleBo);
        result.put("club" ,privateClubBo);
        result.put("activiti",homeActivitesBos);
        result.put("goods",homeGoodsBos);

        result.put("Url","https://" + SystemConfig.getString("image_bucketName")+".oss-cn-beijing.aliyuncs.com/");
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(result));
        safeTextPrint(response, json);
    }
}