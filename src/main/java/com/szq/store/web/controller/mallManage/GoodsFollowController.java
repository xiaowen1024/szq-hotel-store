package com.szq.store.web.controller.mallManage;

import com.szq.store.entity.bo.UserBO;
import com.szq.store.entity.dto.ResultDTOBuilder;
import com.szq.store.entity.mallBo.GoodsDetailBo;
import com.szq.store.entity.mallBo.GoodsFollowBo;
import com.szq.store.pop.SystemConfig;
import com.szq.store.query.QueryInfo;
import com.szq.store.service.mallService.GoodsFollowService;
import com.szq.store.util.JsonUtils;
import com.szq.store.web.controller.base.BaseCotroller;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by yxw on 2018/8/2.
 */
@Controller
@RequestMapping("/GoodsFollow")
public class GoodsFollowController extends BaseCotroller{
    @Resource
    private GoodsFollowService goodsFollowService;
    @RequestMapping("/delete")
    public void deleteGoodsFollow(HttpServletResponse response, Integer id){
        if (id == null || id == 0 ) {
            return;
        }
        GoodsFollowBo news =goodsFollowService.queryGoodsFollow(id);

        if (news == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
        }else {
            goodsFollowService.deleteGoodsFollow(id);
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
            safeJsonPrint(response, json);
        }

    }
    @RequestMapping("/deleteGoodsDetailFollow")
    public void deleteGoodsFollowDETAIL(HttpServletResponse response,HttpServletRequest request, Integer sku){
        if (sku == null || sku == 0 ) {
            return;
        }
        UserBO userBO = super.getLoginUser(request);
    /* 2. 验证账户状态 */
        if (userBO == null) {
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007", "用户未登录！"));
            super.safeJsonPrint(response, result);
            return;
        }
        GoodsFollowBo goodsFollowBo =new GoodsFollowBo();
        goodsFollowBo.setUserId(userBO.getId());
        goodsFollowBo.setSku(sku);
        GoodsFollowBo news =goodsFollowService.queryGoodsFollow1(goodsFollowBo);

        if (news == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
            return;
        }else {
            goodsFollowService.deleteFollow(goodsFollowBo);
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
            safeJsonPrint(response, json);
        }

    }
    /*
    * 查询已经关注
    * */
    @RequestMapping("/queryUserFollow")
    public  void queryUserFollow(HttpServletResponse response,HttpServletRequest request,Integer pageNo, Integer pageSize){
        QueryInfo queryInfo = getQueryInfo(pageNo,pageSize);
        Map<String, Object> map = new HashMap<String, Object>();
        if(queryInfo != null){
            map.put("pageOffset", queryInfo.getPageOffset());
            map.put("pageSize", queryInfo.getPageSize());
        }
        UserBO userBO = super.getLoginUser(request);
    /* 2. 验证账户状态 */
        if (userBO == null) {
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007", "用户未登录！"));
            super.safeJsonPrint(response, result);
            return;
        }
        map.put("userId",userBO.getId());
        List<GoodsDetailBo> goodsDetailBos =goodsFollowService.queryUserFollow(map);
        JSONObject result = new JSONObject();
        result.put("goodsDetailBos",goodsDetailBos);
        result.put("count",goodsFollowService.queryUserFollowCount(userBO.getId()));
        result.put("Url","https://" + SystemConfig.getString("image_bucketName")+".oss-cn-beijing.aliyuncs.com/");
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(result));
        safeTextPrint(response, json);

    }

    @RequestMapping("/add")
    public void addGoodsFollow (HttpServletResponse response, GoodsFollowBo news,HttpServletRequest request){
        UserBO userBO = super.getLoginUser(request);
    /* 2. 验证账户状态 */
        if (userBO == null) {
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007", "用户未登录！"));
            super.safeJsonPrint(response, result);
            return;
        }
        if(news == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        }else if(news.getSku()==null)
        {
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        }else{
            news.setUserId(userBO.getId());
            goodsFollowService.addGoodsFollow(news);
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
            safeTextPrint(response, json);
        }
    }


    @RequestMapping("/detail")
    public void queryGoodsFollow(HttpServletResponse response,Integer id){
        List<GoodsFollowBo> news = goodsFollowService.queryMyGoodsFollow(id);
        if (news == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
        }else{
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(news));
            safeTextPrint(response, json);

        }
    }

}
