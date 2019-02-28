<%--
  Created by IntelliJ IDEA.
  User: yxw
  Date: 2018/8/3
  Time: 12:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
  <title>广和投资-专家讲堂</title>
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
  <link rel="stylesheet" type="text/css" href="/static/css/slick.css" />
  <link rel="stylesheet" type="text/css" href="/static/css/slick-theme.css" />
  <link href="/static/css/page.css" rel="stylesheet" />
  <style>
    .header.news {
      background: #4F4F4F;
      height: 450px;
    }
    section{
      width: 100%;background: #ECEEEF;
      padding-bottom: 95px;
    }
    .line{
      width: 65px; height: 2px; background-color: #D3A359; margin: 10px auto;
    }
    .content{
      background: white;padding: 40px;
    }
    .content .item{
      height: 60px; border-bottom: 1px solid #eee;
    }
    .content div a:nth-child(1){
      line-height: 60px;
    }
    .content div a:nth-child(2){
      float: right;line-height: 60px;
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
    <span class="bread"><a href="/">首页</a> > <a href="/BusinessSchoolDetails/list">广和商学院</a> > 专家讲堂 </span>
    <a name="hxtd"></a>
    <div class="bread_btn_wrapp">
      <button class="bread_btn " onclick="window.location.href='/KnowledgeTraining/page#'">知识培养</button>
      <button class="bread_btn " onclick="window.location.href='/PolicyInterpreTation/page#'">政策解读</button>
      <button class="bread_btn bread_btn_active" onclick="window.location.href='/ExpertIectureHall/page#'">专家讲堂</button>
    </div>
  </div>

  <section style="background: url('/static/img/bg_team.png') no-repeat center center;background-position: bottom; " >
    <div class="newsPlaceholder5"></div>

    <div class="news_page_wrapp">
      <p align="center" style="font-size: 36px;">专家讲堂</p>
      <div class="line"></div>
      <p align="center" style="font-size: 26px;">Expert Lecture Hall </p>

      <div class="newsPlaceholder1"></div>


      <div class="content" id="content">

      </div>
      <div style="background: white;height: 70px">

        <div style="height: 28px; width: 360px; margin: 0px auto;">
          <ul class="page" id="page"></ul>
        </div>
      </div>

    </div>
  </section>
  <jsp:include page="../footer/footer.jsp"></jsp:include>
</body>
<script src="/static/js/jquery-2.2.0.min.js"></script>
<!--<script type="text/javascript" src="js/slick.min.js"></script>-->
<script src="/static/js/page.js"></script>
<script src="/static/js/main.js"></script>
<script>
  if(location.href.indexOf("#")!=-1){
    $('html , body').animate({scrollTop:  $(".header").innerHeight()},'fast');
  }
  var options;
  getdata(1,8);
  function getdata(cur,size){
    console.log(cur+',,,'+size)
    $.getJSON("/ExpertIectureHall/list?pageNo="+cur+"&pageSize="+size,function(rs){
      var datas=rs.data.data;
      console.log(datas)
      options={
        "id":"page",//显示页码的元素
        "data":datas,//显示数据
        "maxshowpageitem":3,//最多显示的页码个数
        "pagelistcount":size,//每页显示数据个数
        "callBack":function(result){
          var html = '';
          for(var i=0;i<datas.length;i++){
            var createTimeStr = jsonDateFormat(datas[i].createTime);
            html +='<div class="item"><a target="_blank" href="page1?id='+datas[i].id+'">'
                    +datas[i].title+'</a><a>'+ createTimeStr+'</a></div>'
          }
          $("#content").html(html);//将数据增加到页面中
        }
      };
      page.init(rs.data.count,cur,options);
    })
  }

  function jsonDateFormat(jsonDate) {//json日期格式转换为正常格式

    var year = jsonDate.year+1900;
    var month = jsonDate.month+1;
    var day = jsonDate.date;
    month=(month>9)?(""+month):("0"+month);  //如果得到的数字小于9要在前面加'0'
    day=(day>9)?(""+day):("0"+day);
    return year + "-" + month + "-" + day;

  }

  function jsonTimeFormat(jsonTime){

    var hour=jsonTime.hours;
    var minute=jsonTime.minutes;
    hour=(hour>9)?(""+hour):("0"+hour);
    minute=(minute>9)?(""+minute):("0"+minute);

    return hour+":"+minute;
  }
</script>
</html>
