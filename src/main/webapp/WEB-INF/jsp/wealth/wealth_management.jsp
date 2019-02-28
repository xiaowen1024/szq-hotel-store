<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>财富管理</title>
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
        .container{
            width: 100%;background: white;
            position: relative;
            height: 1600px;
        }

        .btn{
            position: absolute;
            width: 215px;
            height: 30px;
            top: 19.5%;
            right: 33%;
            opacity: 0;
            background: #000;
        }
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
        .cart_tip{
            width: 579px;
            height: 324px;
            background-image: url(/static/img/test_pop.png);
            position: relative;
        }
        .cart_tip>button:nth-child(1){
            width: 77px;
            height: 32px;
            opacity: 0;
            position: absolute;
            bottom:21px;
            left: 188px;
        }
        .cart_tip>button:nth-child(2){
            width: 77px;
            height: 32px;
            opacity: 0;
            position: absolute;
            bottom:21px;
            left: 316px;
        }
        .cart_tip>button:nth-child(3){
            width: 22px;
            height: 22px;
            opacity: 0;
            position: absolute;
            top:21px;
            right: 16px;
        }
    </style>
</head>

<body>
<div class="header_line"></div>
<div class="header news cfgl_bg">

    <jsp:include page="../nav/header_nav.jsp"></jsp:include>
    <div class="header_big_font_wrapp"></div>
        <h1 align="center"  class="header_big_font">财富管理 / Wealth management</h1>


</div>





<div class="news_bn">
    <div class="wrapp">
        <span class="bread"><a href="/">首页</a> > 财富管理</span>
        <div class="bread_btn_wrapp">
            <button class="bread_btn " onclick="window.location.href='/privateConsultant/page#'">私享顾问</button>
            <button class="bread_btn  bread_btn_active" onclick="location.href='/wealthManagement/page#'">私募投资</button>
        </div>
    </div>
</div>

<div class="container" id="c_img">
    <%--<img src="" class="c_img" />--%>
    <button class="btn"></button>
</div>




<jsp:include page="../footer/footer.jsp"></jsp:include>
</body>
<script src="/static/js/mainJs/jquery.min.js"></script>
<script src="/static/js/web/page.js"></script>
<script src="/static/js/main.js"></script>
<script src="/static/layer/layer.js"></script>
<script>
    if(location.href.indexOf("#")!=-1){
        $('html , body').animate({scrollTop:  $(".header").innerHeight()},'fast');
    }
    $(function(){

        $.ajax({
            type : "post",
            url : "/wealthManagement/detail",
            data : {},
            dataType : "json",
            success : function (data){
                if(data.success == false){
                    alert(data.errMsg);
                    return;
                }else{
//                    console.log(data);
                    <%--$(".c_img").attr("src",'${Url}'+data.data.imgUrl);--%>
                    var _url = '${Url}'+data.data.imgUrl;
                    document.getElementById("c_img").style.background = "url("+_url+") center";
                }
            }
        });
    });

    $(".btn").on("click",function(){
        $.ajax({
            url: "/questionnaire/queryUserInfo?a="+new Date().getTime(),
            dataType: "json",
            success:function(rs){
//                alert(rs.errCode);
                if(rs.errCode=="0010007"){
                    window.location.href = "/login/loginPage"
                } else{
                    if(rs.data.examen!=1){//没有做过问卷调查
                        layer.open({
                            type: 1,
                            title: false,
                            closeBtn: 0,
                            area:["590px","330px"],
                            content: '<div class="cart_tip"><button onclick="backHome();"></button><button onclick="goTest('+rs.data.cognizance+');"></button><button onclick="layer.closeAll();"></button></div>'
                        });
                    }else{
                        window.location.href = "/privateInvestment/page"
                    }
                }
            }
        })


    })
    function backHome(){
        window.location.href = "/";
    }
    function goTest(v){
        if(v!=1){
            //跳转到合格证认定页面
            window.location.href = "/personal/my_identify.html";
        } else{
            //跳转到风险评测页面
            window.location.href = "/personal/my_research.html";
        }


    }
</script>
</html>
