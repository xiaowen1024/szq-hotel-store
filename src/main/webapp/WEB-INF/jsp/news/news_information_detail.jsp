<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<head>
    <meta charset="utf-8" />
    <title>新闻详情</title>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="icon" href="/static/img/16_16 LOGO.png" type="image/x-icon">
    <!--[if lt IE 9]>
    <script src="/static/js/html5shiv.min.js"></script>
    <script src="/static/js/css3-mediaqueries.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="/static/css/m_app1.css"/>
    <link rel="stylesheet" media="screen and (max-width:1400px)" href="/static/css/app1.css"/>

    <!--<link rel="stylesheet" href="css/swiper.css">-->
    <!--<link href="https://cdn.bootcss.com/Swiper/2.7.6/idangerous.swiper.min.css" rel="stylesheet">-->
    <!--<link href="https://cdn.bootcss.com/Swiper/4.3.0/css/swiper.min.css" rel="stylesheet">-->
    <link href="/static/css/page.css" rel="stylesheet"/>
    <style>
        .news_detail_title_cn{
            font-size: 22px;
            letter-spacing: 1px;
            color: #000000;
            text-align: center;
            padding-top: 97px;
            padding-bottom: 25px;
        }
        .news_detail_title_en{
            font-size: 22px;
            letter-spacing: 1px;
            color: #555555;
            text-align: center;
            padding-top: 25px;
            padding-bottom: 60px;
        }
        .source{
            text-align: center;
            font-size: 14px;
            color: #999999;
            padding: 50px 0;
        }

        @media only screen and (max-width: 1400px) {
            .news_bar{
                width: 1024px;
            }
        }

    </style>
</head>

<body>
<div class="header_line"></div>
<div class="header news news_bg">
    <%--<div class="header_up">--%>
        <%--<div class="header_up_left">--%>
            <%--<i class="iconfont">&#xe62c;</i>--%>
            <%--<span>Mon-Fri : 09:00-17:00</span>--%>
        <%--</div>--%>
        <%--<div class="header_up_right">--%>
            <%--<i class="iconfont">&#xe61b;</i>--%>
            <%--<span>+86(021)56497956</span>--%>
            <%--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
            <%--<a href="#"><i class="iconfont">&#xe69c;</i></a>--%>
            <%--&nbsp;--%>
            <%--<a href="#"><i class="iconfont">&#xe66a;</i></a>--%>
            <%--&nbsp;--%>
            <%--<a href="#"><i class="iconfont">&#xe9bd;</i></a>--%>
            <%--&nbsp;--%>
            <%--<a href="#"><i class="iconfont">&#xe630;</i></a>--%>
        <%--</div>--%>
    <%--</div>--%>
    <jsp:include page="../nav/header_nav.jsp"></jsp:include>
        <div class="header_big_font_wrapp"></div>
        <h1 align="center"  class="header_big_font">新闻动态 / News information</h1>
</div>
    <div class="news_bn">
        <div class="wrapp">
            <span class="bread"><a href="/">首页</a> > <a href="/newsInformation/page">广和新闻</a> > 新闻</span>
        </div>
    </div>

    <div style="width: 100%;background: white;">
        <div class="wrapp" id="wp">
            <!--<p class="news_detail_title_cn">和意甄选证券私募投资基金路演北京站隆重举行</p>
            <p class="news_detail_title_en">and italian securities private investment fund road show beijing railway station held ceremoniously</p>
            <img class="news_bar" src="img/news_bar.png" />
            <p class="source">
                <span>发布时间：</span>
                <span>2018-07-04</span>
                <span>|</span>
                <span>来源：</span>
                <span>广和投资</span>
            </p>-->


        </div>
    </div>
<div style="height: 200px;"></div>






<jsp:include page="../footer/footer.jsp"></jsp:include>

</body>
<script src="/static/js/mainJs/jquery.min.js"></script>
<script src="/static/js/main.js"></script>
<!--<script src="js/jquery.backstretch.min.js"></script>-->
<!--<script src="js/swiper.js"></script>-->
<!--<script src="https://cdn.bootcss.com/Swiper/2.7.6/idangerous.swiper.min.js"></script>-->
<!--<script src="https://cdn.bootcss.com/Swiper/4.3.0/js/swiper.min.js"></script>-->
<script>

    /**
     * 获取指定的URL参数值
     * URL:http://www.quwan.com/index?name=tyler
     * 参数：paramName URL参数
     * 调用方法:getParam("name")
     * 返回值:tyler
     */
    function getParam(paramName) {
        paramValue = "", isFound = !1;
        if (this.location.search.indexOf("?") == 0 && this.location.search.indexOf("=") > 1) {
            arrSource = unescape(this.location.search).substring(1, this.location.search.length).split("&"), i = 0;
            while (i < arrSource.length && !isFound) arrSource[i].indexOf("=") > 0 && arrSource[i].split("=")[0].toLowerCase() == paramName.toLowerCase() && (paramValue = arrSource[i].split("=")[1], isFound = !0), i++
        }
        return paramValue == "" && (paramValue = null), paramValue
    }

    var newsId =  getParam("id");

    var $wp = $("#wp");
    $.getJSON("detail?newsId="+newsId,function(rs){
//

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

            '</p>'].join("");
        $wp.append(html);
        $wp.append(dealHtml(rs.content));




    });
</script>
</html>

