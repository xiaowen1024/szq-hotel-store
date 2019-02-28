<%--
  Created by IntelliJ IDEA.
  User: yxw
  Date: 2018/9/8
  Time: 22:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
  <title>详情-专家讲堂-广和投资</title>
  <meta charset="UTF-8">
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <link rel="icon" href="/static/img/16_16 LOGO.png" type="image/x-icon">
  <!--[if lt IE 9]>
  <script src="/static/js/html5shiv.min.js"></script>
  <script src="/static/js/css3-mediaqueries.min.js"></script>
  <![endif]-->
  <link rel="stylesheet" type="text/css" href="/static/css/m_app1.css" />
  <link rel="stylesheet" media="screen and (max-width:1400px)" href="/static/css/app1.css" />
  <link rel="stylesheet" type="text/css" href="/static/css/slick.css" />
  <link rel="stylesheet" type="text/css" href="/static/css/slick-theme.css" />
  <link href="/static/css/page.css" rel="stylesheet" />
  <style>
    .header.news {
      background: #4F4F4F;
      height: 450px;
    }

    section {
      width: 100%;
      background: #ECEEEF;
      padding-bottom: 95px;
    }

    .line {
      width: 65px;
      height: 2px;
      background-color: #D3A359;
      margin: 10px auto;
    }

    .content {
      background: white;
      padding: 40px;
    }

    .content .item {
      height: 60px;
      border-bottom: 1px solid #eee;
    }

    .content div a:nth-child(1) {
      line-height: 60px;
    }

    .content div a:nth-child(2) {
      float: right;
      line-height: 60px;
    }

    .news_detail_title_cn {
      font-size: 22px;
      letter-spacing: 1px;
      color: #000000;
      text-align: center;
      padding-top: 97px;
      padding-bottom: 25px;
    }

    .news_detail_title_en {
      font-size: 22px;
      letter-spacing: 1px;
      color: #555555;
      text-align: center;
      padding-top: 25px;
      padding-bottom: 60px;
    }

    .source {
      text-align: center;
      font-size: 14px;
      color: #999999;
      padding: 50px 0;
    }

    @media only screen and (max-width: 1400px) {
      .news_bar {
        width: 1024px;
      }
    }
  </style>

</head>

<body>
<div class="header_line"></div>
<div class="header news zjjt_bg">
  <jsp:include page="/WEB-INF/jsp/nav/header_nav.jsp"></jsp:include>
  <div style="height: 120px;"></div>
  <p align="center" style="font-size:47px">
    专家讲堂<span style="font-size: 32px;"> / Expert Lecture Hall</span></p>
</div>

<div class="news_bn">
  <div class="wrapp">
    <span class="bread"><a href="/">首页</a> > <a href="/BusinessSchoolDetails/list">广和商学院</a> > <a href="/ExpertIectureHall/page">专家讲堂</a>  > 详情页</span>
    <a name="zcjd"></a>
    <div class="bread_btn_wrapp">
      <button class="bread_btn " onclick="window.location.href='/KnowledgeTraining/page#'">知识培养</button>
      <button class="bread_btn " onclick="window.location.href='/PolicyInterpreTation/page#'">政策解读</button>
      <button class="bread_btn bread_btn_active" onclick="window.location.href='/ExpertIectureHall/page#'">专家讲堂</button>
    </div>
  </div>

  <div style="width: 100%;background: white;padding-bottom: 100px;">
    <div class="wrapp" id="wp">

    </div>
  </div>

  <jsp:include page="../footer/footer.jsp"></jsp:include>
</body>
<script src="/static/js/jquery-2.2.0.min.js"></script>
<script src="/static/js/main.js"></script>
<script>
  if(location.href.indexOf("#")!=-1){
    $('html , body').animate({scrollTop:  $(".header").innerHeight()},'fast');
  }
  var id = getUrlParms("id");
  var $wp = $("#wp");
  $.getJSON("/ExpertIectureHall/detail?newsId="+id, function(rs) {
    rs = rs.data;
    var html = ['<p class="news_detail_title_cn">',
      rs.title,
      '</p>',
      '<p class="news_detail_title_en">',
      rs.englishTitle,
      '</p>',
      '<img class="news_bar" src="/static/img/news_bar.png" />',
      '<p class="source">',
      '<span>发布时间：</span>',
      '<span>',
      fmtDate(rs.createTime.time),
      '</span>',
      '<span> | </span>',
      '<span>来源：</span>',
      '<span>',
      rs.source,
      '</span>',

      '</p>'
    ].join("");
    $wp.append(html);
    $wp.append(dealHtml(rs.content));

  })
</script>

</html>