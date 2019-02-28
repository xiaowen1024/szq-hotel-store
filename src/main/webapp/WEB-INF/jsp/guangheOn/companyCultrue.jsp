<%--
  Created by IntelliJ IDEA.
  User: yxw
  Date: 2018/9/8
  Time: 22:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <title>企业文化</title>
  <meta charset="UTF-8">
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <link rel="icon" href="/static/img/16_16 LOGO.png" type="image/x-icon">
  <!--[if lt IE 9]>
  <script src="/static/js/html5shiv.min.js"></script>
  <script src="/static/js/css3-mediaqueries.min.js"></script>
  <![endif]-->
  <link rel="stylesheet" type="text/css" href="/static/css/m_app.css"/>
  <link rel="stylesheet" media="screen and (max-width:1400px)" href="/static/css/app.css"/>

  <!--<link rel="stylesheet" href="css/swiper.css">-->
  <!--<link href="https://cdn.bootcss.com/Swiper/2.7.6/idangerous.swiper.min.css" rel="stylesheet">-->
  <!--<link href="https://cdn.bootcss.com/Swiper/4.3.0/css/swiper.min.css" rel="stylesheet">-->
  <link href="/static/css/page.css" rel="stylesheet"/>
  <style>
    .bread_btn {
      width: 117px;
      height: 36px;
      background-color: #cccccc;
      border-radius: 18px;
      border: transparent;
      margin: 0 5px;
      font-family: PingFang-SC-Bold;
      font-size: 16px;
      line-height: 26px;
      letter-spacing: 0px;
      color: #ffffff;
    }
    .bread_btn.bread_btn_active {
      background: #D3A359;
    }
    .c_img{
      height: 100%;
      display: block;
    }
    @media screen and (max-width: 1400px) {
      .c_img{
        width: 100%;height: 100%;
        display: block;
      }
    }
  </style>
</head>

<body>
<div class="header_line"></div>
<div class="header news zjgh_bg">

  <jsp:include page="../nav/header_nav.jsp"></jsp:include>
  <div class="header_big_font_wrapp"></div>
  <h1 align="center"  class="header_big_font">走进广和 / On Guanghe</h1>
</div>





<div class="news_bn">
  <div class="wrapp">
    <span class="bread"><a href="/">首页</a> > <a href="/CompanyIntroduction/list">走进广和</a> > 企业文化</span>
    <a id="qywh" class="maodian"></a>
    <div class="bread_btn_wrapp">
      <button class="bread_btn " onclick="window.location.href='/CompanyIntroduction/list#gsjs'">公司简介</button>
      <button class="bread_btn " onclick="window.location.href='/ChairmanSpeech/list#dsz'">董事长致辞</button>
      <button class="bread_btn " onclick="window.location.href='/CoreTeam/list#hxtd'">核心团队</button>
      <button class="bread_btn bread_btn_active" onclick="window.location.href='/companyCultrue/list#qywh'">企业文化</button>
      <button class="bread_btn  " onclick="window.location.href='/BigEvent/list#fzlc'">发展历程</button>
      <button class="bread_btn " onclick="window.location.href='/CorporateHonor/list#qyry'">企业荣誉</button>

    </div>
  </div>
</div>
<div style="height: 90px;"></div>
<div class="news_title_dt_wrapp" style="width: 161px;">
  <h3 class="title" >企业文化</h3>
</div>
<div class="news_line_dt_wrapp">
  <div></div>
</div>
<div class="news_en_dt_wrapp" style="width: 268px;">
  <h3 class="en_title" >Corporate Culture</h3>
</div>
<div style="height: 50px;"></div>
<div style="width: 100%;background: white;">
  <img id="img" class="c_img"/>
</div>










<jsp:include page="../footer/footer.jsp"></jsp:include>
</body>
<script src="/static/js/jquery-2.2.0.min.js"></script>
<script src="/static/js/main.js"></script>
<script>
  $.ajax({
    url: "/companyCultrue/infoPc",
    dataType: "json",
    success:function(rs){
      $("#img").attr('src',rs.data.Url+rs.data.CompanyCultrueBO.image)
    }
  })
  $(function(){


    if(location.href.indexOf("#")!=-1){
      $('html , body').animate({scrollTop:  $(".header").innerHeight()},'fast');
    }

  })
</script>
</html>
