package com.szq.store.web.controller.mallManage;


import com.szq.store.entity.bo.UserBO;
import com.szq.store.entity.dto.ResultDTOBuilder;
import com.szq.store.entity.mallBo.GoodsDetailBo;
import com.szq.store.entity.mallBo.ShoppingCarBo;
import com.szq.store.pop.SystemConfig;
import com.szq.store.service.mallService.ShoppingCarService;
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
 * Created by shishiming on 2018/8/2.
 */
@Controller
@RequestMapping("/shoppingCar")
public class ShoppingCarController extends BaseCotroller {

    @Resource
    private ShoppingCarService shoppingCarService;

    /**
     * 查询列表
     */
    @RequestMapping("/page")
    public ModelAndView queryCoreTeamList(){
        ModelAndView view = new ModelAndView();
        view.setViewName("/mall/mall_car");
        return view;
    }
    @RequestMapping("/list")
    public void queryShoppingCarList(HttpServletResponse response,HttpServletRequest request){
        UserBO userBO = super.getLoginUser(request);
    /* 2. 验证账户状态 */
        if (userBO == null) {
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007", "用户未登录！"));
            super.safeJsonPrint(response, result);
            return;
        }

        Map<String, Object> map = new HashMap<String,Object>();
        map.put("userId",userBO.getId());
        Map<String, Object> resultMap = new HashMap<String, Object>();
        resultMap.put("data",shoppingCarService.queryShoppingCarList(map));
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(resultMap));

        safeTextPrint(response, json);
    }



    /**
     * 根据id查询详情
     * @param id
     */
    @RequestMapping("/detail")
    public void queryShoppingCarById(HttpServletResponse response, Integer id){
//
        if (id == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }

        ShoppingCarBo bo = shoppingCarService.queryShoppingCarById(id);
        if (bo == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
            return;
        }

        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(bo));
        safeTextPrint(response, json);

    }
    @RequestMapping("updateNumber")
    public  void updateNumber(HttpServletResponse response ,ShoppingCarBo bo,HttpServletRequest request){
        UserBO userBO = super.getLoginUser(request);
    /* 2. 验证账户状态 */
        if (userBO == null) {
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007", "用户未登录！"));
            super.safeJsonPrint(response, result);
            return;
        }
        ShoppingCarBo shoppingCarBo =shoppingCarService.queryShoppingCarById(bo.getCarId());
        if(shoppingCarBo == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }
        shoppingCarBo.setNumber(bo.getNumber());
        shoppingCarService.updateShoppingCarbyId(shoppingCarBo);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);
    }
    @RequestMapping("/shopingCarDetail")
    public void queryShoppingCar(HttpServletResponse response,HttpServletRequest request){
        UserBO userBO = super.getLoginUser(request);
       /* 2. 验证账户状态 */
        if (userBO == null) {
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007", "用户未登录！"));
            super.safeJsonPrint(response, result);
            return;
        }

        List<GoodsDetailBo> goodsDetailBos =shoppingCarService.queryShoppingCar(userBO.getId());
        JSONObject result = new JSONObject();
        result.put("goodsDetailBos",goodsDetailBos);
        result.put("Url","https://" + SystemConfig.getString("image_bucketName")+".oss-cn-beijing.aliyuncs.com/");
        result.put("time",System.currentTimeMillis());
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(result));
        safeTextPrint(response, json);


    }
    /*
    * 批量关注
    *
    * */
    @RequestMapping("/addFollowList")
    public void addFollowList(HttpServletResponse response,String jsons,HttpServletRequest request) {
        if (jsons==null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }
        String[] value =jsons.split(",");

        List<Integer> productSkuId = new ArrayList<Integer>();
        for (int i = 0; i <value.length; i++)
        {
            productSkuId.add(Integer.parseInt(value[i]));
        }
        UserBO userBO = super.getLoginUser(request);
    /* 2. 验证账户状态 */
        if (userBO == null) {
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007", "用户未登录！"));
            super.safeJsonPrint(response, result);
            return;
        }
        Integer userId =userBO.getId();
        List<Integer> ids =shoppingCarService.queryFollow(userId);
        List<Integer> arr = new ArrayList<Integer>();
        for (int i = productSkuId.size()-1; i>=0 ;i--) {         //对查出来的Sku遍历
            for (int j = 0; j < ids.size(); j++) {
                //对前端给的数组遍历
                if (productSkuId.get(i).equals(ids.get(j))) {
                    //如果查出来的sku不等于数组中的值
                    productSkuId.remove(productSkuId.get(i));
                    break;
                }
            }
        }

        if (productSkuId.size() == 0 ){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success("全部是已关注 "));
            safeTextPrint(response, json);
            return;
        }

        HashMap<String,Object> Map = new HashMap<String,Object>();

        Map.put("userId",userId);
        Map.put("list", productSkuId);

        shoppingCarService.AddFollowList(Map);  //根据新的数组进行添加

    }

    /*
    * 批量删除购物车
    * */
    @RequestMapping("/deleteInfoList")
    public void deleteInfoList(HttpServletResponse response,String jsons) {
        String[] value =jsons.split(",");
        Integer[] intTemp = new Integer[value.length];
        for (int i = 0; i <value.length; i++)
        {
            intTemp[i] =  Integer.parseInt(value[i]);
        }
        //直接传数组
        shoppingCarService.deleteInfoList(intTemp);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);
    }


    @RequestMapping("/deleteAll")
    public void deleteAll(HttpServletRequest request,HttpServletResponse response) {
        UserBO userBO = super.getLoginUser(request);
    /* 2. 验证账户状态 */
        if (userBO == null) {
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007", "用户未登录！"));
            super.safeJsonPrint(response, result);
            return;
        }
        shoppingCarService.deleteAll(userBO.getId());
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);
    }
    /**
     * 根据id删除
     * @param id
     */
    @RequestMapping("/delete")
    public void deleteShoppingCarbyId(HttpServletResponse response, Integer id){
        if (id == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }

        ShoppingCarBo bo = shoppingCarService.queryShoppingCarById(id);
        if (bo == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
            return;
        }

        shoppingCarService.deleteShoppingCarbyId(id);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);

    }


    /**
     * 新增
     * @param bo
     */
    @RequestMapping("/add")
    public void addShoppingCar(HttpServletResponse response, HttpServletRequest request,ShoppingCarBo bo) {
        UserBO userBO = super.getLoginUser(request);
    /* 2. 验证账户状态 */
        if (userBO == null) {
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007", "用户未登录！"));
            super.safeJsonPrint(response, result);
            return;
        }
        if (bo == null || bo.getSku() == null || bo.getNumber() == null) {
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }
        ShoppingCarBo query = new ShoppingCarBo();
        query.setUserId(userBO.getId());
        query.setSku(bo.getSku());
        ShoppingCarBo news = shoppingCarService.queryShopping(query);
        if (news != null) {
            Integer number = news.getNumber() + bo.getNumber();
            bo.setNumber(number);
            bo.setUserId(userBO.getId());
            bo.setSku(news.getSku());
            shoppingCarService.updateShopping(bo);
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
            safeTextPrint(response, json);
        } else {
            bo.setUserId(userBO.getId());
            shoppingCarService.addShoppingCar(bo);
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
            safeTextPrint(response, json);

        }
    }


    /**
     * 修改
     * @param bo
     */
    @RequestMapping("/update")
    public void updateShoppingCarbyId(HttpServletResponse response, ShoppingCarBo bo){
        ShoppingCarBo newBo = shoppingCarService.queryShoppingCarById(bo.getCarId());

        if(bo == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }
        if(bo.getSku()==null || bo.getUserId() == null || bo.getNumber() == null || bo.getCarId() == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }
        if(newBo == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
            return;
        }


        shoppingCarService.updateShoppingCarbyId(bo);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);
    }

    /*@RequestMapping("/deleteGoodsList")
    public void deleteGoodsList(HttpServletResponse response, String idsJson){
        if (idsJson == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }

        JSONArray jsonArray = JSONArray.fromObject(idsJson);
        List<String> ids = JSONArray.toList(jsonArray, ArrayList.class);

        shoppingCarService.deleteShoppingCarbyIds(ids);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);

    }*/

    @RequestMapping("/deleteInvalidGoods")
    public void deleteInvalidGoods(HttpServletResponse response, Integer userId){
        if (userId == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }

        HashMap<String,Object> parMap = new HashMap<String,Object>();

        parMap.put("userId",userId);
        parMap.put("state","失效");

        //查询所有的失效商品的id
        List<String> ids = shoppingCarService.queryInvalidGoodsList(parMap);
        if (ids == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
            return;
        }

        shoppingCarService.deleteShoppingCarbyIds(ids);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);

    }
}
