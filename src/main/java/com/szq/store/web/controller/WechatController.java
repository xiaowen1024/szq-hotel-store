package com.szq.store.web.controller;

import com.alibaba.fastjson.JSON;
import com.szq.store.entity.bo.WechatBo;
import com.szq.store.entity.bo.WechatUserInfo;
import com.szq.store.entity.dto.ResultDTOBuilder;
import com.szq.store.service.WechatUserInfoService;
import com.szq.store.util.JsonUtils;
import com.szq.store.util.wechat.CheckUtil;
import com.szq.store.util.wechat.HttpClientUtil;
import com.szq.store.web.controller.base.BaseCotroller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.Map;

/**
 * Created by shishiming on 2018/8/10.
 */
@Controller
@RequestMapping("/wechat")
public class WechatController extends BaseCotroller{

    final static String APPID = "wx07eab51bc21b5c7d";
    final static String SECRET = "0919b2b0c8de3afe76ba93e34f55b00f";
    final static String AppSecret = "0919b2b0c8de3afe76ba93e34f55b00f";


    @Resource
    WechatUserInfoService wechatUserInfoService;

    @RequestMapping(value = "/wx",method= RequestMethod.GET)
    public void wx(HttpServletRequest request,HttpServletResponse response){
        String signature = request.getParameter("signature");
        String timestamp = request.getParameter("timestamp");
        String nonce = request.getParameter("nonce");
        String echostr = request.getParameter("echostr");
        PrintWriter out = null;
        try {
            out = response.getWriter();
            if(CheckUtil.checkSignature(signature, timestamp, nonce)){
                out.write(echostr);
            }
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }finally{
            out.close();
        }

    }

    //https://open.weixin.qq.com/connect/oauth2/authorize?appid=APPID&redirect_uri=REDIRECT_URI&response_type=code&scope=SCOPE&state=STATE#wechat_redirect
    //若提示“该链接无法访问”，请检查参数是否填写错误，是否拥有scope参数对应的授权作用域权限。
    @RequestMapping(value = "/oauth2",method= RequestMethod.GET)
    public void oauth2(HttpServletRequest request,HttpServletResponse response){
        String REDIRECT_URI = "http%3a%2f%2f21x41430n1.51mypc.cn%2fapp";
        String url = "https://open.weixin.qq.com/connect/oauth2/authorize?appid="+ APPID +"&redirect_uri=" +REDIRECT_URI + "&response_type=code&scope=snsapi_base&state=117#wechat_redirect";
        System.out.println(url);
        String codeResult = HttpClientUtil.httpGetRequest(url);
        System.out.println(codeResult);
    }

    @RequestMapping(value = "/singIn",method= RequestMethod.GET)
    public void singIn(HttpServletRequest request,HttpServletResponse response,String code,String state){

        //请求用户openid
        String access_token_url = "https://api.weixin.qq.com/sns/oauth2/access_token?appid="+APPID+"&secret="+AppSecret+"&code="+code+"&grant_type=authorization_code";
        String access_token_url_result = HttpClientUtil.httpGetRequest(access_token_url);

        if (access_token_url_result == null || "".equals(access_token_url_result)) {
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001", "未获取到openid！")) ;
            super.safeJsonPrint(response , result);
            return ;
        }

        Map<String,Object> tokenMap = JSON.parseObject(access_token_url_result);

        //请求判断数据库中有没有微信用户信息
        //https://api.weixin.qq.com/sns/oauth2/refresh_token?appid=APPID&grant_type=refresh_token&refresh_token=REFRESH_TOKEN
        String refresh_token_url = "https://api.weixin.qq.com/sns/oauth2/refresh_token?appid="+APPID+"&grant_type=refresh_token&refresh_token="+tokenMap.get("refresh_token");
        String refresh_token_url_result = HttpClientUtil.httpGetRequest(refresh_token_url);

        if (refresh_token_url_result == null || "".equals(refresh_token_url_result)) {
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001", "刷新access_token失败！")) ;
            super.safeJsonPrint(response , result);
            return ;
        }


        //https://api.weixin.qq.com/sns/userinfo?access_token=ACCESS_TOKEN&openid=OPENID&lang=zh_CN
        String userinfo_url = "https://api.weixin.qq.com/sns/userinfo?access_token="+tokenMap.get("access_token")+"&openid="+tokenMap.get("openid")+"&lang=zh_CN";
        String userinfo_result = HttpClientUtil.httpGetRequest(userinfo_url);
        try {
            userinfo_result = new String(userinfo_result.getBytes("ISO-8859-1"), "UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        if (userinfo_result == null || "".equals(userinfo_result)) {
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001", "未获取到微信用户信息！")) ;
            super.safeJsonPrint(response , result);
            return ;
        }
        Map<String,Object> wechatUserInfoMap = JSON.parseObject(userinfo_result);

        WechatUserInfo userInfo = new WechatUserInfo();
        userInfo.setOpenId((String) wechatUserInfoMap.get("openid"));
        userInfo.setNickname((String) wechatUserInfoMap.get("nickname"));
        userInfo.setSex((Integer) wechatUserInfoMap.get("sex"));
        userInfo.setCity((String) wechatUserInfoMap.get("city"));
        userInfo.setProvince((String) wechatUserInfoMap.get("province"));
        userInfo.setCountry((String) wechatUserInfoMap.get("country"));
        String headUrl = (String) wechatUserInfoMap.get("headimgurl");
        headUrl = headUrl.replace("\\/","");
        userInfo.setHeadImgUrl(headUrl);
        userInfo.setLanguage((String) wechatUserInfoMap.get("language"));
        //
        //查询是否有该微信用户信息
        int count = wechatUserInfoService.getWechatUserCount(userInfo.getOpenId());
        if(count == 1){
            wechatUserInfoService.updateWechatUserInfo(userInfo);
        }else {
            int userId = wechatUserInfoService.addWechatUserInfo(userInfo);
        }

        String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(userInfo)) ;
        super.safeJsonPrint(response , result);
        return ;
    }
    @RequestMapping("/login")
    public void wechatLogin(HttpServletRequest request){
        String code = request.getParameter("code");
        System.out.println("code：" + code);
        // 获取access_token、openId信息
        String url = "https://api.weixin.qq.com/sns/oauth2/access_token?appid=" + APPID
                +"&secret=" + SECRET + "&code=" + code +"&grant_type=authorization_code";
        String result = HttpClientUtil.httpGetRequest(url);
        System.out.println("result：" + result);
        // 获取登录用户信息
        WechatBo wechatBo = (WechatBo)JsonUtils.getObject4JsonString(result, WechatBo.class);
        String wechatInfoUrl = "https://api.weixin.qq.com/cgi-bin/user/info?access_token="
                +  wechatBo.getAccess_token() + "&openid=" + wechatBo.getOpenid() + "&lang=zh_CN";
        String wechatInfoResult = HttpClientUtil.httpGetRequest(wechatInfoUrl);
        System.out.println("wechatInfoResult：" + wechatInfoResult);
    }


}
