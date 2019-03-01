package com.szq.store.web.controller.mallManage;

import com.szq.store.entity.bo.UserBO;
import com.szq.store.entity.dto.ResultDTOBuilder;
import com.szq.store.entity.mallBo.*;
import com.szq.store.pop.SystemConfig;
import com.szq.store.query.QueryInfo;
import com.szq.store.service.mallService.*;
import com.szq.store.util.JsonUtils;
import com.szq.store.web.controller.base.BaseCotroller;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by yxw on 2018/8/7.
 */
@Controller
@RequestMapping("/MallHome")
public class MallHomeController extends BaseCotroller {
    @Resource
    private MallBannerServise mallBannerServise;
    @Resource
    private MallImageService mallImageService;
    @Resource
    private GoodsService goodsService;
    @Resource
    private RecommendImageService recommendImageService;
    @Resource
    private GoodsTypeService goodsTypeService;
    @Resource
    private  ShoppingCarService shoppingCarService;
    @RequestMapping("/list")
    public ModelAndView queryCoreTeamList(){
        ModelAndView view = new ModelAndView();
        view.setViewName("/mall/mall_index");
        return view;
    }
    @RequestMapping("/list1")
    public ModelAndView query(){
        ModelAndView view = new ModelAndView();
        view.setViewName("/mall/helpmall");
        return view;
    }
    @RequestMapping("/info")
    public void queryMallImage (HttpServletResponse response,HttpServletRequest request){
        List<MallImageBo> mallImageBos=mallImageService.queryMallImageInfo();
        List<MallBannerBo> mallBannerBos =mallBannerServise.queryMallBannerInfo();
        List<GoodsDetailBo> goodsBos= goodsService.queryHomeGoodsList();
        List<RecommendImageBo> recommendImageBos =recommendImageService.queryRecommendImageInfo();
        List<GoodTypeBo> goodTypeBos = goodsTypeService.queryGoodType();

        JSONObject result = new JSONObject();
        UserBO userBO = super.getLoginUser(request);
    /* 2. 验证账户状态 */
        if (userBO == null) {
           result.put("count",0);
        }else {
            Integer count =shoppingCarService.querycount(userBO.getId());
            result.put("count",count);
        }
        result.put("banner", mallBannerBos);
        result.put("image",mallImageBos);
        result.put("goods",goodsBos);
        result.put("recommondImage",recommendImageBos);
        result.put("goodsType",goodTypeBos);
        result.put("Url","https://" + SystemConfig.getString("image_bucketName")+".oss-cn-beijing.aliyuncs.com/");
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(result));
        safeTextPrint(response, json);
    }
    @RequestMapping("/wapinfo")
    public void querywap (HttpServletResponse response,HttpServletRequest request,Integer pageNo, Integer pageSize){
        List<MallImageBo> mallImageBos=mallImageService.queryMallImageInfo();
        List<MallBannerBo> mallBannerBos =mallBannerServise.queryMallBannerInfo();
        //商品加上分页
        // 参数：当前页和页面容量
        QueryInfo queryInfo = getQueryInfo(pageNo, pageSize);
        Map<String, Object> map = new HashMap<String, Object>();
        if (queryInfo != null) {
            map.put("pageOffset", queryInfo.getPageOffset());
            map.put("pageSize", queryInfo.getPageSize());
        }
        List<GoodsDetailBo> goods= goodsService.queryHomeGoodsList1(map);

        int goodsCount=goodsService.queryHomeGoodsList1count();





        List<GoodsDetailBo> goodscreate= goodsService.queryHomeGoodsList2();
        List<RecommendImageBo> recommendImageBos =recommendImageService.queryRecommendImageInfo();
        List<GoodTypeBo> goodTypeBos = goodsTypeService.queryGoodType();
       List<mallHomeBo> mallHomeBos =new ArrayList<mallHomeBo>();
        for (RecommendImageBo s:recommendImageBos){
            mallHomeBo mallHomebo =new mallHomeBo();
            mallHomebo.setId(s.getId());
            mallHomebo.setCreateUser(s.getCreateUser());
            mallHomebo.setGoodsTypeId(s.getGoodsTypeId());
            mallHomebo.setImgUrl(s.getImage());
            mallHomebo.setUpdateTime(s.getUpdateTime());
            mallHomebo.setUpdateUser(s.getUpdateUser());
            mallHomebo.setLeaveId(s.getLeaveId());
            mallHomeBos.add(mallHomebo);
        }
        JSONObject result = new JSONObject();
        UserBO userBO = super.getLoginUser(request);
    /* 2. 验证账户状态 */
        if (userBO == null) {
            result.put("count",0);
        }else {
            Integer count =shoppingCarService.querycount(userBO.getId());
            result.put("count",count);
        }
        result.put("banner", mallBannerBos);
        result.put("image",mallImageBos);
        result.put("goods",goods);
        result.put("goodsCount",goodsCount);
        result.put("goodscreate",goodscreate);
        result.put("recommondImage",mallHomeBos);
        result.put("goodsType",goodTypeBos);
        result.put("Url","https://" + SystemConfig.getString("image_bucketName")+".oss-cn-beijing.aliyuncs.com/");
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(result));
        safeTextPrint(response, json);
    }
    @RequestMapping("/wapinfogoods")
    public void querywapgoods (HttpServletResponse response,HttpServletRequest request,Integer pageNo, Integer pageSize){
        //商品加上分页
        // 参数：当前页和页面容量
        QueryInfo queryInfo = getQueryInfo(pageNo, pageSize);
        Map<String, Object> map = new HashMap<String, Object>();
        if (queryInfo != null) {
            map.put("pageOffset", queryInfo.getPageOffset());
            map.put("pageSize", queryInfo.getPageSize());
        }
        List<GoodsDetailBo> goods= goodsService.queryHomeGoodsList1(map);
        int goodsCount=goodsService.queryHomeGoodsList1count();
        JSONObject result = new JSONObject();
        result.put("goods",goods);
        result.put("goodsCount",goodsCount);
        result.put("Url","https://" + SystemConfig.getString("image_bucketName")+".oss-cn-beijing.aliyuncs.com/");
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(result));
        safeTextPrint(response, json);
    }
}
