package com.szq.store.web.controller.mallManage;

import com.szq.store.entity.dto.ResultDTOBuilder;
import com.szq.store.entity.mallBo.BrandBo;
import com.szq.store.entity.mallBo.GoodsListBo;
import com.szq.store.entity.mallBo.GoodsResponseBo;
import com.szq.store.pop.SystemConfig;
import com.szq.store.query.QueryInfo;
import com.szq.store.service.mallService.BrandService;
import com.szq.store.service.mallService.GoodsService;
import com.szq.store.service.mallService.GoodsTypeService;
import com.szq.store.util.DateUtils;
import com.szq.store.util.JsonUtils;
import com.szq.store.web.controller.base.BaseCotroller;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by yxw on 2018/8/2.
 */
@Controller
@RequestMapping("/Goods")
public class GoodsController extends BaseCotroller {
    @Resource
    private GoodsService goodsService;
    @Resource
    private BrandService brandService;
    @Resource
    private GoodsTypeService goodsTypeService;
    @RequestMapping("/page")
    public ModelAndView queryCoreTeamList(){
        ModelAndView view = new ModelAndView();
        view.setViewName("/mall/mall_detaillist");
        return view;
    }
    @RequestMapping("/detailList")//列表页
    public void  sort(HttpServletResponse response,GoodsResponseBo goodsResponseBo,Integer pageNo, Integer pageSize){
        QueryInfo queryInfo = getQueryInfo(pageNo,pageSize);
        Map<String, Object> map = new HashMap<String, Object>();
        if(queryInfo != null){
            map.put("pageOffset", queryInfo.getPageOffset());
            map.put("pageSize", queryInfo.getPageSize());
        }
        if (goodsResponseBo.getLeaveId()!=null){
            map.put("leaveId",goodsResponseBo.getLeaveId());
        }
        if (goodsResponseBo.getGoodsTypeId()!=null){
            map.put("goodsTypeId",goodsResponseBo.getGoodsTypeId());
        }
        if (goodsResponseBo.getBrandId()!=null){
            map.put("brandId",goodsResponseBo.getBrandId());
        }
        if (goodsResponseBo.getSortStatu()!=null){
            map.put("sortStatu",goodsResponseBo.getSortStatu());
        }
        if (goodsResponseBo.getWeightStatu()!=null){
            map.put("weightStatu",goodsResponseBo.getWeightStatu());
        }
        if(goodsResponseBo.getLeaveId()==null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }else {

            List<BrandBo> brandBos = brandService.queryBrandInfo(map);
            List<GoodsListBo> goodsBos = goodsService.queryGoodsInfoSort(map);
            JSONObject result = new JSONObject();
            result.put("first",goodsTypeService.queryGoodTypeById(goodsResponseBo.getLeaveId()));
            if (goodsResponseBo.getGoodsTypeId()!=null) {
                result.put("second", goodsTypeService.queryGoodTypeById(goodsResponseBo.getGoodsTypeId()));
            }
            result.put("brand", brandBos);
            result.put("goods",JsonUtils.getJsonString4JavaListDate(goodsBos, DateUtils.LONG_DATE_PATTERN));
            result.put("count",goodsService.queryGoodsCount(goodsResponseBo));
            result.put("Url","https://" + SystemConfig.getString("image_bucketName")+".oss-cn-beijing.aliyuncs.com/");
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(result));
            safeTextPrint(response, json);
        }
    }
    @RequestMapping("/Add")//添加商品
    public  void  Add(HttpServletResponse response ){

    }



}
