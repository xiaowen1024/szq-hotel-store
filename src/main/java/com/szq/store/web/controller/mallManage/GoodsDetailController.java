package com.szq.store.web.controller.mallManage;

import com.szq.store.entity.bo.UserBO;
import com.szq.store.entity.dto.ResultDTOBuilder;
import com.szq.store.entity.mallBo.BrandBo;
import com.szq.store.entity.mallBo.GoodsDetailBo;
import com.szq.store.entity.mallBo.GoodsImg;
import com.szq.store.entity.mallBo.GoodsListBo;
import com.szq.store.pop.SystemConfig;
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
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by yxw on 2018/8/20.
 */
@Controller
@RequestMapping("/GoodsDetail")
public class GoodsDetailController extends BaseCotroller {
    @Resource
    private GoodsService goodsService;//商品信息
    @Resource
    private BrandService brandService;//品牌信息
    @Resource
    private GoodsImageService goodsImageService;//轮播图片信息
    @Resource
    private GoodsTypeService goodsTypeService;
    @Resource
    private GoodsFollowService goodsFowllowService;
    @Resource
    private ShoppingCarService  shoppingCarService;

    @RequestMapping("/page")
    public ModelAndView queryCoreTeamList(){
        ModelAndView view = new ModelAndView();
        view.setViewName("/mall/mall_detail");
        return view;
    }
    @RequestMapping("/detail")//列表页
    public void  sort(HttpServletResponse response, HttpServletRequest request,Integer id) {
        if (id==null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }
        List<GoodsDetailBo> goodsDetailBos = goodsService.queryGoodsdetail(id);
       UserBO userBO = super.getLoginUser(request);

    //* 2. 验证账户状态 *//*
        if (userBO != null) {
            List<Integer> userFollowSku = goodsFowllowService.queryUserFollowSku(userBO.getId());
            Map<String,Object> map = new HashMap<String,Object>();
        for (Integer sku :userFollowSku){
            for(GoodsDetailBo goodsDetailBo :goodsDetailBos){
                if (goodsDetailBo.getSku()== sku){
                     goodsDetailBo.setFollowStatus(true);
                }
                }
            }
        }
        BrandBo brandBos = brandService.queryBrandByGoodsId(id);
        List<GoodsImg> goodsImgs =goodsImageService.queryGoodsImgInfoByid(id);
        List<GoodsListBo> goodsDetailBo=goodsService.queryGoodsbrandsDetailList(id);
        JSONObject result = new JSONObject();

    /* 2. 验证账户状态 */
        if (userBO == null) {
            result.put("carcount",0);
        }else {
            Integer count =shoppingCarService.querycount(userBO.getId());
            result.put("carcount",count);
        }
        result.put("recommond",goodsDetailBo);
        result.put("first",goodsTypeService.queryGoodTypeFirstById(id));
        result.put("second",goodsTypeService.queryGoodTypeSecondById(id));
        result.put("brand", brandBos);
        result.put("goods", goodsDetailBos);
        result.put("goodsImgs",goodsImgs);
        result.put("time",System.currentTimeMillis());
        result.put("Url","https://" + SystemConfig.getString("image_bucketName")+".oss-cn-beijing.aliyuncs.com/");
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(result));
        safeTextPrint(response, json);
    }
}
