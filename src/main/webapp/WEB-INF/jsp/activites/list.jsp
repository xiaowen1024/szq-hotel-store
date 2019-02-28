<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <title>会员活动-会员尊享-广和投资</title>
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
  <link href="/static/css/page.css" rel="stylesheet"/>
  <style>
    @font-face {
      font-family: 'iconfont';  /* project id 754425 */
      src: url('//at.alicdn.com/t/font_754425_7op35pmjyfn.eot');
      src: url('//at.alicdn.com/t/font_754425_7op35pmjyfn.eot?#iefix') format('embedded-opentype'),
      url('//at.alicdn.com/t/font_754425_7op35pmjyfn.woff') format('woff'),
      url('//at.alicdn.com/t/font_754425_7op35pmjyfn.ttf') format('truetype'),
      url('//at.alicdn.com/t/font_754425_7op35pmjyfn.svg#iconfont') format('svg');
    }
    .header.news {
      background: #4F4F4F;
      height: 450px;
      background: url(/static/img/vip_bg1.png) no-repeat center center!important ;
    }
    h1:hover{
      color: #D3A359;
    }
    .label1{
      font-size: 16px;
      color: #888888;
    }
    .label1:after{
      content: "：";
    }
    .label1:before{
      content: "\e62c";
      font-family: "iconfont" !important;
      font-size: 16px;
      font-style: normal;
      -webkit-font-smoothing: antialiased;
      -webkit-text-stroke-width: 0.2px;
    }
    .label2{
      font-size: 16px;
      color: #888888;
      padding-left: 20px;
    }
    .label2:after{
      content: "：";
    }
    .label2:before{
      content: "\e60b";
      font-family: "iconfont" !important;
      font-size: 16px;
      font-style: normal;
      -webkit-font-smoothing: antialiased;
      -webkit-text-stroke-width: 0.2px;
    }
    .content{
      font-size: 16px;
      color: #666666;
    }
    .enroll{
      border-radius: 2px;width: 78px;height: 32px;background: #D3A359;color: white;font-size: 12px;
    }
  </style>
</head>

<body>
<div class="header_line"></div>
<div class="header news news_bg">
  <jsp:include page="../nav/header_nav.jsp"></jsp:include>

</div>





<div class="news_bn">
  <div class="wrapp">
    <span class="bread"><a href="/">首页</a> > <a href="/activites/huiyuanzunxiang">会员尊享</a> > 会员活动</span>
    <a name="gsjs"></a>
    <div class="bread_btn_wrapp">
      <button class="bread_btn bread_btn_active" onclick="window.location.href='/activites/page'">会员活动</button>
      <button class="bread_btn" onclick="window.location.href='/MallHome/list'">和悦商城</button>

    </div>
  </div>
</div>

<div style="width: 100%;background: white;">
  <div class="newsPlaceholder5"></div>
  <div class="news_page_wrapp">
    <div class="news_title_dt_wrapp">
      <h3 class="title" >会员活动</h3>
    </div>
    <div class="news_line_dt_wrapp">
      <div></div>
    </div>
    <div class="news_en_dt_wrapp">
      <h3 class="en_title" >Industry information</h3>
    </div>
    <div class="newsPlaceholder1"></div>
    <div id="rs">

    </div>

    <div class="newsPlaceholder4"></div>
    <div style="height: 28px; width: 360px; margin: 0 auto;">
      <ul class="page" id="page"></ul>
    </div>
    <div class="newsPlaceholder6"></div>
  </div>
</div>










<jsp:include page="../footer/footer.jsp"></jsp:include>
</body>
<script src="/static/js/jquery-2.2.0.min.js"></script>
<script src="/static/js/page.js"></script>
<script src="/static/js/main.js"></script>
<script>
  var options,
          pageNo = getUrlParms("pageNo"),
          pageSize = getUrlParms("pageSize");
  if(pageNo == null) pageNo = 1;
  if(pageSize == null) pageSize = 4;
  getdata(pageNo, pageSize);

  function getdata(pageNo, pageSize) {
    var url = getUrlParms();
    if(url.indexOf("pageNo") == -1) {
      url += "&pageNo=" + pageNo + "&pageSize=" + pageSize;
    }

    $.ajax({
      url: "/activites/list?" + url,
      type: "post",
      dataType: "json",
      success: function(rs) {
        var datas = rs.data.data;
        renderTable(datas, rs.data.Url);
        options = {
          "id": "page",
          "data": datas,
          "maxshowpageitem": 3,
          "pagelistcount": pageSize,
          "callBack": function(result) {

          }
        };
        page.init(rs.data.count, pageNo, options);
      }
    });
  }

  function renderTable(result, u) {

    $("#rs").empty();

    for(var i = 0; i < result.length; i++) {

      $("#rs").append(
              ['<div class="news_detail_wrapp">',
                '<div class="newsPlaceholder2"></div>',
                '<div class="news_detail_wrapp1">',
                '<div class="news_detail_img">',
                '<img src="' + u + result[i].imgUrl + '" />',
                '</div>',
                '<div class="newsPlaceholder3"></div>',
                '<div class="news_detail_wrapp2">',
                '<a target="_blank" href="/activites/findOne?id='+result[i].id+'"><h1 >'+result[i].title+'</h1></a>',
                '<p>',
                '<span class="label1">&nbsp;活动时间</span>',
                '<span class="content">' + fmtDate(result[i].activitieTime.time) + '</span>',
                '<span class="label2">&nbsp;所属地区</span>',
                '<span class="content">'+result[i].local+'</span>',
                '</p>',
                '<div class="news_detail">'+result[i].synopsis+'</div>',//'+result[i].id+
                '<div class="news_detail_btn">',
                '<button class="enroll" onclick="findOne('+"'"+ result[i].id +"'"+');">我要报名</button></div>',
                '</div>',
                '</div>',
                '</div>'].join(""))
    }
  }

  function findOne(id){
    window.location.href='findOne?id='+id;
  }
</script>
</html>
