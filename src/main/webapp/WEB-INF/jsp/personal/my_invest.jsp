<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>我的投资-个人中心-广和投资</title>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="icon" href="/static/img/16_16 LOGO.png" type="image/x-icon">
    <!--[if lt IE 9]>
    <script src="/static/js/html5shiv.min.js"></script>
    <script src="/static/js/css3-mediaqueries.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="/static/css/m_app.css"/>
    <link rel="stylesheet" type="text/css" href="/static/css/page.css"/>

    <style>
        .icon {
            color: #999999;
            font-size: 15px;
            padding: 0 5px;
        }

        .u_icon>i:nth-child(1) {
            color: #999999;
            position: absolute;
            top: 15px;
            left: 66px;
        }

        .u_icon>i:nth-child(2) {
            color: #999999;
            position: absolute;
            top: 16px;
            left: 90px;
        }

        .u_icon>i:nth-child(3) {
            color: #999999;
            position: absolute;
            top: 16px;
            left: 117px;
        }

        .iconfont:hover {
            color: #D3A359;
        }

        .header_up span,
        i {
            color: #777777;
        }

        .btn:hover {
            color: white;
            background: #D3A359;
        }

        .iconfont:hover {
            color: #D3A359;
        }

        @font-face {
            font-family: 'iconfont';
            /* project id 754425 */
            src: url('//at.alicdn.com/t/font_754425_v675r8u05qj.eot');
            src: url('//at.alicdn.com/t/font_754425_v675r8u05qj.eot?#iefix') format('embedded-opentype'), url('//at.alicdn.com/t/font_754425_v675r8u05qj.woff') format('woff'), url('//at.alicdn.com/t/font_754425_v675r8u05qj.ttf') format('truetype'), url('//at.alicdn.com/t/font_754425_v675r8u05qj.svg#iconfont') format('svg');
        }

        .footer_bottom p {
            color: #FFFFFF;
            font-size: 12px;
        }

        .footer_bottom_right {
            float: right;
            margin-top: 5px;
        }

        button {
            background-color: transparent;
            color: #D3A359;
            padding: 8px 10px;
            border-radius: 2px;
            border: #D3A359 1px solid;
            cursor: pointer;
        }

        .btn:active {
            position: relative;
            top: 1px;
            left: 1px;
        }

        .nav_logo {
            width: 155px;
            height: 45px;
            float: left;
            margin-right: 65px;
            margin-top: 0px;
        }

        .nav_a {
            display: block;
            margin: 8px 20px;
            padding: 0 0 10px 0;
            color: #000000;
            font-size: 16px;
        }

        .has_menu>.sub_ul {
            position: absolute !important;
            z-index: 9 !important;
            border-radius: 0px;
            top: 95px;
            width: 212px;
            margin-left: 15px;
            background: #E0E0E0;
        }

        .header {
            height: 120px;
            color: white;
            font-size: 10px;
            padding-top: 4px;
            width: 100%;
        }

        .list>span {
            opacity: 0;
        }

        .list_line {
            border-bottom: solid 1px #ececec;
        }

        .list.msg {
            position: relative;
            text-align: left;
            padding-left: 20px;
        }

        .msg_tip {
            width: 30px;
            height: 30px;
            border-radius: 15px;
            background: #D3A359;
            position: absolute;
            display: inline-block;
            left: 130px;
            top: 21px;
            color: white!important;
            line-height: 30px;
            font-size: 15px;
            transform: scale(.7);
            text-align: center;
            opacity: 1!important;
        }

        .selected>i {
            color: #D3A359;
        }

        .selected {
            color: #D3A359;
        }

        .list.selected>span {
            opacity: 1;
        }

        .my_order {
            font-size: 20px;
            letter-spacing: 0px;
            color: #555555;
            position: relative;
        }

        .detail {
            padding: 20px;
            float: left;
            width: 960px;
            height: 788px;
            background: #FFFFFF;
            border: #f9f9f9 1px solid;
            position: relative;
        }

        .order_ul {
            float: left;
        }

        .order_ul>li {
            border-left: 1px solid #999999;
        }

        .order_ul>li:nth-child(1) {
            border-left: 0px solid #999999;
        }

        .order_ul>li>a {
            padding: 0 20px;
            cursor: pointer;
            font-size: 16px;
            color: #555555;
        }

        .tedad p {
            display: inline-block;
        }

        .order_item {
            width: 958px;
            height: 48px;
            border: #000 1px solid;
            margin-top: 20px;
        }

        .order_time {
            display: inline-block;
            font-size: 16px;
            color: #555555;
            line-height: 40px;
            padding-left: 20px;
        }

        .order_seq {
            font-size: 16px;
            color: #333333;
            display: inline-block;
            line-height: 40px;
            padding-left: 35px;
        }

        .container {
            width: 1200px;
            margin: 0px auto;
            padding-top: 50px;
        }

        .left_nav {
            float: left;
            width: 198px;
            height: 830px;
            background: #FFFFFF;
        }

        .u_pic {
            position: relative;
            height: 150px;
        }

        .u_pic>img:nth-child(1) {
            border-radius: 50%;
            margin-top: 36px;
            margin-left: 50px;
            width: 96px;
            height: 96px;
        }

        .u_pic>img:nth-child(2) {
            width: 48px;
            position: absolute;
            left: 110px;
            top: 82px;
            border: 1px solid #eee;
            height: 48px;
            border-radius: 24px;
        }

        .u_nick {
            font-size: 13px;
            color: #555555;
            text-align: center;
        }

        .u_icon {
            height: 55px;
            padding-left: 56px;
            border-bottom: solid 1px #ececec;
            position: relative;
        }

        .order_tr {
            height: 110px;
        }

        .order_trh {
            padding: 20px 0;
            float: left;
        }

        .order_input_box {
            float: right;
            padding: 20px;
        }

        .order_input_box>input {
            width: 200px;
            padding-left: 10px;
        }

        .item_pic {
            float: left;
            height: 48px;
            padding-left: 15px;
        }

        .item_pic>img {
            width: 149px;
            height: 117px;
            padding: 5px;
        }

        .item_name {
            float: left;
            height: 48px;
            padding-left: 20px;
        }

        .item_name p:hover {
            color: #D3A359
        }

        .item_name p {
            width: 289px;
            padding-top: 0px;
            color: #555555;
            font-size: 16px;
        }

        .item_num {
            float: left;
            height: 48px;
        }

        .item_num p {
            color: #555555;
            font-size: 22px;
            line-height: 48px;
            width: 100px;
            text-align: center;
        }

        .item_price {
            float: left;
            height: 48px;
        }

        .item_price p {
            color: #D3A359;
            font-size: 22px;
            line-height: 48px;
            width: 200px;
            text-align: center;
        }

        .item_detail {
            float: left;
            line-height: 48px;
            padding: 0px 0;
            width: 165px;
            display: table-cell;
            vertical-align: middle;
            text-align: center;
        }

        .item_detail a {
            line-height: 10px;
            color: #005ea7;
            font-size: 16px;
        }

        .item_state {
            text-align: center;
            display: block;
            width: 170px;
            color: #D3A359;
            font-size: 22px;
            padding-bottom: 5px;
        }

        .item_trans {
            text-align: center;
            display: block;
            width: 170px;
            color: #555555;
            font-size: 16px;
        }

        .item_trans i {
            color: #D3A359;
        }

        .item_trans:hover {
            color: #D3A359
        }

        .order_ul>li>.selected {
            color: #D3A359;
        }

        .order_item>div {
            border-left: #000 1px solid;
        }

        .cart_tip {
            width: 436px;
            height: 192px;
            background-image: url(/static/img/cancel_favorite.jpg);
            position: relative;
        }

        .cart_tip>button:nth-child(1) {
            width: 67px;
            height: 32px;
            opacity: 0;
            position: absolute;
            bottom: 24px;
            left: 266px;
        }

        .cart_tip>button:nth-child(2) {
            width: 67px;
            height: 32px;
            opacity: 1;
            position: absolute;
            bottom: 24px;
            left: 339px;
        }

        .atd1 {
            width: 210px;
        }

        .atd2 {
            width: 175px;
        }

        .atd3 {
            width: 120px;
        }
        .atd4 {
            width: 80px;
        }
        .btd1{
            width: 170px;
        }
        .btd2 {
            width: 150px;
        }
        .btd3 {
            width: 100px;
        }
        .item_tr {
            min-height: 60px;
            border-bottom: 1px solid #e8e8e8;
            display: table;
            table-layout: fixed;
            word-wrap: break-word;
        }

        .item_td {
            display: table-cell;
            font-size: 14px!important;
            color: #666!important;
            vertical-align: middle;
            text-align: center;
        }

        th {
            background: #D3A359;
            color: #fff!important;
        }

        .layui-laydate-footer {
            display: none;
        }

        #amount1 {
            font-size: 42px;
            color: #e5893e;
            position: absolute;
            top: 50px;
            left: 200px;
        }

        #amount2 {
            font-size: 38px;
            color: #5e5e5e;
            position: absolute;
            top: 50px;
            left: 570px;
        }

        #amount3 {
            font-size: 28px;
            color: #d3a359;
            position: absolute;
            top: 185px;
            left: 39px;
        }

        #amount4 {
            font-size: 28px;
            color: #5e5e5e;
            position: absolute;
            top: 185px;
            left: 357px;
        }

        #amount5 {
            font-size: 28px;
            color: #5e5e5e;
            position: absolute;
            top: 185px;
            left: 653px;
        }

        .tab {
            background: #fafafa;
            color: #333;
            font-size: 14px;
            border: 1px solid #ccc;
            border-top-left-radius: 5px;
            border-top-right-radius: 5px;
            height: 40px;
            width: 88px;
            border-bottom: 0px;
            margin-right: 2px;
        }

        .tab.act {
            color: #D3A359;
            background: #fff;
            border-bottom: #fff 1px solid;
            height: 41px;
        }

        .thead {
            width: 960px;
            height: 54px;
            background-color: #fafafa;
            display: table;
        }

        .order_p {
            font-size: 14px;
            color: #333;
            display: table-cell;
            vertical-align: middle;
            text-align: center;
            table-layout: fixed;
            word-wrap: break-word;
        }
        .fcd8{
            color: #d88d4e;
        }
    </style>
</head>

<body>
<div class="header_line"></div>
<div class="header">
    <jsp:include page="../nav/personal_nav.jsp"></jsp:include>
</div>

<section style="background: url(/static/img/bg_team.png);height: 1000px;" >

    <div class="container">
        <div class="left_nav">
            <div class="u_pic">
                <img src="" width="96px" />
                <img src="/static/img/level.jpg"/>
            </div>
            <p class="u_nick">天体阿妮塔</p>
            <div class="u_icon">
                <i class="iconfont">&#xe603;</i>
                <i class="iconfont" >&#xe623;</i>
                <i class="iconfont">&#xe6fa;</i>
            </div>
            <div class="grzx">
                <p class="list" data-id="1">
                    我的积分
                </p>
                <p class="list" data-id="2">
                    订单中心
                </p>
                <p class="list " data-id="3">
                    我的收藏
                </p>
                <p class="list list_line" data-id="4">
                    账户管理
                </p>
                <p class="list selected" data-id="5">
                    投资明细
                </p>
                <p class="list" data-id="6">
                    风险评测
                </p>

                <p class="list " data-id="7">
                    我的私享顾问
                </p>

                <p class="list  msg_num_parent" data-id="8">
                    我的消息
                    <span id="msg_num">0</span>
                </p>
            </div>

        </div>
        <div class="detail">
            <p class="my_order">投资明细</p>
            <div style="height: 30px;"></div>
            <div style="width: 960px;height: 250px;	background: url(/static/img/investTitle.png);position: relative;">
                <span id="amount1">0</span>
                <span id="amount2">0</span>
                <span id="amount3">0</span>
                <span id="amount4">0</span>
                <span id="amount5">0</span>
            </div>
            <div style="height: 20px;"></div>
            <div style="width: 960px;border-bottom: 1px solid #ccc;height: 40px;font-size: 0px;position: relative;">
                <button data-type="1" class="tab act">股权</button>
                <button data-type="2" class="tab">证券</button>
                <button data-type="3" class="tab">票据</button>
                <select id="tzzt" style="position: absolute;top:3px; right: 10px;padding: 5px 10px;border:#ccc 1px solid;border-radius: 5px;color: #6C6C6C;">
                    <option value="">全部投资状态</option>
                    <option value="1">预约中</option>
                    <option value="2">投资中</option>
                    <option value="3">已回款</option>
                </select>
            </div>
            <div style="height: 20px;"></div>
            <div class="thead" id="thead">
                <!--<p class="order_p atd1">产品名称</p>
                <p class="order_p atd2">购买金额（元）</p>
                <p class="order_p atd3">成立日</p>
                <p class="order_p atd3">开放日</p>
                <p class="order_p atd3">退出期</p>
                <p class="order_p atd3">退出延长期</p>
                <p class="order_p atd3">投资状态</p>-->
            </div>
            <div style="clear: both; height: 10px;"></div>
            <div id="rs">

                <!--<div class="item_tr">
                    <div class="item_td atd1">1</div>
                    <div class="item_td atd2">2</div>
                    <div class="item_td atd3">3</div>
                    <div class="item_td atd3">4</div>
                    <div class="item_td atd3">5</div>
                    <div class="item_td atd3">6</div>
                    <div class="item_td atd3">7</div>
                </div>-->
            </div>
            <div style="height: 28px; width: 360px; margin: 20px auto">
                <ul class="page" id="page"></ul>
            </div>
        </div>


    </div>
</section>






<jsp:include page="/WEB-INF/jsp/footer/footer.jsp"></jsp:include>
</body>

<script src="/static/js/jquery-2.2.0.min.js"></script>
<script src="/static/js/main.js"></script>
<script src="/static/layer/layer.js"></script>
<script src="/static/layer/laydate/laydate.js"></script>

<script>
    laydate.render({
        elem: '#start' //指定元素
    });
    laydate.render({
        elem: '#end' //指定元素
    });

    function search() {
        getdata(1, 4, document.getElementById("start").value, document.getElementById("end").value);
    }

    var options,
            pageNo = getUrlParms("pageNo"),
            pageSize = getUrlParms("pageSize");
    if(pageNo == null) pageNo = 1;
    if(pageSize == null) pageSize = 4;

    getdata(pageNo, pageSize);

    function getdata(pageNo, pageSize, start, end , productType) {
        var url = getUrlParms();
        if(url.indexOf("pageNo") == -1) {
            url += "&pageNo=" + pageNo + "&pageSize=" + pageSize;
        }
        if(start && start != '') url += "&startTime=" + start;
        if(end && end != '') url += "&endTime=" + end;
        if(productType && productType != ''){
            url += "&productType=" + productType;
        }else{
            url += "&productType=1" ;
            productType = 1;
        }
        if(document.getElementById("tzzt").value != ''){
            url+= "&status=" + document.getElementById("tzzt").value
        }
        $.ajax({
            url: "/subscribe/list?" + url,
            type: "post",
            dataType: "json",
            success: function(rs) {
                if(!rs.success && rs.errCode == '0010007') window.location.href = "/"+url_login
                var datas = rs.data.data;
                renderTable(datas,productType);
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

    function renderTable(result,type) {
        $("#thead").empty()
        if(type==1){
            $("#thead").append(
                    ['<p class="order_p atd1">产品名称</p>',
                        '<p class="order_p atd2">购买金额（元）</p>',
                        '<p class="order_p atd3">成立日</p>',
                        '<p class="order_p atd3">开放日</p>',
                        '<p class="order_p atd3">退出期</p>',
                        '<p class="order_p atd3">退出延长期</p>',
                        '<p class="order_p atd3">投资状态</p>'].join(""))
        }else if(type ==2){
            $("#thead").append(
                    ['<p class="order_p btd1">产品名称</p>',
                        '<p class="order_p btd2">购买金额（元）</p>',
                        '<p class="order_p btd2">购买份额（元）</p>',
                        '<p class="order_p btd3">基金成立日</p>',
                        '<p class="order_p btd3">平均单位购入净值（元）</p>',
                        '<p class="order_p btd3">现在单位净值（元）</p>',
                        '<p class="order_p btd3">开放日</p>',
                        '<p class="order_p btd3">结束封闭日</p>',
                        '<p class="order_p btd3">投资状态</p>'].join(""))
        }else if(type ==3){
            $("#thead").append(
                    ['<p class="order_p btd1">产品名称</p>',
                        '<p class="order_p btd2">认购金额（元）</p>',
                        '<p class="order_p btd3">购买日</p>',
                        '<p class="order_p btd3">年化收益率</p>',
                        '<p class="order_p btd3">预存期限</p>',
                        '<p class="order_p btd3">到期日</p>',
                        '<p class="order_p btd3">已实现收益</p>',
                        '<p class="order_p btd3">未实现收益</p>',
                        '<p class="order_p btd3">预期总收益</p>',
                        '<p class="order_p btd3">投资状态</p>'].join(""))
        }
        $("#rs").empty();
        if(result.length == 0) {
            $("#search_tip").text("没有查到相应记录！");
            return;
        }
        document.getElementById("amount1").textContent = number_format(result[0].counton)
        document.getElementById("amount2").textContent = number_format(result[0].collected)
        document.getElementById("amount3").textContent = number_format(result[0].earn)
        document.getElementById("amount4").textContent = number_format(result[0].cumulative)
        document.getElementById("amount5").textContent = number_format(result[0].received)

        if(type==1)render1(result)
        if(type==2)render2(result)
        if(type==3)render3(result)
    }

    function number_format(number, decimals, dec_point, thousands_sep) {
        /*
         * 参数说明：
         * number：要格式化的数字
         * decimals：保留几位小数
         * dec_point：小数点符号
         * thousands_sep：千分位符号
         * */
        if(!number)return 0;
        if(!decimals) decimals = 0;
        number = (number + '').replace(/[^0-9+-Ee.]/g, '');
        var n = !isFinite(+number) ? 0 : +number,
                prec = !isFinite(+decimals) ? 2 : Math.abs(decimals),
                sep = (typeof thousands_sep === 'undefined') ? ',' : thousands_sep,
                dec = (typeof dec_point === 'undefined') ? '.' : dec_point,
                s = '',
                toFixedFix = function(n, prec) {
                    var k = Math.pow(10, prec);
                    return '' + Math.ceil(n * k) / k;
                };


        s = (prec ? toFixedFix(n, prec) : '' + Math.round(n)).split('.');
        var re = /(-?\d+)(\d{3})/;
        while(re.test(s[0])) {
            s[0] = s[0].replace(re, "$1" + sep + "$2");
        }


        if((s[1] || '').length < prec) {
            s[1] = s[1] || '';
            s[1] += new Array(prec - s[1].length + 1).join('0');
        }
        return s.join(dec);
    }

    $tab = $(".tab");
    $tab.on("click", function() {
        $tab.removeClass("act");
        $(this).addClass("act");
        getdata(1,4,null,null,$(this).data("type"))
    })
    function checkState(v){
        if(v==1)return '<span style="color:#d8dd4c;">&bull;&nbsp;</span>预约中'
        if(v==2)return '<span style="color:#d2af78;">&bull;&nbsp;</span>投资中'
        if(v==3)return '<span style="color:#52c41a;">&bull;&nbsp;</span>已回款'

    }
    function render1(result){

        for(var i = 0; i < result.length; i++) {

            $("#rs").append(
                    [
                        '<div class="item_tr">',
                        '<div class="item_td atd1">'+result[i].fundName+'</div>',
                        '<div class="item_td atd2 fcd8">'+result[i].confirmationOfAmount+'</div>',
                        '<div class="item_td atd3">'+fmtDate(result[i].endTime)+'</div>',
                        '<div class="item_td atd3 fcd8">'+result[i].openDay+'</div>',
                        '<div class="item_td atd3">'+result[i].exitday+'</div>',
                        '<div class="item_td atd3">'+result[i].extendedday+'</div>',
                        '<div class="item_td atd3">'+checkState(result[i].status)+'</div>',
                        '</div>'
                    ].join(""))
        }
    }
    function render2(result){

        for(var i = 0; i < result.length; i++) {

            $("#rs").append(
                    [
                        '<div class="item_tr">',
                        '<div class="item_td btd1">'+result[i].fundName+'</div>',
                        '<div class="item_td btd2 fcd8">'+result[i].confirmationOfAmount+'</div>',
                        '<div class="item_td btd2 fcd8">'+result[i].payCount+'</div>',
                        '<div class="item_td btd3">'+fmtDate(result[i].endTime)+'</div>',
                        '<div class="item_td btd3">'+result[i].aveNet+'</div>',
                        '<div class="item_td btd3">'+result[i].nowNet+'</div>',
                        '<div class="item_td btd3 fcd8">'+result[i].openDay+'</div>',
                        '<div class="item_td btd3">'+fmtDate(result[i].closeTime)+'</div>',
                        '<div class="item_td btd3">'+checkState(result[i].status)+'</div>',
                        '</div>'
                    ].join(""))
        }
    }
    function render3(result){

        for(var i = 0; i < result.length; i++) {

            $("#rs").append(
                    [
                        '<div class="item_tr">',
                        '<div class="item_td btd1">'+result[i].fundName+'</div>',
                        '<div class="item_td btd2 fcd8">'+result[i].confirmationOfAmount+'</div>',
                        '<div class="item_td btd3">'+fmtDate(result[i].confirmationOfDate)+'</div>',
                        '<div class="item_td btd3">'+result[i].earnings+'</div>',
                        '<div class="item_td btd3">'+result[i].prestorelimit+'</div>',
                        '<div class="item_td btd3">'+fmtDate(result[i].Maturity)+'</div>',
                        '<div class="item_td btd3">-</div>',
                        '<div class="item_td btd3">-</div>',
                        '<div class="item_td btd3">-</div>',
                        '<div class="item_td btd3">'+checkState(result[i].status)+'</div>',
                        '</div>'
                    ].join(""))
        }
    }


    //时间转换
    function fmtDate(obj){
        if(!obj)return '-'
        var date =  new Date(obj.time);
        var y = 1900+date.getYear();
        var m = "0"+(date.getMonth()+1);
        var d = "0"+date.getDate();
        return y+"-"+m.substring(m.length-2,m.length)+"-"+d.substring(d.length-2,d.length);
    }

    $("#tzzt").on("change",function(){
        getdata(1,4,null,null,$(".act").data("type"))
    })
</script>

</html>
