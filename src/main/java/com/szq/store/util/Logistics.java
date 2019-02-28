package com.szq.store.util;/*
package com.guanghe.api.util;

*
 * Created by yxw on 2018/8/31.


public class Logistics {
    public String syncOrderLogistics(String orderNum, String logisticsCompany, String logisticsNum,
                                     String logisticsCompanyName){
        TaskRequest req = new TaskRequest();
        req.setCompany(logisticsCompany);
        req.setNumber(logisticsNum);
        String base = SystemConfig.getString("project_base_url");
        req.getParameters().put("callbackurl", base + "orderLogistics_logisticsCallBack.do");
        req.setKey("haNrFmRI5951");

        HashMap<String, String> p = new HashMap<String, String>();
        p.put("schema", "json");
        p.put("param", JsonUtils.getJsonString4JavaPOJO(req));
        try {
            String ret = HttpClientUtils.getContentByPost("http://www.kuaidi100.com/poll", p, "UTF-8");
            System.out.println(ret);
            TaskResponse resp = (TaskResponse) JsonUtils.getObject4JsonString(ret, TaskResponse.class);
            System.out.println(resp.getReturnCode());
            if (resp.getResult() == true) {
                System.out.println("订阅成功");
                return "success";
            } else {
                System.out.println("订阅失败");
                return "fail";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }        return "fail";

    public void logisticsCallBack() throws Exception{
        NoticeResponse resp = new NoticeResponse();
        resp.setResult(false);*/
/**//*

        resp.setReturnCode("500");
        resp.setMessage("保存失败");
        try {
            String param = getRequest().getParameter("param");
            NoticeRequest noticeRequest = (NoticeRequest) JsonUtils.getObject4JsonString(param,
                    NoticeRequest.class);

            Result result = noticeRequest.getLastResult();
            List<OrderLogistics> lstLogistics = orderLogisticsService.queryOrderLogistics(result.getCom(),
                    result.getNu());
            if(!CollectionUtils.isEmpty(lstLogistics)){
                for(OrderLogistics logistic : lstLogistics){
                    logistic.setStatus(Integer.valueOf(result.getState()));
                    logistic.setLogisticsInfo(JsonUtils.getJsonString4JavaPOJO(result));
                    logistic.setLastUpdateTime(new Date());
                }
                orderLogisticsService.updateLogisticsInfo(lstLogistics);
            }
            resp.setResult(true);
            resp.setReturnCode("200");
            resp.setMessage("保存成功");
            //这里必须返回，否则认为失败，过30分钟又会重复推送。
            getResponse().getWriter().print(JsonUtils.getJsonString4JavaPOJO(resp));
        } catch (Exception e) {
            resp.setMessage("保存失败" + e.getMessage());
            //保存失败，服务端等30分钟会重复推送。
            getResponse().getWriter().print(JsonUtils.getJsonString4JavaPOJO(resp));
        }
    }
}
*/
