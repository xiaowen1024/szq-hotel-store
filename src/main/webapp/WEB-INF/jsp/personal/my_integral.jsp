<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <title>我的积分-广和投资</title>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="icon" href="/static/img/16_16 LOGO.png" type="image/x-icon">
    <!--[if lt IE 9]>
    <script src="/static/js/html5shiv.min.js"></script>
    <script src="/static/js/css3-mediaqueries.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="/static/css/m_app.css?v=1" />
    <link rel="stylesheet" type="text/css" href="/static/css/page.css" />
    <style>
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


        .header {
            height: 120px;
            color: white;
            font-size: 10px;
            padding-top: 4px;
            width: 100%;
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

        .thead {
            width: 960px;
            height: 38px;
            background-color: #dbbe93;
            float: left;
            margin-top: 35px;
        }

        .order_p {
            font-size: 16px;
            color: #ffffff;
            display: inline-block;
            line-height: 38px;
            text-align: center;
        }

        .tedad p {
            display: inline-block;
        }

        .order_item {
            width: 958px;
            height: 48px;
            /*border: #f9f9f9 1px solid;*/
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

        .item_tr {
            height: 40px;
            border-bottom: #f9f9f9 1px solid;
            float: left;
            width: 960px;
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
            /*border-left: #f9f9f9 1px solid;*/
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

        .td1 {
            width: 210px;
            padding: 0 20px;
        }

        .td2 {
            width: 200px;
            color: #999;
        }

        .td3 {
            width: 160px;
            font-size: 18px!important;
            color: #d3a359!important;
        }

        .td4 {
            width: 170px;
        }

        .td5 {
            width: 170px;
        }

        .td5>a {
            color: #005ea7;
        }

        .item_tr {
            height: 55px;
        }

        .item_td {
            line-height: 55px;
            text-align: center;
            color: #555555;
            font-size: 14px;
            display: inline-block;
            text-overflow: ellipsis;
            white-space: nowrap;
            overflow: hidden;
        }
    </style>
</head>

<body>
<div class="header_line"></div>
<div class="header">
    <jsp:include page="../nav/personal_nav.jsp"></jsp:include>
</div>

<section style="background: url(/static/img/bg_team.png);height: 1000px;">

    <div class="container">
        <div class="left_nav">
            <div class="u_pic">
                <img id="userImg" src="" width="96px" />
                <img src="/static/img/level.jpg" />
            </div>
            <p class="u_nick"></p>
            <div class="u_icon">
                <i class="iconfont">&#xe603;</i>
                <i class="iconfont">&#xe623;</i>
                <i class="iconfont">&#xe6fa;</i>
            </div>
            <div>
                <div class="grzx">
                    <p class="list selected" data-id="1">
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
                    <p class="list " data-id="5">
                        投资明细
                    </p>
                    <p class="list " data-id="6">
                        风险评测
                    </p>

                    <p class="list " data-id="7">
                        我的私享顾问
                    </p>

                    <p class="list msg_num_parent" data-id="8">
                        我的消息
                        <span id="msg_num">0</span>
                    </p>
                </div>
            </div>
        </div>
        <div class="detail">
            <p class="my_order">我的积分</p>
            <img style="position: absolute;top: 76px;right: 20px;" src="" id="bigImg" />
            <input type="file" id="hideImg" accept="image/*" class="dis_none" >
            <div style="width: 510px;height: 242px;border: solid 1px #eeeeee;border-radius: 3px;position: relative;margin-top: 30px;">
                <div id="userImg1" style="position: absolute;top: 40px;left: 36px;width: 110px;height: 110px;border-radius: 55px;background-image: url(/);background-size:cover ;overflow: hidden;">
                    <p style="color: #fff;top: 68px;background: #555;position: absolute;padding: 0 23px;">修改头像</p>
                </div>
                <p style="font-size: 14px;color: #333;padding: 35px 0 0 183px;">
                    hi <span style="font-size: 22px;color: #d3a359;padding: 0 5px;" id="dhhm"></span> 欢迎你回来！
                </p>
                <p style="background: url(/static/img/lev.jpg) 20px center no-repeat ;margin: 30px 0 0 163px;padding-left: 50px;color: #b8916d;font-size: 14px;background-size: 24px 24px;" id="_leave_">

                </p>
                <p style="font-size: 16px;color: #333;padding-top: 20px;padding-left: 183px;">
                    我的可用积分：<span style="font-size: 20px;color: #d3a359;padding: 0 5px;"> <span id="kyjf"></span>积分</span>
                </p>
                <p style="font-size: 14px;color: #999;padding-top: 25px;padding-left: 183px;">
                    <!--2018-01-08 09:47:27-->
                </p>
            </div>
            <div class="thead">
                <p class="order_p" style="width: 250px;">消费信息</p>
                <p class="order_p" style="width: 200px;">交易时间</p>
                <p class="order_p" style="width: 160px;">积分金额</p>
                <p class="order_p" style="width: 150px;">交易状态</p>
                <p class="order_p" style="width: 180px;">积分剩余</p>
            </div>
            <div id="rs">

            </div>

            <div style="height: 28px; width: 360px; margin: 20px auto">
                <ul class="page" id="page"></ul>
            </div>
            <div style="clear: both;"></div>
        </div>
    </div>
</section>

<jsp:include page="/WEB-INF/jsp/footer/footer.jsp"></jsp:include>
</body>
<script src="/static/js/jquery-2.2.0.min.js"></script>
<script src="/static/js/main.js?v=3"></script>
<script src="/static/js/page.js"></script>
<script src="/static/layer/layer.js"></script>
<script>
    var options,
            pageNo = getUrlParms("pageNo"),
            pageSize = getUrlParms("pageSize");
    if(pageNo==null)pageNo = 1;
    if(pageSize==null)pageSize = 7;
    getdata(pageNo,pageSize);

    function getdata(pageNo,pageSize,start,end){
        var url = getUrlParms();
        if(url.indexOf("pageNo")==-1){
            url+="&pageNo="+pageNo+"&pageSize="+pageSize;
        }
        $.ajax({
            url: "/myintegraTransactionController/list?"+url,
            type:"post",
            dataType: "json",
            success:function(rs){
                if(!rs.success&&rs.errCode=='0010007') window.location.href = "/login/loginPage"
                document.getElementById("_leave_").textContent = rs.data.leave;
                document.getElementById("_leave_").style.background  = "url('"+rs.data.Url+rs.data.smallImage+"') 20px center no-repeat ";
                document.getElementById("_leave_").style.backgroundSize = "24px 24px";
                $("#bigImg").attr("src",rs.data.Url+rs.data.leave_image);
//                $("#userImg1").attr("src",rs.data.Url+rs.data.leave_image);

                var datas=rs.data.data;
                $("#kyjf").text(rs.data.integral);
                $("#dhhm").text(dealPhone(rs.data.phone));
                renderTable(datas,rs.data.Url);
                options={
                    "id":"page",
                    "data":datas,
                    "maxshowpageitem":3,
                    "pagelistcount":pageSize,
                    "callBack":function(result){

                    }
                };
                page.init(rs.data.count,pageNo,options);
            }
        });
    }

    function renderTable(result,u){

        $("#rs").empty();
        if(result.length==0)
            $("#rs").append('<p style="text-align: center; padding: 50px;">您还没有积分记录<p>');
        for (var i = 0; i < result.length; i++) {


            $("#rs").append(

                    ['<div class="item_tr">',
                        '<div class="item_td td1">',
                        result[i].payinfo,
                        '</div>',
                        '<div class="item_td td2">',
                        DateToLStr(new Date(result[i].createTime.time)),
                        '</div>',
                        '<div class="item_td td3">',
                        result[i].deal,
                        '</div>',
                        '<div class="item_td td4">',
                        checkState(result[i].state),
                        '</div>',
                        '<div class="item_td td5">',
                        result[i].oddintegral,
                        '</div>',
                        '</div>	'].join(""))
        }
    }

    function checkState(d){
        if(d==1)return '交易成功'
        if(d==2)return '退款'
        if(d==3)return '交易成功'

    }
    $("#userImg1").on("click", function() {
        $("#hideImg").trigger("click")
    })
    $("#hideImg").on("change", function() {
        var formData = new FormData();
        formData.append('myFile', $("#hideImg")[0].files[0]); /*获取上传的图片对象*/
        $.ajax({
            url: '/myintegraTransactionController/uploadImage',
            type: 'POST',
            data: formData,
            dataType:'json',
            contentType: false,
            processData: false,
            success: function(rs) {
                if(rs.success)location.reload();
            }
        })
    })
</script>

</html>