<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>会员尊享</title>
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
  <link href="/static/css/zhishipeiyang.css" rel="stylesheet"/>
  <style>
    @media only screen and (min-width: 1400px) {
      .header.news {
        background: #4F4F4F;
        height: 450px;
        background: url(/static/img/vip_bg1.png) no-repeat center center ;
        background-size: cover;
      }
    }
    @media only screen and (max-width: 1400px) {
      .header.news {
        background: #4F4F4F;
        height: 450px;
        background: url(/static/img/vip_bg1.png) no-repeat center center ;
        background-size: cover;
      }
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
    .act_item{
      width: 400px;height: 320px;background: #f9f9f9 center no-repeat;float: left;position: relative;
    }
    .act_tit{
      position: absolute;top: 220px;color: #fff;font-size: 18px;padding-left: 20px;
    }
    .act_con{
      position: absolute;top: 250px;color: #fff;font-size: 14px;padding: 0 20px;line-height: 20px;
    }

  </style>
</head>

<body>
<div class="header_line"></div>
<div class="header news">
  <jsp:include page="../nav/header_nav.jsp"></jsp:include>
</div>
<div style="background:url(/static/img/huiyuanzunxiang/top1.png)center;height:3149px;"></div>
<div style="width: 100%;background: #f9f9f9;padding-bottom: 80px;">
  <p style="width: 154px;font-size: 25px;color: #D3A359;font-weight: bold;margin: auto;padding: 70px 0 20px 0;">会员活动介绍</p>
  <div style="width: 370px;height: 1px;background: #D3A359;margin: auto;position: relative;">
    <div style="width: 80px;height: 3px;position: absolute;background: #D3A359;top: 50%;left: 50%;transform: translate(-50%,-50%);"></div>
  </div>
  <p style="width: 70px;font-size: 14px;color: #999; margin: auto;padding: 8px 0 50px 0;letter-spacing: 1px;">ACTIVITY</p>
  <div style="overflow: hidden;width: 1200px;height: auto;margin: auto;" id="actItem">

  </div>
</div>
<div style="background:url(/static/img/huiyuanzunxiang/bottom1.png)center;height:1093px;"></div>


<jsp:include page="../footer/footer.jsp"></jsp:include>
</body>
<script src="/static/js/jquery-2.2.0.min.js"></script>
<script src="/static/js/main.js"></script>
<script>

  $.getJSON("/activites/clubInfo",function(rs){
    if(!rs.success&&!rs.data.data.length)return;
    var d = rs.data.data,$act = $("#actItem");
    for (var i = 0; i < d.length; i++) {
      if(d[i].url){

        $act.append(
                ['<a target="_blank" href="'+d[i].url+'">',
                  '<div class="act_item" style="background: url('+rs.data.Url+encodeURI(d[i].image)+');">',
                  '<p class="act_tit">'+d[i].title+'</p>',
                  '<p class="act_con">'+limitStrLength(d[i].content,80)+'</p>',
                  '</div>',
                  '</a>'].join("")

           )
      }else{

        $act.append(
                ['<a>',
                  '<div class="act_item" style="background: url('+rs.data.Url+encodeURI(d[i].image)+');">',
                  '<p class="act_tit">'+d[i].title+'</p>',
                  '<p class="act_con">'+limitStrLength(d[i].content,80)+'</p>',
                  '</div>',
                  '</a>'].join("")

        )
      }
    }
  })


</script>
</html>
