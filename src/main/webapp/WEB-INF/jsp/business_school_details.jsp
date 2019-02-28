<%--
  Created by IntelliJ IDEA.
  User: yxw
  Date: 2018/7/25
  Time: 13:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>广和商学院</title>
  <meta charset="UTF-8">
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <link rel="icon" href="/static/img/16_16 LOGO.png" type="image/x-icon">
  <!--[if lt IE 9]>
  <script src="/static/js/html5shiv.min.js"></script>
  <script src="/static/js/css3-mediaqueries.min.js"></script>
  <![endif]-->
  <link rel="stylesheet" type="text/css" href="/static/css/m_app.css"/>
  <%--<link rel="stylesheet" media="screen and (max-width:1400px)" href="/static/css/app.css"/>--%>
  <link href="/static/css/page.css" rel="stylesheet"/>
  <style>
    .c_img{
      height: 100%;
      display: block;
    }

    /*@media screen and (max-width: 1400px) {*/
      /*.c_img{*/
        /*width: 100%;height: 100%;*/
        /*display: block;*/
      /*}*/
    /*}*/
  </style>
</head>

<body>
<div class="header_line"></div>
<div class="header news sxy_bg">
  <jsp:include page="nav/header_nav.jsp"></jsp:include>
  <div class="header_big_font_wrapp"></div>
    <h1 align="center"  class="header_big_font">广和商学院 / Guanghe Business School</h1>

</div>
<div class="news_bn">
  <div class="wrapp">
    <span class="bread"><a href="/">首页</a> > 广和商学院</span>
    <div class="bread_btn_wrapp">
      <button class="bread_btn " onclick="window.location.href='/KnowledgeTraining/page#'">知识培养</button>
      <button class="bread_btn " onclick="window.location.href='/PolicyInterpreTation/page#'">政策解读</button>
      <button class="bread_btn" onclick="window.location.href='/ExpertIectureHall/page#'">专家讲堂</button>
    </div>
  </div>
</div>

<div style="width: 100%;background: white;">

  <div style="width: 100%;background: url(/static/img/sxy.png)center; position: relative;height: 1200px;" id="c_img">

    <%--<img src="/static/img/sxy.png" class="c_img"/>--%>
    <a href="/KnowledgeTraining/page"
       style="left: 56%;top: 22%;display: block;width: 245px;height: 37px;position: absolute;"></a>
    <a href="/PolicyInterpreTation/page"
       style="left: 3%;top: 57%;display: block;width: 430px;height: 37px;position: absolute;"></a>
    <a href="/ExpertIectureHall/page"
       style="left: 56%;top: 89.5%;display: block;width: 235px;height: 37px;position: absolute;"></a>

  </div>
</div>









<jsp:include page="footer/footer.jsp"></jsp:include>
</body>
<script src="/static/js/jquery-2.2.0.min.js"></script>
<script src="/static/js/main.js"></script>

</html>
