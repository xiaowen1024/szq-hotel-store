package com.szq.store.web.controller.mallManage;

import com.szq.store.common.constants.SysConstants;
import com.szq.store.entity.bo.UserBO;
import com.szq.store.entity.dto.ResultDTOBuilder;
import com.szq.store.pop.SystemConfig;
import com.szq.store.query.QueryInfo;
import com.szq.store.service.mallService.BrowseHistoryService;
import com.szq.store.util.JsonUtils;
import com.szq.store.util.redisUtils.RedissonHandler;
import com.szq.store.web.controller.base.BaseCotroller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import redis.clients.jedis.Jedis;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;

/**
 * Created by shishiming on 2018/8/31.
 */
@Controller
@RequestMapping("/history")
public class BrowseHistoryController extends BaseCotroller {

    @Resource
    private BrowseHistoryService browseHistoryService;

    /**
     * 新增浏览历史
     * @param sku
     */
    @RequestMapping("/addHistory")
    public void addHistory(HttpServletResponse response,HttpServletRequest request,Integer sku){
        if (sku == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }
        UserBO userBO = super.getLoginUser(request);

        /* 2. 验证账户状态 */
        if (userBO == null) {
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007", "用户未登录！"));
            super.safeJsonPrint(response, result);
            return;
        }

        Jedis jedis=new Jedis("wisewin-tech.com",6379); // 创建客户端 设置IP和端口
        jedis.auth("sunshibo1!"); // 设置密码
        Set<String> set = jedis.keys(createKey(SysConstants.Browse_History + userBO.getId(), "*"));
        jedis.close();
        if(set == null || set.size() == 0){

        }else {
            Iterator<String> it = set.iterator();
            for (String str : set) {
                System.out.println(str);
                Map<String,Object> map = RedissonHandler.getInstance().get(str);
                if (map.get("sku").equals(sku)){
                    RedissonHandler.getInstance().delete(str);
                }
            }
        }

        Map<String,Object> map = new HashMap<String, Object>();
        map.put("sku",sku);
        map.put("create_time",System.currentTimeMillis());
        RedissonHandler.getInstance().set(createKey(SysConstants.Browse_History + userBO.getId(), System.currentTimeMillis()+""), map, 60 * 60 * 24 * 30l);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);
        return;
    }



    /**
     * 浏览历史列表
     */
    @RequestMapping("/list")
    public void getHistoryList(HttpServletResponse response,HttpServletRequest request,Integer pageNo, Integer pageSize){

        UserBO userBO = super.getLoginUser(request);

        /* 2. 验证账户状态 */
        if (userBO == null) {
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007", "用户未登录！"));
            super.safeJsonPrint(response, result);
            return;
        }

        Jedis jedis=new Jedis("wisewin-tech.com",6379); // 创建客户端 设置IP和端口
        jedis.auth("sunshibo1!"); // 设置密码
        Set<String> set = jedis.keys(createKey(SysConstants.Browse_History + userBO.getId(), "*"));
        jedis.close();

        if(set == null ){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010004", "没有浏览记录！"));
            safeTextPrint(response, json);
            return;
        }
        if(set.size() == 0){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010004", "没有浏览记录！"));
            safeTextPrint(response, json);
            return;
        }
        List<Integer> strList = new ArrayList<Integer>();
        Iterator<String> it = set.iterator();
        for (String str : set) {
            System.out.println(str);
            Map<String,Object> map = RedissonHandler.getInstance().get(str);
            strList.add((Integer) map.get("sku"));
        }

        QueryInfo queryInfo = getQueryInfo(pageNo, pageSize);
        Map<String, Object> map = new HashMap<String, Object>();
        if(queryInfo != null){
            map.put("pageOffset", queryInfo.getPageOffset());
            map.put("pageSize", queryInfo.getPageSize());
        }

        map.put("list",strList);
        map.put("userId", userBO.getId());
        List<HashMap<String,Object>> list = browseHistoryService.getBrowseHistoryList(map);

        for(int i=0;i<list.size();i++){
            HashMap<String,Object> map1 = list.get(i);
            for (String str : set) {
                System.out.println(str);
                Map<String,Object> map2 = RedissonHandler.getInstance().get(str);
                if((Integer) map1.get("sku") == (Integer) map2.get("sku")){
                    map1.put("key",str);
                    map1.put("time",map2.get("create_time"));

                }

            }
        }

        Collections.sort(list, new Comparator<HashMap<String, Object>>() {
            @Override
            public int compare(HashMap<String, Object> o1, HashMap<String, Object> o2) {
                return (int) ((Long) o2.get("time") - (Long) o1.get("time"));
            }
        });

        HashMap<String,Object> resultMap = new HashMap<String, Object>();
        resultMap.put("data",list);
        resultMap.put("count",browseHistoryService.getBrowseHistoryListCount(map));
        resultMap.put("now", System.currentTimeMillis());
        resultMap.put("Url", "https://" + SystemConfig.getString("image_bucketName") + ".oss-cn-beijing.aliyuncs.com/");
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(resultMap));
        safeTextPrint(response, json);
        return;
    }


    @RequestMapping("/delete")
    public void deleteHistory(HttpServletResponse response,HttpServletRequest request,String key){
        if (key == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }

        UserBO userBO = super.getLoginUser(request);

        /* 2. 验证账户状态 */
        if (userBO == null) {
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007", "用户未登录！"));
            super.safeJsonPrint(response, result);
            return;
        }

        RedissonHandler.getInstance().delete(key);

        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);
        return;
    }
}
