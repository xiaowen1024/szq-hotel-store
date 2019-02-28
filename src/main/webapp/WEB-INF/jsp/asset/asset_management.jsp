<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>资产管理</title>
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

    <!--<link rel="stylesheet" href="css/swiper.css">-->
    <!--<link href="https://cdn.bootcss.com/Swiper/2.7.6/idangerous.swiper.min.css" rel="stylesheet">-->
    <!--<link href="https://cdn.bootcss.com/Swiper/4.3.0/css/swiper.min.css" rel="stylesheet">-->
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
<div class="header news zcgl_bg">

    <jsp:include page="../nav/header_nav.jsp"></jsp:include>
    <div class="header_big_font_wrapp">


    </div>
        <h1 align="center"  class="header_big_font">资产管理 / Asset management</h1>
</div>





<div class="news_bn">
    <div class="wrapp">
        <span class="bread"><a href="/">首页</a> > 资产管理</span>
    </div>
</div>

<div style="width: 100%;height:1600px;display: block;" id="c_img">

    <%--<img src="/static/img/资产管理.png" class="c_img" id="imgUrl"/>--%>
</div>




<jsp:include page="../footer/footer.jsp"></jsp:include>
</body>
<script src="/static/js/mainJs/jquery.min.js"></script>
<script>
    $(function(){

        $.ajax({
            type : "post",
            url : "/assetManagement/detail",
            data : {},
            dataType : "json",
            success : function (data){
                if(data.success == false){
                    alert(data.errMsg);
                    return;
                }else{
//                    console.log(data);
                    <%--$("#imgUrl").attr("src",'${Url}'+data.data.imgUrl);--%>
                    var _url = '${Url}'+data.data.imgUrl;
                    document.getElementById("c_img").style.background = "url("+_url+") center";
                }
            }
        });
    });
</script>
</html>
