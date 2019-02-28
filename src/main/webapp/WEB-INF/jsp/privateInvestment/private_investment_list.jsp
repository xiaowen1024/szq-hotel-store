<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta charset="utf-8" />
    <title>广和投资-财富管理-私募投资</title>
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
    <link href="/static/css/page.css" rel="stylesheet"/>
    <link href="/static/css/simuchanpin.css" rel="stylesheet" />
    <style>
        .select{
            background: #fff!important;
        }
        .header.news {
            background: #4F4F4F;
            height: 450px;
        }

        .ad_select .btn {
            color: white;
            background-color: #d3a359;
        }

        .ad_select .btn:active {
            position: relative;
            left: 1px;
            top: 1px;
        }

        .label .select_btn {
            color: #d3a359;
        }

        .list {
            background-color: #f9f9f9;
        }

        .spe1 {
            color: #d3a359;
        }

        .item_select .btn {
            color: white;
            background-color: #d3a359;
        }

        .item_select .btn:active {
            position: relative;
            left: 1px;
            top: 1px;
        }

        @media only screen and (min-width: 1400px) {
            .select {
                padding: 30px 0 30px 45px;
                width: 1200px;
                margin: 0 auto;
            }
            .label {
                font-size: 14px;
                letter-spacing: 0px;
                color: #555555;
                padding: 15px 25px;
            }
            .label span {
                color: #999999;
                padding: 15px 25px;
                cursor: pointer;
            }
            .container {
                width: 1200px;
                background: #f9f9f9;
                margin: 0 auto;
            }
            .item {
                width: 1200px;
                height: 166px;
                border-radius: 3px;
                background-color: white;
                border-top: 1px solid #f9f9f9;
                margin-bottom: 5px;
            }
            .item_select {
                background-color: #FCF5EC;
                box-shadow: 0px 5px 2px #E3E3E3;
            }
            .item_name {
                width: 470px;
                float: left;
            }
            .item_profit {
                float: left;
                width: 140px;
            }
            .item_p {
                line-height: 41.5px;
                text-align: center;
                font-size: 14px;
                color: #999999;
            }
            .spe2 {
                font-size: 18px;
                color: #333333;
            }
            .spe3 {
                font-size: 17px;
                color: #333333;
            }
            .item_title {
                font-size: 20px;
                color: #333333;
                line-height: 166px;
                text-align: left;
                padding-left: 60px;
            }
            .btn {
                width: 166px;
                height: 39px;
                border-radius: 3px;
                border: solid 1px #d3a359;
                margin: 65px;
                color: #d3a359;
            }
            .ad_title {
                font-size: 24px;
                color: #555555;
            }
            .ad_title>span {
                padding-left: 30px;
                font-size: 14px;
                color: #999999;
            }
            .ad_window {
                width: 365px;
                height: 365px;
                box-shadow: 0px 5px 9px 1px rgba(0, 0, 0, 0.05);
                border-radius: 5px;
                float: left;
                padding: 15px 0px;
            }
            .ad_window_title {
                padding-top: 15px;
                padding-bottom: 20px;
                font-size: 20px;
                color: #333333;
                text-align: center;
            }
            .ad_window_left {
                padding: 20px 0px;
                width: 175px;
                float: left;
                padding-left: 20px;
            }
            .ad_window_right {
                padding: 20px 0px;
                width: 130px;
                float: left;
                padding-right: 25px;
            }
            .ad_window_p1 {
                font-size: 20px;
                color: #d3a359;
                text-align: center;
                padding: 15px 0px;
            }
            .ad_window_p2 {
                font-size: 20px;
                color: #333333;
                text-align: center;
                padding: 15px 0px;
            }
            .ad_window_p3 {
                font-size: 18px;
                color: #999999;
                text-align: center;
                padding: 15px 0px;
            }
            .ad_window_p4 {
                font-size: 18px;
                color: #555555;
                text-align: center;
                padding: 6px;
            }
            .ad_window_btn {
                width: 220px;
                height: 39px;
                margin: 25px auto;
            }
            .ad_btn_wrapp {
                width: 220px;
                margin: 0 auto;
            }
            .separator {
                width: 45px;
                height: 10px;
                float: left;
            }
        }

        @media only screen and (max-width: 1400px) {
            .select {
                padding: 25.6px 0 25.6px 38.4px;
                width: 1024px;
                margin: 0 auto;
            }
            .label {
                font-size: 14px;
                letter-spacing: 0px;
                color: #555555;
                padding: 12.8px 21.33px;
            }
            .label span {
                color: #999999;
                padding: 12.8px 21.33px;
                cursor: pointer;
            }
            .container {
                width: 1024px;
                background: #f9f9f9;
                margin: 0 auto;
            }
            .item {
                width: 1024px;
                height: 141.65px;
                border-radius: 3px;
                background-color: white;
                border-top: 1px solid #f9f9f9;
                margin-bottom: 4.2px;
            }
            .item_select {
                background-color: #FFF4C1;
                box-shadow: 0px 5px 2px #E3E3E3;
            }
            .item_name {
                width: 401px;
                float: left;
            }
            .item_profit {
                float: left;
                width: 119.46px;
            }
            .item_p {
                line-height: 35.41px;
                text-align: center;
                font-size: 11.94px;
                color: #999999;
            }
            .spe2 {
                font-size: 15.36px;
                color: #333333;
            }
            .spe3 {
                font-size: 14.5px;
                color: #333333;
            }
            .item_title {
                font-size: 17px;
                color: #333333;
                line-height: 141.65px;
                text-align: left;
                padding-left: 51.2px;
            }
            .btn {
                width: 141.65px;
                height: 33.28px;
                border-radius: 3px;
                border: solid 1px #d3a359;
                margin: 55.46px;
                color: #d3a359;
            }
            .ad_title {
                font-size: 20.48px;
                color: #555555;
            }
            .ad_title>span {
                padding-left: 25.6px;
                font-size: 11.94px;
                color: #999999;
            }
            .ad_window {
                width: 311.46px;
                height: 311.46px;
                box-shadow: 0px 5px 9px 1px rgba(0, 0, 0, 0.05);
                border-radius: 5px;
                float: left;
                padding: 12.8px 0px;
            }
            .ad_window_title {
                padding-top: 12.8px;
                padding-bottom: 17px;
                font-size: 17px;
                color: #333333;
                text-align: center;
            }
            .ad_window_left {
                padding: 17px 0px;
                width: 146.4px;
                float: left;
                padding-left: 20px;
            }
            .ad_window_right {
                padding: 17px 0px;
                width: 107.26px;
                float: left;
                padding-right: 25px;
            }
            .ad_window_p1 {
                font-size: 17px;
                color: #d3a359;
                text-align: center;
                padding: 12.8px 0px;
            }
            .ad_window_p2 {
                font-size: 17px;
                color: #333333;
                text-align: center;
                padding: 12.8px 0px;
            }
            .ad_window_p3 {
                font-size: 15.36px;
                color: #999999;
                text-align: center;
                padding: 12.8px 0px;
            }
            .ad_window_p4 {
                font-size: 15.36px;
                color: #555555;
                text-align: center;
                padding: 5.12px;
            }
            .ad_window_btn {
                width: 187.73px;
                height: 33.28px;
                margin: 21.33px auto;
            }
            .ad_btn_wrapp {
                width: 187.73px;
                margin: 0 auto;
            }
            .separator {
                width: 38.4px;
                height: 8.53px;
                float: left;

            }
        }
    </style>

</head>

<body>
<div class="header_line"></div>
<div class="header news" style="background-image: url(/static/img/private_investment_bg.png);background-size: cover;">
    <%--<div class="header_up">--%>
        <%--<div class="header_up_left">--%>
            <%--<i class="iconfont">&#xe62c;</i>--%>
            <%--<span>Mon-Fri : 09:00-17:00</span>--%>
        <%--</div>--%>
        <%--<div class="header_up_right">--%>
            <%--<i class="iconfont">&#xe61b;</i>--%>
            <%--<span>+86(021)56497956</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
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
        <div style="height: 120px"></div>
        <p align="center" style="font-size:47px">
            私募投资<span style="font-size: 32px;"> / Private investment</span></p>

</div>

<div class="news_bn">
    <div class="wrapp" style="padding-bottom: 10px;">
        <span class="bread"><a href="/">首页</a> > <a href="/wealthManagement/page">财富管理</a> > 私募投资 </span>
        <div class="bread_btn_wrapp">
            <%--<button class="bread_btn " onclick="window.location.href='/privateConsultant/page'">私享顾问</button>--%>
            <%--<button class="bread_btn bread_btn_active " onclick="window.location.href='/privateInvestment/page'">私募投资</button>--%>
        </div>
    </div>

    <section class="select">
        <p class="label" id="investment_poin"></p>
        <p class="label" id="product_term"></p>
        <p class="label" id="risk_level"></p>
        <p class="label" id="income_type"></p>
    </section>

    <section class="">
        <div class="container">
            <p class="label" id="sort">
                排序：
                <span class="select_btn initPage" sortType="createTime">上架时间</span>
                <span class="initPage" sortType="comparisonDatum">业绩比较基准</span>
                <span class="initPage" sortType="amountOfInvestment">产品起点</span>
            </p>
            <%--<div class="item">--%>
                <%--<div class="item_name">--%>
                    <%--<p class="item_title">和意一号私募基金</p>--%>
                <%--</div>--%>
                <%--<div class="item_profit">--%>
                    <%--<p class="item_p">&nbsp;</p>--%>
                    <%--<p class="item_p spe1">10.5%-11.5%</p>--%>
                    <%--<p class="item_p">比较基准</p>--%>
                <%--</div>--%>
                <%--<div class="item_profit">--%>
                    <%--<p class="item_p">&nbsp;</p>--%>
                    <%--<p class="item_p spe2">不设固定期限</p>--%>
                    <%--<p class="item_p">产品期限</p>--%>
                <%--</div>--%>
                <%--<div class="item_profit">--%>
                    <%--<p class="item_p">&nbsp;</p>--%>
                    <%--<p class="item_p spe3">100万元</p>--%>
                    <%--<p class="item_p">投资起点</p>--%>
                <%--</div>--%>
                <%--<button class="btn">立即预约</button>--%>
            <%--</div>--%>
            <%--<div class="item ">--%>
                <%--<div class="item_name">--%>
                    <%--<p class="item_title">和意一号私募基金</p>--%>
                <%--</div>--%>
                <%--<div class="item_profit">--%>
                    <%--<p class="item_p">&nbsp;</p>--%>
                    <%--<p class="item_p spe1">10.5%-11.5%</p>--%>
                    <%--<p class="item_p">比较基准</p>--%>
                <%--</div>--%>
                <%--<div class="item_profit">--%>
                    <%--<p class="item_p">&nbsp;</p>--%>
                    <%--<p class="item_p spe2">不设固定期限</p>--%>
                    <%--<p class="item_p">产品期限</p>--%>
                <%--</div>--%>
                <%--<div class="item_profit">--%>
                    <%--<p class="item_p">&nbsp;</p>--%>
                    <%--<p class="item_p spe3">100万元</p>--%>
                    <%--<p class="item_p">投资起点</p>--%>
                <%--</div>--%>
                <%--<button class="btn">立即预约</button>--%>
            <%--</div>--%>
            <%--<div class="item ">--%>
                <%--<div class="item_name">--%>
                    <%--<p class="item_title">五莲绽放-广和旅游产业基金（有限合伙型）</p>--%>
                <%--</div>--%>
                <%--<div class="item_profit">--%>
                    <%--<p class="item_p">&nbsp;</p>--%>
                    <%--<p class="item_p spe1">6.5%</p>--%>
                    <%--<p class="item_p">比较基准</p>--%>
                <%--</div>--%>
                <%--<div class="item_profit">--%>
                    <%--<p class="item_p">&nbsp;</p>--%>
                    <%--<p class="item_p spe2">不设固定期限</p>--%>
                    <%--<p class="item_p">产品期限</p>--%>
                <%--</div>--%>
                <%--<div class="item_profit">--%>
                    <%--<p class="item_p">&nbsp;</p>--%>
                    <%--<p class="item_p spe3">100万元</p>--%>
                    <%--<p class="item_p">投资起点</p>--%>
                <%--</div>--%>
                <%--<button class="btn">立即预约</button>--%>
            <%--</div>--%>

            <div id="contentData"></div>

            <div style="height: 50px;"></div>

        </div>

    </section>

    <section style="height: 620px;background: #fff">
        <div style="height: 65px"></div>

        <div class="news_page_wrapp">
            <p class="ad_title">产品推荐<span>根据您的风险等级，我们推荐您如下产品</span></p>
            <%--<div class="line"></div>--%>
            <div style="height: 65px"></div>
            <%--<div class="ad_window">--%>
                <%--<p class="ad_window_title">合欣宸睿私募股权基金(契约型)</p>--%>
                <%--<div class="ad_window_left">--%>
                    <%--<p class="ad_window_p1">10%</p>--%>
                    <%--<p class="ad_window_p3">比较基准</p>--%>
                <%--</div>--%>
                <%--<div class="ad_window_right">--%>
                    <%--<p class="ad_window_p2">2+1+1</p>--%>
                    <%--<p class="ad_window_p3">产品期限</p>--%>
                <%--</div>--%>
                <%--<p class="ad_window_p4">募集起始日期：2018-5-29</p>--%>
                <%--<p class="ad_window_p4">募集结束日期：2018-9-29</p>--%>
                <%--<div class="ad_btn_wrapp">--%>
                    <%--<button class="btn ad_window_btn">立即预约</button>--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<div class="separator"></div>--%>
            <%--<div class="ad_window">--%>
                <%--<p class="ad_window_title">龙旅股份一号私募股权基金（契约型）</p>--%>
                <%--<div class="ad_window_left">--%>
                    <%--<p class="ad_window_p1">12%</p>--%>
                    <%--<p class="ad_window_p3">比较基准</p>--%>
                <%--</div>--%>
                <%--<div class="ad_window_right">--%>
                    <%--<p class="ad_window_p2">2+1</p>--%>
                    <%--<p class="ad_window_p3">产品期限</p>--%>
                <%--</div>--%>
                <%--<p class="ad_window_p4">募集起始日期：2018-5-29</p>--%>
                <%--<p class="ad_window_p4">募集结束日期：2018-9-29</p>--%>
                <%--<div class="ad_btn_wrapp">--%>
                    <%--<button class="btn ad_window_btn">立即预约</button>--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<div class="separator"></div>--%>
            <%--<div class="ad_window">--%>
                <%--<p class="ad_window_title">广和锦鸿票据私募投资基金（契约型）</p>--%>
                <%--<div class="ad_window_left">--%>
                    <%--<p class="ad_window_p1">10.5%-11.5%</p>--%>
                    <%--<p class="ad_window_p3">比较基准</p>--%>
                <%--</div>--%>
                <%--<div class="ad_window_right">--%>
                    <%--<p class="ad_window_p2">3</p>--%>
                    <%--<p class="ad_window_p3">产品期限</p>--%>
                <%--</div>--%>
                <%--<p class="ad_window_p4">募集起始日期：2018-5-29</p>--%>
                <%--<p class="ad_window_p4">募集结束日期：2018-9-29</p>--%>
                <%--<div class="ad_btn_wrapp">--%>
                    <%--<button class="btn ad_window_btn">立即预约</button>--%>
                <%--</div>--%>
            <%--</div>--%>
            <div id="recommendList"></div>
        </div>
    </section>

    <jsp:include page="../footer/footer.jsp"></jsp:include>
</body>
<script src="/static/js/mainJs/jquery.min.js"></script>
<script src="/static/js/main.js"></script>
<script>
    var datas = [1, 2, 3, 4, 5, 7, 34, 35, 34, 56, 34, 345, 3];
    var options = {
        "id": "page", //显示页码的元素
        "data": datas, //显示数据
        "maxshowpageitem": 3, //最多显示的页码个数
        "pagelistcount": 8, //每页显示数据个数
        "callBack": function(result) {
            var cHtml = "";
            for(var i = 0; i < result.length; i++) {
                cHtml += "<li>" + result[i].name + "</li>"; //处理数据
            }
        }
    };
    page.init(datas.length, 1, options);



    $.getJSON("/investmentPoin/list",function(rs) {
        var html = '投资起点：<span class="select_btn investment_poin initPage" onclick="javascript:onclickInvestmentPoin(event);return false;" investment_poin="">全部</span>'
        for(var i=0;i<rs.data.data.length;i++){
            html += '<span class="investment_poin initPage" onclick="javascript:onclickInvestmentPoin(event);return false;" investment_poin="'+ rs.data.data[i].id +'">'+ rs.data.data[i].name +'</span>';
        }
        $("#investment_poin").html(html);

        $(".initPage").click(function(){
            
            initPage();
        });
    });



    $.getJSON("/productTerm/list",function(rs) {
        var html = '产品期限：<span class="select_btn product_term initPage" product_term="" onclick="javascript:onclickProductTerm(event);return false;">全部</span>'

        for(var i=0;i<rs.data.data.length;i++){
            html += '<span class="product_term initPage" onclick="javascript:onclickProductTerm(event);return false;" product_term="'+ rs.data.data[i].id +'">'+ rs.data.data[i].name +'</span>';
        }
        $("#product_term").html(html);


        $(".initPage").click(function(){
            
            initPage();
        });
    });




    $.getJSON("/riskLevel/list",function(rs) {
        var html = '风险级别：<span class="select_btn risk_level initPage" risk_level="" onclick="javascript:onclickRiskLevel(event);return false;">全部</span>'
        for(var i=0;i<rs.data.data.length;i++){
            html += '<span class="risk_level initPage" risk_level="'+ rs.data.data[i].id +'" onclick="javascript:onclickRiskLevel(event);return false;">'+ rs.data.data[i].name +'</span>';
        }
        $("#risk_level").html(html);

        $(".initPage").click(function(){
            
           initPage();
        });
    });


    $.getJSON("/incomeType/list",function(rs) {
        var html = '收益类型：<span class="select_btn income_type initPage" income_type="" onclick="javascript:onclickIncomeType(event);return false;">全部</span>'
        for(var i=0;i<rs.data.data.length;i++){
            html += '<span class="income_type initPage" income_type="'+ rs.data.data[i].id +'" onclick="javascript:onclickIncomeType(event);return false;">'+ rs.data.data[i].name +'</span>';
        }
        $("#income_type").html(html);

        $(".initPage").click(function(){
            
            initPage();
        });
    });



    var incomeType = "";
    function onclickIncomeType(e){

        incomeType = $(e.target).attr("income_type");
        $('#income_type span').each(function(){
            if($(this).attr("income_type") != undefined){
                $(this).removeClass("select_btn");
            }
        });

        $(e.target).addClass("select_btn");
    }

    var investmentPoin = "";
    function onclickInvestmentPoin(e){

        investmentPoin = $(e.target).attr("investment_poin");
        $('#investment_poin span').each(function(){
            if($(this).attr("investment_poin") != undefined){
                $(this).removeClass("select_btn");
            }
        });

        $(e.target).addClass("select_btn");
    }

    var productTerm = "" ;
    function onclickProductTerm(e){
        productTerm = $(e.target).attr("product_term");
        $('#product_term span').each(function(){
            if($(this).attr("product_term") != undefined){
                $(this).removeClass("select_btn");
            }
        });

        $(e.target).addClass("select_btn");
    }
    var riskLevel = "";
    function onclickRiskLevel(e){

        riskLevel = $(e.target).attr("risk_level");
        $('#risk_level span').each(function(){
            if($(this).attr("risk_level") != undefined){
                $(this).removeClass("select_btn");
            }
        });

        $(e.target).addClass("select_btn");
    }

    var sortType = "createTime";
    $('#sort span').click(function(){
        $('#sort span').each(function(){
            $(this).removeClass("select_btn");
        });
        $(this).addClass("select_btn");
        sortType = $(this).attr("sortType");
    });


    function appointment(id){
        console.log(id);



    }

    function initPage(){
        $.getJSON("/privateInvestment/list?pageNo=1&pageSize=10&investmentPoinId="
                    +investmentPoin+"&productTermId="+productTerm+"&riskLevelId="
                +riskLevel+"&incomeTypeId="+incomeType+"&sortType="+sortType
                ,function(rs) {
            var html = '';
            for(var i=0;i<rs.data.data.length;i++){
                var amountOfInvestment = rs.data.data[i].amountOfInvestment + "";
                if(amountOfInvestment.length > 8){
                    amountOfInvestment = amountOfInvestment.substring(0,amountOfInvestment.length-8)+"亿元";
                }else if(amountOfInvestment.length <= 8 && amountOfInvestment.length > 4){
                    amountOfInvestment = amountOfInvestment.substring(0,amountOfInvestment.length-4)+"万元";
                }else{
                    amountOfInvestment = rs.data.data[i].amountOfInvestment+"元";
                }
                html += '<div class="item" >'+
                        '<div class="item_name">'+
                        '<p class="item_title" onclick="toDetailsPage('+"'"+rs.data.data[i].id+"'"+');">'+ rs.data.data[i].fundName+'</p>'+
                        '</div>'+
                        '<div class="item_profit">'+
                        '<p class="item_p">&nbsp;</p>'+
                        '<p class="item_p spe1">'+ rs.data.data[i].comparisonDatum+'</p>'+
                        '<p class="item_p">比较基准</p>'+
                        '</div>'+
                        '<div class="item_profit">'+
                        '<p class="item_p">&nbsp;</p>'+
                        '<p class="item_p spe2">'+ rs.data.data[i].productTerm+'</p>'+
                        '<p class="item_p">产品期限</p>'+
                        '</div>'+
                        '<div class="item_profit">'+
                        '<p class="item_p">&nbsp;</p>'+
                        '<p class="item_p spe3">'+ amountOfInvestment+'</p>'+
                        '<p class="item_p">投资起点</p>'+
                        '</div>'+
                        '<button class="btn" onclick="toDetailsPage('+"'"+rs.data.data[i].id+"'"+')">查看详情</button>'+
                        '</div>';
            }
            $("#contentData").html(html);

            var $item = $(".item");
            var $ad = $(".ad_window");
            $item.hover(function() {
                $(this).addClass("item_select");
            }, function() {
                $(this).removeClass("item_select");
            })
            $ad.hover(function() {
                $(this).addClass("ad_select");
            }, function() {
                $(this).removeClass("ad_select");
            })
        });


    }


    function getRecommendList(){
        $.getJSON("/privateInvestment/recommendList" ,function(rs) {
            console.log(rs);
            var html = '';
            for(var i=0;i<rs.data.length;i++){

                var createTimeStr = jsonDateFormat(rs.data[i].startTime);
                var startTime = '募集起始日期: ' + createTimeStr;


                var endTimeStr = jsonDateFormat(rs.data[i].endTime);
                var endTime = '募集结束日期: ' + endTimeStr;
                html += '<div class="ad_window">'+
                            '<p class="ad_window_title">'+rs.data[i].fundName+'</p>'+
                            '<div class="ad_window_left">'+
                                '<p class="ad_window_p1">'+rs.data[i].comparisonDatum+'</p>'+
                                '<p class="ad_window_p3">比较基准</p>'+
                            '</div>'+
                            '<div class="ad_window_right">'+
                                '<p class="ad_window_p2">'+rs.data[i].productTerm+'</p>'+
                                '<p class="ad_window_p3">产品期限</p>'+
                            '</div>'+
                            '<p class="ad_window_p4">'+startTime+'</p>'+
                            '<p class="ad_window_p4">'+endTime+'</p>'+
                            '<div class="ad_btn_wrapp">'+
                                '<button class="btn ad_window_btn" onclick="toDetailsPage('+"'"+rs.data[i].id+"'"+')">立即预约</button>'+
                            '</div>'+
                        '</div>'+
                        '<div class="separator"></div>';
            }
            $("#recommendList").html(html);

            var $item = $(".item");
            var $ad = $(".ad_window");
            $item.hover(function() {
                $(this).addClass("item_select");
            }, function() {
                $(this).removeClass("item_select");
            })
            $ad.hover(function() {
                $(this).addClass("ad_select");
            }, function() {
                $(this).removeClass("ad_select");
            })
        });
    }
    //http://127.0.0.1:8080


    $(function(){
        initPage();

        getRecommendList();
        $(".initPage").click(function(){
            initPage();
        });
    });


    function toDetailsPage(id){
        window.location.href = '/privateInvestment/details?id='+id;
    }


    function jsonDateFormat(jsonDate) {//json日期格式转换为正常格式

        var year = jsonDate.year+1900;
        var month = jsonDate.month+1;
        var day = jsonDate.date;
        month=(month>9)?(""+month):("0"+month);  //如果得到的数字小于9要在前面加'0'
        day=(day>9)?(""+day):("0"+day);
        return year + "-" + month + "-" + day;

    }

</script>

</html>
