<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

    <title>广和投资</title>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="icon" href="/static/img/16_16 LOGO.png" type="image/x-icon">
    <!--[if lt IE 9]>
    <script src="/static/js/html5shiv.min.js"></script>
    <script src="/static/js/css3-mediaqueries.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="/static/css/m_app.css?v=3"/>
    <%--<link rel="stylesheet" media="screen and (max-width:1400px)" href="/static/css/app.css"/>--%>
    <link rel="stylesheet" type="text/css" href="/static/css/slick-theme.css" />
    <link rel="stylesheet" type="text/css" href="/static/css/slick.css" />
    <style>

        .btn:hover{
            border: #D3A359 1px solid;
            color: #D3A359;
        }
        .iconfont:hover{
            color: #D3A359;
        }
        @font-face {
            font-family: 'iconfont';  /* project id 754425 */
            src: url('//at.alicdn.com/t/font_754425_sggjnxu4oii.eot');
            src: url('//at.alicdn.com/t/font_754425_sggjnxu4oii.eot?#iefix') format('embedded-opentype'),
            url('//at.alicdn.com/t/font_754425_sggjnxu4oii.woff') format('woff'),
            url('//at.alicdn.com/t/font_754425_sggjnxu4oii.ttf') format('truetype'),
            url('//at.alicdn.com/t/font_754425_sggjnxu4oii.svg#iconfont') format('svg');
        }
        .vedio_icon{
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
            font-size: 80px;
            color: white;
            cursor: pointer;
        }
        .footer_bottom p {
            color: #FFFFFF;
            font-size: 12px;
        }
        .footer_bottom_right {
            float: right;
            margin-top: 5px;
        }
        .club_btn:hover{
            background: #D3A359;
            color: white;
        }
        .club_btn:active{
            position: relative;
            top: 1px;
            left: 1px;
        }
        .shadow{
            box-shadow:0 0 10px rgba(78, 113, 184, .2)inset;
        }
        .news_right_p:hover{
            color: #D3A359;
        }
        .news_left_p:hover{
            color: #D3A359;
        }
        .midd_wrapp{
            padding-top: 0px;
            height:576px;
            padding: 0;
        }
        .midd{
            padding-top: 80px;
            background-image: url(/static/img/lunbo_bg.gif);
            background-size: cover;
        }
        .swiper-father{
            height: 520px;
        }
        .midd_div_content{
            height: 205px;
            overflow: hidden;
        }

        button {
            background-color: transparent;
            color: white;
            padding: 8px 10px;
            border-radius: 2px;
            border: white 1px solid;
            cursor: pointer;
        }
        .btn:active{
            position: relative;
            top: 1px;
            left: 1px;
        }
        /*@media screen and (max-width: 1400px) {*/
            /*.club_img_width{*/
                /*width:535px;height:320px;*/
            /*}*/
            /*.club_img_height{*/
                /*width:435px; height:652px;*/
            /*}*/
            /*.about_video {*/
                /*float: right;*/
                /*width: 483px;*/
                /*height: 270px;*/
                /*position: relative;*/
            /*}*/
            /*.about_content {*/
                /*width: 455px;*/
                /*float: left;*/
                /*padding: 25px 0px 25px 40px;*/
                /*/!*height: 275px;*!/*/
            /*}*/
            /*#introduction {*/
                /*width: 458px;*/
                /*height: 175px;*/
                /*font-size: 14px;*/
                /*line-height: 26px;*/
                /*letter-spacing: 0px;*/
                /*color: #7f7f7f;*/
                /*overflow: hidden;*/
                /*text-indent: 25px;*/
            /*}*/


            /*.footer_last_a {*/
                /*padding: 40px 60px 15px 60px;*/
            /*}*/
            /*.partner ul {*/
                /*width: 900px;*/
                /*height: 93px;*/
                /*margin: 0 auto;*/
                /*padding: 1px 0;*/
                /*border: 1px solid #eee;*/
            /*}*/
            /*.partner div ul li {*/
                /*width: 180px!important;*/
                /*height: 90px;*/
            /*}*/
            /*.friend_img{*/
                /*border-left: 1px solid #eee;*/
            /*}*/
            /*.nav_a {*/
                /*display: block;*/
                /*margin: 8px 15px;*/
                /*padding: 0 0 10px 0;*/
                /*color: #fff;*/
                /*font-size: 16px;*/
            /*}*/
            /*.nav_logo {*/
                /*width: 155px;*/
                /*height: 45px;*/
                /*float: left;*/
                /*margin-right: 25px;*/
                /*margin-top: 0px;*/
            /*}*/
            /*.header {*/
                /*height: 670px;*/
                /*color: white;*/
                /*font-size: 10px;*/
                /*padding-top: 4px;*/
                /*width: 100%*/
            /*}*/

            /*/!*					9月1改动*!/*/
            /*.club_left_wrapp1 {*/
                /*/!*padding: 42px 105px 55px 45px;*/
                /*height: 292px;*!/*/
                /*position: relative;*/
                /*padding: 30px 25px 30px 25px;*/
                /*height: 273px;*/
            /*}*/
            /*.club_right_wrapp2 {*/
                /*padding: 9px 18px 26px 11px;*/
                /*margin-top: 333px;*/
            /*}*/
            /*.club_btn_wrapp {*/
                /*width: 500px;*/
                /*padding: 30px 0px 42px 25px;*/
                /*position: absolute;*/
                /*top: 7px;*/
                /*right: -444px;*/
            /*}*/
            /*.club_desc{*/
                /*width: 914px;*/
                /*height:200px ;*/
                /*margin-top: 37px;*/
                /*margin-left: 30px;*/
                /*text-align: center;*/
                /*line-height: 30px;*/
                /*color:rgb(127,127,127)*/
            /*}*/
            /*.line7 {*/
                /*position: relative;*/
                /*top: 20px;*/
                /*height: 1px;*/
                /*width: 100%;*/
                /*background: #616161;*/
            /*}*/
        /*}*/
        /*@media screen and (min-width: 1400px) {*/
            .club_img_width{
                width:650px;height:380px;
            }
            .club_img_height{
                width:492px; height:782px;
            }
            .about_video {
                float: right;
                width: 662px;
                height: 370px;
                position:relative
            }

            .about_content {
                width: 618px;
                float: left;
                padding: 40px 0px 25px 40px;
            }
            #introduction {
                width: 588px;
                height: 240px;
                font-size: 14px;
                line-height: 26px;
                letter-spacing: 0px;
                color: #7f7f7f;
                overflow-y: hidden;
                text-indent: 25px;
            }
            .partner ul {
                width: 1170px;
                height: 120px;
                margin: 0 auto;
                padding: 1px 0;
                border: 1px solid #eee;
            }
            .partner div ul li {
                width: 234px!important;
                height: 119px;
            }
            .friend_img{
                border-left: 1px solid #eee;
            }
            .nav_a {
                display: block;
                margin: 8px 25px;
                padding: 0 0 10px 0;
                color: #fff;
                font-size: 16px;
            }
            .nav_logo {
                width: 155px;
                height: 45px;
                float: left;
                margin-right: 65px;
                margin-top: 0px;
            }
            /*				9月1改动*/
            .club_left_wrapp1 {
                padding: 42px 105px 55px 45px;
                height: 292px;
                position: relative;
            }
            .club_right_wrapp2 {
                padding: 9px 18px 26px 11px;
                margin-top: 387px;
            }
            .club_btn_wrapp {
                width: 520px;
                padding: 30px 0px 42px 25px;
                position: absolute;
                top: 20px;
                right: -414px;
            }
            .club_desc{
                width: 1031px;
                height:200px ;
                margin-top: 59px;
                margin-left: 30px;
                text-align: center;
                line-height: 30px;
                color:rgb(127,127,127)
            }
            .line7 {
                position: relative;
                top: 45px;
                height: 1px;
                width: 100%;
                background: #616161;
            }
        /*}*/
        .circle {
            height: 46px;
            width: 28px;
            border: 1px solid #D3A359;
            text-align: center;
            border-radius: 45%;
            cursor: pointer;
            position: relative;
        }
        .point{
            width: 5px;
            height: 5px;
            background: #D3A359;
            border-radius: 5px;
            position: absolute;
            top: 10px;
            left: 11px;
        }
        .main_btn_wrap{
            width: 30px;
            height: 48px;
            margin: 0 auto;
            position: absolute;
            left: 48%;
            bottom: 20px;
        }
        .wxgzh{
            position:relative;
        }
        .wxgzh:hover .wximg{
            display: block;
        }
        .wximg{
            display: none;position: absolute;width: 180px;height: 260px;left: -83px;top: 25px;z-index:999;
        }
        .white_btn{
            padding: 8px 10px;border: white 1px solid;border-radius: 2px;color: white;
        }
        .no_white_btn{
            padding: 8px 10px;border: #D3A359 1px solid;border-radius: 2px;color: #D3A359;
        }
        .dis_none{
            display: none;
        }
        .club_btn_active {
            color: #fff;
            margin-left: 15px;
            border-radius: 5px;
        }
        .club_btn {
            margin-left: 15px;
        }
        .bullet{
            width: 12px;
            height: 12px;
            display: inline-block;
            border-radius: 100%;
            background: #D3A359;
            opacity: 0.5;
            margin: 0 4px;
            cursor: pointer;
        }
        .bullet-active {
            width: 12px;
            height: 12px;
            display: inline-block;
            border-radius: 100%;
            opacity: 1;
            margin: 0 4px;
        }
        .club_right_wrapp2 {
            padding: 9px 18px 26px 11px;
            margin-top: 0;
        }
        .news_left_p span {
            height: 23px;
            font-family: MicrosoftYaHei;
            font-size: 28px;
            font-weight: normal;
            font-stretch: normal;
            letter-spacing: 0px;
            color: #d2a355;
            position: absolute;
            right: 0;
            top: -1px;
            left: auto;
        }
        .news_left_p {
            float: right;
            height: 17px;
            font-family: MicrosoftYaHei;
            font-size: 16px;
            font-weight: normal;
            font-stretch: normal;
            letter-spacing: 0px;
            color: #303030;
            line-height: 28px;
            padding-right: 80px;
            position: relative;
        }

        #time2, #time4 {
            height: 23px;
            font-family: MicrosoftYaHei;
            font-size: 28px;
            font-weight: normal;
            font-stretch: normal;
            letter-spacing: 0px;
            color: #d2a355;
            position: relative;
            left: 5px;
            top: -3px;
            padding: 0;
            position: absolute;
        }
        .news_right_p {
            float: left;
            height: 17px;
            font-family: MicrosoftYaHei;
            font-size: 16px;
            font-weight: normal;
            font-stretch: normal;
            letter-spacing: 0px;
            color: #303030;
            line-height: 24px;
            padding-right: 10px;
            position: relative;
            padding-left: 83px;
        }
    </style>
</head>

<body>
<div class="header_line"></div>
<div class="header" style="position: relative;">
    <div id="loopbackground" style="width: 100%;bottom: 10px;left: 0;position: absolute;text-align: center;">

    </div>
    <jsp:include page="WEB-INF/jsp/nav/header_nav.jsp"></jsp:include>
    <div style="height: 120px;"></div>
    <div class="header_content">
    </div>
    <div class="main_btn_wrap">
        <%--<div class="circle"><div class="point"></div></div>--%>
    </div>

</div>
<div class="midd">
    <div class="swiper-father">
        <div class="midd_wrapp" id="swiper-container1">
            <div id="midd-wrapper">

            </div>
        </div>
    </div>
</div>
<div class="main_about">
    <div class="about_warp">
        <div class="about_content">
            <h3>关于广和 / About Guanghe</h3>
            <div class="about_line"></div>

            <div id="introduction"></div>
        </div>
        <div class="about_video">
            <video width="100%" height="100%" style="object-fit: fill;" id="vedio">
                您的浏览器不支持播放该视频！
            </video>
            <i class="iconfont vedio_icon">&#xe6b0;</i>
        </div>
    </div>
</div>
<div class="main_news">
    <img class="news_img" src="/static/img/newsline.png" />
    <h3 class="news_title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;广和新闻 / Guanghe news</h3>
    <div class="line5"></div>

    <div class="news_wrapp">
        <div class="news_wrapp_left">
            <div class="placeholder1" style="height: 67px;"></div>
            <div class="news_left_title">
                <a target="_blank" class="news_left_p" id="title1">

                </a>
            </div>
            <div class="placeholder2">
                <div id="news1">

                </div>
            </div>
            <div class="placeholder3"  style="height: 57px;"></div>
            <div class="news_left_title">
                <a target="_blank" class="news_left_p" id="title3">

                </a>
            </div>
            <div class="placeholder2">
                <div id="news3">
                </div>
            </div>
        </div>
        <div class="news_wrapp_right">
            <div class="placeholder4"></div>
            <div class="news_right_title">
                <a target="_blank" class="news_right_p" id="title2">
                </a>
            </div>
            <div class="placeholder2">
                <div id="news2">
                </div>
            </div>
            <div class="placeholder3" style="height: 57px;"></div>
            <div class="news_right_title">
                <a target="_blank" class="news_right_p" id="title4" >
                </a>
            </div>
            <div class="placeholder2" style="padding-top: 14px;">
                <div id="news4">

                </div>
            </div>
        </div>
    </div>

</div>
<div class="main_club">
    <div style="height: 75px;"></div>
    <p style="text-align: center;color: #fff;font-size: 30px;"> 和悦私享俱乐部 / HeYue Private club</p>
    <div style="height: 22px;"></div>
    <div class="club_line"></div>
    <div style="height: 22px;"></div>
    <p class="_desc_" id="c_d_0"></p>
    <p class="_desc_" id="c_d_1"></p>
    <p class="_desc_" id="c_d_2"></p>
    <p class="_desc_" id="c_d_3"></p>
    <p class="_desc_" id="c_d_4"></p>
    <p class="_desc_" id="c_d_5"></p>
    <div style="height: 50px;"></div>
    <div style="margin: auto;width: 665px;">
        <button class="club_btn club_btn_active" data-id="0">会员权益</button>
        <button class="club_btn" data-id="1">会员活动</button>
        <button class="club_btn" data-id="2">和悦商城</button>
    </div>
    <div style="height: 50px;"></div>
    <div class="club_wrap">
        <div class="club_left" >
            <div class="club_left_wrapp2" id="picwp1">
                <!--<a target="_blank" id="clubImga1"><img class="club_left_img" id="clubImg1"></a>
                <div class="club_img_desc" id="clubContent1"></div>-->
            </div>
            <div class="club_left_wrapp3" id="picwp2">
                <!--<a target="_blank" id="clubImga2"><img class="club_left_img" id="clubImg2"></a>
                <div class="club_img_desc" id="clubContent2"></div>-->
            </div>
        </div>
        <div class="club_right" >
            <div class="club_right_wrapp2" id="picwp3">
                <!--<a target="_blank" id="clubImga3"><img class="club_right_img2" id="clubImg3"></a>
                <div class="club_img_desc" id="clubContent3"></div>-->
            </div>
        </div>
    </div>
</div>
<div class="partner">
    <h3>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        合作伙伴 &nbsp;&nbsp;/&nbsp; Cooperative partner</h3>
    <div class="line5"></div>
    <div class="line6"></div>
    <p >我们的成功建立在客户成功的基础上,因此我们投资于客户</p>
    <div class="partner_banner">
        <div class="swiper-fotter-father">
            <div class="swiperContainer" id="swiper-container2">
                <ul id="logo" class="" >
                </ul>
            </div>

        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/jsp/footer/footer.jsp"></jsp:include>
</body>
<script src="/static/js/jquery-2.2.0.min.js"></script>
<script src="/static/js/jquery.backstretch.min.js"></script>
<script src="/static/js/swiper.js"></script>
<script type="text/javascript" src="/static/js/slick.min.js"></script>
<script type="text/javascript" src="/static/js/main.js"></script>

<script>
//    document.write('<script src="/static/js/main.js"' + Math.random() + "\"" + '><\/script>');

    var bannerList = [],bannerIndex=0;
    function changeImg(t){
        $(".header").backstretch("show",Number($(t).data("id")))
        $(".bullet").removeClass("bullet-active");
        $(t).addClass("bullet-active");
    }
    $(window).on("backstretch.before", function (e, instance, index) {
        var _b = $(".bullet");
        for (var i = 0; i < _b.length; i++) {
            if($(_b[i]).data("id")==index){
                $(".bullet").removeClass("bullet-active");
                $(_b[i]).addClass("bullet-active");
            }
        }
        bannerIndex = index;
    });
    function checkNum(i){
        if(i==0)return 'wealthManagement/page'
        if(i==1)return "/privateConsultant/page"
        if(i==2)return "/BusinessSchoolDetails/list"
    }
    $.getJSON("/home/info",function(rs){
        infoData = rs.data;var urll = rs.data.Url;
        if (rs.data.banner.length > 0){
            var imgs = [];
            for (var i = 0; i < rs.data.banner.length; i++) {
                if (rs.data.banner[i]['image']) {
                    imgs.push(rs.data.Url+rs.data.banner[i]['image'])
                    bannerList.push(rs.data.banner[i]['url'])
                }
            }
            $(".header").backstretch(imgs, {duration: 8000,fade:2000});
            for (var i = 0; i < imgs.length; i++) {
                if(i==0)
                    $("#loopbackground").append('<a data-id="'+i+'" onclick="changeImg(this)" class="bullet bullet-active" ></a>')
                else
                    $("#loopbackground").append('<a data-id="'+i+'" onclick="changeImg(this)" class="bullet" ></a>')
            }
        }
        if (rs.data.detail.length > 0) {
            var html = '';
            for (var i = 0; i < rs.data.detail.length; i++) {

                html+='<a class="lunbo_item" target="_blank" href="'+checkNum(i)+'"><div class="midd_div swiper-slide"><div class="midd_img_wrapp"><img src="';
                if(rs.data.detail[i]['image']){
                    html+=urll;
                    html+=rs.data.detail[i]['image'];
                }
                html+='" class="midd_img"/></div><dt class="midd_div_title">';
                if(rs.data.detail[i]['title']){
                    html+=rs.data.detail[i]['title'];
                }
                html+='</dt><dt class="midd_div_entitle">';
                html+=rs.data.detail[i]['engTitle'];
                html+='</dt><div class="midd_div_content">';
                html+=rs.data.detail[i]['content'];
                html+='</div></div></a>';

            }
            $("#midd-wrapper").append(html);
        }
        if (rs.data.companyIntroduction.length > 0) {
            if (rs.data.companyIntroduction[0].companyIntroduction.length > 300) {
                $("#introduction").append(rs.data.companyIntroduction[0].companyIntroduction.substr(0,300)+". . .");
            }else{
                $("#introduction").append(rs.data.companyIntroduction[0].companyIntroduction);
            }
            $("#vedio").append($("<source src=\'" +rs.data.Url+ rs.data.companyIntroduction[0].video + "\'>"));
//            $("#vedio").append($("<source src='http://yun.it7090.com/video/XHLaunchAd/video01.mp4'>"));
        }
        if (rs.data.news.length > 0) {
            for (var i = 0; i < rs.data.news.length; i++) {
                var createTime = rs.data.news[i].createTime.split('-')[1] + '.' + rs.data.news[i].createTime.split('-')[2].split(' ')[0];
                if (i % 2 == 0) {
                    $("#title" + (i + 1)).append(rs.data.news[i].title + '<span id="time' + (i + 1) + '">' + createTime + '</span>');
                    $("#title"+(i+1)).attr("href","/newsInformation/findOne?id="+rs.data.news[i].id);
                } else {
                    $("#title" + (i + 1)).append('<span id="time' + (i + 1) + '">' + createTime + '</span>' + rs.data.news[i].title);
                    $("#title"+(i+1)).attr("href","/newsInformation/findOne?id="+rs.data.news[i].id);
                }
                if (rs.data.news[i].synopsis.length > 80) {
                    $("#news" + (i + 1)).text(limitStrLength(rs.data.news[i].synopsis, 80) + ". . .");
                } else {
                    $("#news" + (i + 1)).text(rs.data.news[i].synopsis);
                }

            }
        }
        renderClub(rs.data.club,0);//渲染俱乐部数据
        if (rs.data.image.length > 0) {
            var html = '';
            for (var i = 0; i < rs.data.image.length; i++) {
                html += '<li class="swiper-slide"><img class="friend_img" src="';
                html += rs.data.Url+rs.data.image[i].image;
                html += '"></li>';
            }
            $("#logo").append(html);
        }
        $('#midd-wrapper').slick({
            slidesToShow: 3,
            slidesToScroll: 1,
            dots: false,
            nextArrow: "<button type='button' class='slick-next'>Next</button>",
            centerMode: true
        });
        $('#logo').slick({
            slidesToShow: 5,
            slidesToScroll: 1,
            autoplay:true,
            dots: false,
            nextArrow: "<button type='button' class='slick-next'>Next</button>",
        });
        $(".midd_div").hover(function(){
            $(this).addClass("shadow")
        },function(){
            $(this).removeClass("shadow")
        })

    })


    var flag = true;
    var $vi = $(".vedio_icon");
    var $v = $("#vedio")[0];
    $v.controls = false;
    $vi.on("click",function(){

        if ($v.paused) {
            $v.controls = true;
            $v.play();
            $vi.css("opacity","0");

        } else {
            $v.controls = false;
            $vi.css("opacity","1");
            $v.pause();
        }
    })
    function renderClub(rs,n){
        for(var i=0;i<rs.length;i++){
            if(i==0){
                var arrP = rs[i].content.split("(#)");
                for (var j = 0; j < arrP.length; j++) {
                    $("#c_d_"+j).text(arrP[j]);
                }
            } else{
                renderImgVedio(rs[i],i,n)
            }
        }
    }
    $(".club_btn").on("click",function(){
        $(".club_btn").removeClass("club_btn_active");
        $(this).addClass("club_btn_active");
        $(".item").addClass("dis_none");
        var id = Number($(this).data("id"));
        switch (id){
            case 0:
                renderClub(infoData.club,0)
                break;
            case 1:
                renderClub(infoData.activiti,1)
                break;
            case 2:
                renderClub(infoData.goods,2)
                break;
        }
    });
    function renderImgVedio(rs,i,n){
        $("#picwp"+i).empty()
        if(rs.image.indexOf('mp4')==-1){
//debugger;
            $("#picwp"+i).append(
                    ['<a target="_blank" href="'+checkHref(rs,n)+'">',
                        '<img class="'+checkClass(i)+'" src="'+infoData.Url+rs.image+'">',
                        '</a>',
                        '<div class="club_img_desc">'+rs.content+'</div>'].join("")
            )
        } else {
//				$("#picwp"+i).append('<video '+ checkVedio(i)+ ' controls="false" src="images/宣传片.mp4" style="object-fit: fill;">')
            $("#picwp"+i).append('<video '+ checkVedio(i)+ ' controls="false" src="'+infoData.Url+rs.image+'" style="object-fit: fill;">')
        }

    }
    function checkClass(i){
        if(i == 3) return "club_right_img2"
        return "club_left_img";
    }
    function checkHref(rs,n){
		return rs.url;
        if(n==0) return "activites/huiyuanzunxiang";
        if(n==1) return "activites/findOne?id="+rs.activitiId;
        if(n==2) return "GoodsDetail/page?id="+rs.goodsId;
    }
    function checkVedio(i){
        if(i!=3) return 'class="club_img_width" '
        return 'class="club_img_height" '
    }
    $(document).on("click",".backstretch",function(){
        if(!bannerList[bannerIndex])return;
        if(bannerList[bannerIndex]=='')return;
        location.href = bannerList[bannerIndex];
    })

var ua = navigator.userAgent;
var ipad = ua.match(/(iPad).*OS\s([\d_]+)/),
        isIphone = !ipad && ua.match(/(iPhone\sOS)\s([\d_]+)/),
        isAndroid = ua.match(/(Android)\s+([\d.]+)/),
        isMobile = isIphone || isAndroid;
if(isMobile){
    location.href = "/m";
}


</script>
</html>
