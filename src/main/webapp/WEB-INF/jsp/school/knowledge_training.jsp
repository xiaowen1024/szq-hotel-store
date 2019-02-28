<%--
  Created by IntelliJ IDEA.
  User: yxw
  Date: 2018/8/3
  Time: 14:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>知识培养</title>
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
  <link rel="stylesheet" type="text/css" href="/static/css/slick.css" />
  <link rel="stylesheet" type="text/css" href="/static/css/slick-theme.css" />
  <link href="/static/css/zhishipeiyang.css?v=1" rel="stylesheet"/>
  <link href="/static/layui/css/layui.css" rel="stylesheet"/>
  <style>
    .header.news {
      background: #4F4F4F;
      height: 450px;
    }

    .line{
      width: 65px; height: 2px; background-color: #D3A359; margin: 10px auto;
    }

    .boss_line {
      border-bottom: 2px solid #E2E2E2;
      height: 50px;
      width: 100%;
      background: transparent;
      position: relative;
      margin-bottom: 10px;
    }
    .colorlump{
      height: 20px;
      width: 35px;
      border-radius: 20px;
      position: absolute;
      background: #D3A359;
      bottom: -10px;
    }
    .cl1{
      left: 0;
    }
    .cl2{
      left:50px;
    }
    .cl3{
      left:100px
    }
    .cl4{
      left:150px
    }
    .layui-slider-wrap-btn {
      width: 25px;
      height: 10px;
      border-radius: 10px;
      background: #D3A359;
      display: inline-block;
      vertical-align: middle;
      cursor: pointer;
      transition: .3s;
    }
    .page-bottom-space {
      width: 100%;
      height: 50px;
    }

  </style>
</head>

<body>
<div class="header_line"></div>
<div class="header news sxy_bg">
  <jsp:include page="/WEB-INF/jsp/nav/header_nav.jsp"></jsp:include>
  <div style="height: 120px;"></div>
  <p align="center" style="font-size:37px">
    理财知识培养<span style="font-size: 32px;"> / Training of financial knowledge</span></p>
</div>





<div class="news_bn">
  <div class="wrapp">
    <span class="bread"><a href="/">首页</a> > <a href="/BusinessSchoolDetails/list">广和商学院</a> > 理财知识培养</span>
    <a name="hxtd"></a>
    <div class="bread_btn_wrapp">
      <button class="bread_btn bread_btn_active" onclick="window.location.href='/KnowledgeTraining/page#'">知识培养</button>
      <button class="bread_btn" onclick="window.location.href='/PolicyInterpreTation/page#'">政策解读</button>
      <button class="bread_btn" onclick="window.location.href='/ExpertIectureHall/page#'">专家讲堂</button>
    </div>
  </div>
</div>

<section class="panel team" data-section-name="team">
  <div class="container">
    <div class="inner">
      <div class="newsPlaceholder5"></div>
      <p align="center" style="font-size: 36px;">理财知识培养</p>
      <div class="line"></div>
      <p align="center" style="font-size: 26px;">Training of financial knowledge</p>
      <div>

        <div style="height: 50px;"></div>
      </div>
      <div class="team-box">
        <div class="member-list" id="member-list">


        </div>


        <div class="page-bottom-space"></div>
        <div id="slideTest1" class="demo-slider"></div>
        <div class="page-bottom-space"></div>
      </div>
    </div>
</section>
<jsp:include page="../footer/footer.jsp"></jsp:include>
</body>
<script src="/static/js/jquery-2.2.0.min.js"></script>
<script type="text/javascript" src="/static/js/slick.min.js"></script>
<script src="/static/js/main.js"></script>
<script src="/static/layui/layui.all.js"></script>
<script>
  var $memberList;
  var layuiSlider;
  if(location.href.indexOf("#")!=-1){
    $('html , body').animate({scrollTop:  $(".header").innerHeight()},'fast');
  }
  $.getJSON("/KnowledgeTraining/detail", function(rs) {
    var len = rs.data.news.length;//数据条数(灵活)
    var html1="",html2="";
    for (var i = 0; i < len; i++) {
      html1+='<div class="list-item"><div class="list-item-inner"><p><img style="width: 100%;" src="';
      html1+= rs.data.Url;
      html1+= rs.data.news[i].image;
      html1+='"></p></div></div>';

    }
    $('#member-list').append(html1);

    $memberList = $('.member-list');

    $('.member-list').slick({
      slidesToShow: 3,
      slidesToScroll: 1,
      dots: false,
      centerMode: true,
      focusOnSelect: true,
      centerPadding: '0px',
      arrows: false,
    })
    $memberList.on('afterChange', function(event, slick, currentSlide){
      var a = currentSlide;
      layuiSlider.setValue(a)


    });
    layuiSlider = layui.slider.render({
      elem: '#slideTest1'
      ,min: 1 //最小值
      ,max: len //最大值
      ,theme: '#d3a359' //主题色
      ,change: function(value){
        $memberList.slick("slickGoTo",(value-1))
      }
    });
  });


</script>
</html>
