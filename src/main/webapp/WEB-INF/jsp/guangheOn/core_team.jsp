<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<div>
  <head>
    <meta charset="utf-8" />
    <title></title>
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
    <link href="/static/css/coreTeam.css?v=1" rel="stylesheet"/>

  </head>

  </div>
    <div class="header_line"></div>
    <div class="header news zjgh_bg">
      <jsp:include page="../nav/header_nav.jsp"></jsp:include>
      <div class="header_big_font_wrapp"></div>
      <h1 align="center"  class="header_big_font">走进广和 / On Guanghe</h1>

    </div>





    <div class="news_bn">
      <div class="wrapp">
          <span class="bread"><a href="/">首页</a> > <a href="/CompanyIntroduction/list">走进广和</a> > 核心团队</span>
        <a id="hxtd" ></a>
        <div class="bread_btn_wrapp">
          <button class="bread_btn " onclick="window.location.href='/CompanyIntroduction/list#gsjs'">公司简介</button>
          <button class="bread_btn " onclick="window.location.href='/ChairmanSpeech/list#dsz'">董事长致辞</button>
          <button class="bread_btn bread_btn_active " onclick="window.location.href='/CoreTeam/list#hxtd'">核心团队</button>
          <button class="bread_btn " onclick="window.location.href='/companyCultrue/list#qywh'">企业文化</button>

          <button class="bread_btn  " onclick="window.location.href='/BigEvent/list#fzlc'">发展历程</button>
          <button class="bread_btn " onclick="window.location.href='/CorporateHonor/list#qyry'">企业荣誉</button>
        </div>
      </div>
    </div>

    <section class="panel team" data-section-name="team">
      <div class="container">
        <div class="inner">
          <div style="width: 150px; margin: 0 auto; padding: 50px 0 10px 0;">
            <span style="font-size: 36px; height: 26px;">核心团队</span>
          </div>
          <div style="width:65px;margin: 0 auto; height: 2px; background-color:#D3A359 "></div>
          <div style="width: 150px; margin: 0 auto; padding: 10px 0 10px 0;">
            <span style="font-size: 26px; height: 26px;">Core team</span>
          </div>
          <div>
            <p style="font-size: 14px;line-height: 20px;text-indent: 20px;color: #666666;" id="coreTeam-content">

            </p>
            <div style="height: 50px;"></div>
          </div>
          <div class="team-box">
            <div class="member-list" id="midd-wrapper">
            </div>

          </div>
          <div class="member-detail"id="midd-wrapper-content">
          </div>
        </div>
        <div class="page-bottom-space"></div>
      </div>
    </section>
    <jsp:include page="../footer/footer.jsp"></jsp:include>
    </body>
    <script src="/static/js/jquery-2.2.0.min.js"></script>
    <script type="text/javascript" src="/static/js/slick.min.js"></script>
    <script src="/static/js/main.js"></script>
    <script>

    </script>
    <script>
      $.getJSON("/CoreTeam/detail",function(rs){
        if(rs.data.coreTeam.length>0){
          $("#coreTeam-content").append(rs.data.coreTeam[0]['coreTeam'])
        }
        if(rs.data.employee.length>0){
         var  html = '';
         for(var i=0;i<rs.data.employee.length;i++){
         html +='<div class="detail-item"> <p align="center" class="boss_name" >';
         if(rs.data.employee[i]['employeeName']){
         html += rs.data.employee[i]['employeeName'];
         }
         html+='</p><div class="boss_line"></div> <p align="center" class="identity">'
         if(rs.data.employee[i]['employeePosition']){
         html += rs.data.employee[i]['employeePosition'];
         }
         html += '</p><p>'
         if(rs.data.employee[i]['introduction']){
         html += rs.data.employee[i]['introduction'];
         }
         html+='</p></div>'
         }
         $("#midd-wrapper-content").append(html);
         }
        if(rs.data.employee.length) {
         var html = '';
         for (var i = 0; i < rs.data.employee.length; i++) {
         html += '<div class="list-item"><div class="list-item-inner"><p><img style="width: 100%;" src="';
         if (rs.data.employee[i]['imageUrl']) {
         html += rs.data.Url+rs.data.employee[i]['imageUrl'];
         }
         html += '"></p></div></div>';
         }
         $("#midd-wrapper").append(html);
         }
        $('.member-detail').slick({
          slidesToShow: 1,
          slidesToScroll: 1,
          arrows: false,
          fade: true,
          asNavFor: '.member-list'
        });
        $('.member-list').slick({
          slidesToShow: 3,
          slidesToScroll: 1,
          asNavFor: '.member-detail',
          dots: false,
          centerMode: true,
          focusOnSelect: true,
          centerPadding: '0px'
        });
      })
      $(function(){


        if(location.href.indexOf("#")!=-1){
          $('html , body').animate({scrollTop:  $(".header").innerHeight()},'fast');
        }

      })
    </script>
    </html>
