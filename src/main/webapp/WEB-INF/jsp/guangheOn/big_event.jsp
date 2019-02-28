<%--
  Created by IntelliJ IDEA.
  User: yxw
  Date: 2018/7/25
  Time: 13:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <title>发展历程</title>
  <meta charset="UTF-8">
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <link rel="icon" href="/static/img/16_16 LOGO.png" type="image/x-icon">
  <!--[if lt IE 9]>
  <script src="/static/js/html5shiv.min.js"></script>
  <script src="/static/js/css3-mediaqueries.min.js"></script>
  <![endif]-->
  <link rel="stylesheet" type="text/css" href="/static/css/m_app.css" />
  <link rel="stylesheet" media="screen and (max-width:1400px)" href="/static/css/app.css" />
  <link href="/static/css/dashijian(1).css" rel="stylesheet" />
  <style>
    .dimg_wrapp {
      width: 98%;
      height: 330px;
      opacity: 0;
      position: absolute;
      bottom: 0px;
    }

    @media screen and (min-width: 1400px) {
      .dimg_wrapp {
        width: 98%;
        height: 330px;
        opacity: 0;
        position: absolute;
        bottom: 0px;
        background: transparent;
      }
    }

    img {
      vertical-align: bottom;
      width: 100%;
      height: 100%;
    }
    .dactive h3{
      padding-left: 20px;
    }
  </style>
</head>

<body>
<div class="header_line"></div>
<div class="header news  zjgh_bg">

  <jsp:include page="../nav/header_nav.jsp"></jsp:include>
  <div class="header_big_font_wrapp"></div>
  <h1 align="center"  class="header_big_font">走进广和 / On Guanghe</h1>

</div>
<div class="news_bn">
  <div class="wrapp">
    <span class="bread"><a href="/">首页</a> > <a href="/CompanyIntroduction/list">走进广和</a> > 发展历程</span>
    <a id="fzlc" class="maodian"></a>
    <div class="bread_btn_wrapp">
      <button class="bread_btn " onclick="window.location.href='/CompanyIntroduction/list#gsjs'">公司简介</button>
      <button class="bread_btn " onclick="window.location.href='/ChairmanSpeech/list#dsz'">董事长致辞</button>
      <button class="bread_btn " onclick="window.location.href='/CoreTeam/list#hxtd'">核心团队</button>
      <button class="bread_btn " onclick="window.location.href='/companyCultrue/list#qywh'">企业文化</button>

      <button class="bread_btn bread_btn_active " onclick="window.location.href='/BigEvent/list#fzlc'">发展历程</button>
      <button class="bread_btn " onclick="window.location.href='/CorporateHonor/list#qyry'">企业荣誉</button>
    </div>
  </div>
</div>

<div style="width: 100%;background: white; background: url(/static/img/banner1back.png) no-repeat; background-position: bottom;">
  <div class="newsPlaceholder5"></div>
  <div class="news_page_wrapp">
    <p align="center" style="font-size: 36px;">发展历程</p >
    <div style="width: 65px; height: 2px; background-color: #D3A359; margin: 10px auto;"></div>
    <p align="center" style="font-size: 26px;"> Development History</p >
    <div class="newsPlaceholder1"></div>
  </div>
  <div class="big_event">
    <div class="wrapp" id="wrapp">

    </div>
    <div class="newsPlaceholder1"></div>
  </div>
</div>










<jsp:include page="../footer/footer.jsp"></jsp:include>
</body>
<script src="/static/js/jquery-2.2.0.min.js"></script>
<script src="/static/js/main.js"></script>
<script>
  var slideIndex = 0;
  var imgs = "";
  $.getJSON("/BigEvent/detail", function(rs) {
    var html = "";
    for(var k = 0; k < rs.data.data.length; k++) {
      if(k>10)break;
      if(k == 0) {
        html += '<div class="year dactive"><div class="dhead"><h3>';
      } else {
        html += '<div class="year"><div class="dhead"><h3>';
      }
      html += rs.data.data[k]['year'];
      html += '</h3><div class="dtitle">';
      html += rs.data.data[k]['title'];
      html += '</div><div class="dinfo">';
      html += rs.data.data[k]['content'];
      html += '</div><div class="dimg_wrapp ">';

      html += "<img src='";
      html += rs.data.Url;
      html += rs.data.data[k]['image'];
      html += "' />";
      html += '</div></div></div>';

    }

    $("#wrapp").append(html)
    var $y = $(".year");
    var $act = $(".dactive");
    $act.find(".dtitle,.dinfo,.dimg_wrapp").css("opacity", "1");
    changeNum();
    $y.hover(function() {
      $y.removeClass("dhover")
      $(this).addClass('dhover')
    }, function() {})
    $y.on('click', function() {
      var $self = $(this);
      $y.removeClass("dactive");
      $self.addClass('dactive');
      $y.find(".dtitle,.dinfo,.dimg_wrapp").css("opacity", "0");
      $self.find(".dtitle,.dinfo,.dimg_wrapp").css("opacity", "1");
      var h3 = $self.find("h3");
      if(h3.text().indexOf("20") == -1) {
        h3.text(20 + h3.text())
      }
      changeNum();
    })

    function changeNum() {
      $.each($y, function(index, v) {
        if(v.className.indexOf('dactive') == -1) {
          $v = $(v);
          if($v.find('h3').text().length != 2) {
            $v.find('h3').text($v.find('h3').text().substr(2, 2))
          }
        }
      })
    }

  })
  $(function(){


    if(location.href.indexOf("#")!=-1){
      $('html , body').animate({scrollTop:  $(".header").innerHeight()},'fast');
    }

  })
</script>

</html>