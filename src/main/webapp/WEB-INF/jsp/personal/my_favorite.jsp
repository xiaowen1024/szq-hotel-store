<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>我的收藏-广和投资</title>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="icon" href="/static/img/16_16 LOGO.png" type="image/x-icon">
    <!--[if lt IE 9]>
    <script src="/static/js/html5shiv.min.js"></script>
    <script src="/static/js/css3-mediaqueries.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="/static/css/m_app.css"/>
    <link rel="stylesheet" type="text/css" href="/static/css/page.css" />
    <style>
        .icon{
            color: #999999;
            font-size: 15px;
            padding: 0 5px;
        }
        .u_icon>i:nth-child(1){
            color: #999999;
            position: absolute;top: 15px;left: 66px;
        }
        .u_icon>i:nth-child(2){
            color: #999999;
            position: absolute;top: 16px;left: 90px;
        }
        .u_icon>i:nth-child(3){
            color: #999999;
            position: absolute;top: 16px;left: 117px;
        }
        .iconfont:hover{
            color: #D3A359;
        }
        .header_up span,i{
            color: #777777;
        }
        .btn:hover{
            color: white;
            background: #D3A359;
        }
        .iconfont:hover{
            color: #D3A359;
        }
        @font-face {
            font-family: 'iconfont';  /* project id 754425 */
            src: url('//at.alicdn.com/t/font_754425_v675r8u05qj.eot');
            src: url('//at.alicdn.com/t/font_754425_v675r8u05qj.eot?#iefix') format('embedded-opentype'),
            url('//at.alicdn.com/t/font_754425_v675r8u05qj.woff') format('woff'),
            url('//at.alicdn.com/t/font_754425_v675r8u05qj.ttf') format('truetype'),
            url('//at.alicdn.com/t/font_754425_v675r8u05qj.svg#iconfont') format('svg');
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
        .btn:active{
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

        /*.list>span{*/
            /*opacity: 0;*/
        /*}*/
        .list_line{
            border-bottom: solid 1px #ececec;
        }
        .list.msg{
            position: relative;
            text-align:  left;
            padding-left: 20px;
        }
        .msg_tip{
            width: 30px;height: 30px; border-radius: 15px;
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
        .selected>i{
            color: #D3A359;
        }
        .selected{
            color: #D3A359;
        }
        .list.selected>span{
            opacity: 1;
        }
        .my_order{
            font-size: 20px;
            letter-spacing: 0px;
            color: #555555;
        }
        .detail{
            padding: 20px; float: left;width: 960px;height: 788px;background: #FFFFFF;border: #f9f9f9 1px solid;
            /*overflow: auto;*/
        }
        .order_ul{
            float: left;
        }
        .order_ul>li{
            border-left: 1px solid #999999;
        }
        .order_ul>li:nth-child(1){
            border-left: 0px solid #999999;
        }
        .order_ul>li>a{
            padding:0 20px ;
            cursor: pointer;
            font-size: 16px;
            color: #555555;
        }
        .thead {
            width: 960px;
            height: 38px;
            background-color: #dbbe93;
            float: left;
        }
        .order_p{

            font-size: 16px;
            color: #ffffff;
            display: inline-block;
            line-height: 38px;
            text-align: center;
        }
        .tedad p{
            display: inline-block;

        }
        .order_item{
            width: 958px;
            height: 128px;
            border: #f9f9f9 1px solid;
            margin-top: 20px;
        }
        .order_time{
            display: inline-block;
            font-size: 16px;
            color: #555555;
            line-height: 40px;
            padding-left: 20px;
        }
        .order_seq{
            font-size: 16px;
            color: #333333;
            display: inline-block;
            line-height: 40px;
            padding-left: 35px;
        }
        .container{
            width: 1200px;margin: 0px auto;
            padding-top: 50px;
        }
        .left_nav{
            float: left;width: 198px;height: 830px;background: #FFFFFF;
        }
        .u_pic{
            position: relative;height: 150px;
        }
        .u_pic>img:nth-child(1){
            border-radius: 50%;margin-top:36px ;margin-left: 50px;width: 96px;height: 96px;
        }
        .u_pic>img:nth-child(2){
            width: 48px;position: absolute;left: 110px;
            top:82px;border:1px solid #eee;
            height: 48px;border-radius: 24px;
        }
        .u_nick{
            font-size: 13px;color: #555555; text-align: center;
        }
        .u_icon{
            height: 55px;padding-left: 56px; border-bottom: solid 1px #ececec;
            position: relative;
        }
        .order_tr{
            height: 110px;
        }
        .order_trh{
            padding:20px 0;float: left;
        }
        .order_input_box{
            float: right; padding: 20px;
        }
        .order_input_box>input{
            width: 200px;padding-left: 10px;
        }
        .item_tr{
            height: 40px;border-bottom: #f9f9f9 1px solid;
            float: left;
            width: 960px;
        }

        .item_pic{
            float: left; height: 128px;padding-left: 15px;
        }
        .item_pic>img{
            width: 149px;height: 117px;padding: 5px;
        }
        .item_name{
            float: left; height: 128px;padding-left: 20px;
        }
        .item_name p:hover{
            color: #D3A359
        }

        .item_name p{
            width: 289px;padding-top: 40px;color: #555555;font-size: 16px;
        }
        .item_num{
            float: left; height: 128px;
        }
        .item_num p{
            color: #555555;font-size: 20px;line-height: 122px;width: 100px;text-align: center;
        }
        .item_price{
            float: left; height: 128px;
        }
        .item_price p{
            color: #D3A359;font-size: 22px;line-height: 122px;width: 200px;text-align: center;
        }
        .item_detail{
            float: left; height: 88px;padding: 20px 0;width: 165px;
            display: table-cell;vertical-align: middle;text-align: center;
        }
        .item_detail a{
            line-height: 80px;
            color: #005ea7;
            font-size: 16px;
        }
        .item_state{
            text-align: center;display: block;width: 170px;color: #D3A359;font-size: 22px;padding-bottom: 5px;
        }
        .item_trans{
            text-align: center;display: block;width: 170px;color: #555555;font-size: 16px;
        }
        .item_trans i{
            color: #D3A359;
        }
        .item_trans:hover{
            color: #D3A359
        }
        .order_ul>li>.selected{
            color: #D3A359;
        }
        .order_item>div{
            border-left: #f9f9f9 1px solid;
        }
        .cart_tip{
            width: 436px;
            height: 192px;
            background-image: url(/static/img/cancel_favorite.jpg);
            position: relative;
        }
        .cart_tip>button:nth-child(1){
            width: 67px;
            height: 32px;
            opacity: 0;
            position: absolute;
            bottom: 24px;
            left: 266px;
        }
        .cart_tip>button:nth-child(2){
            width: 67px;
            height: 32px;
            opacity: 1;
            position: absolute;
            bottom: 24px;
            left: 339px;
        }
    </style>
</head>

<body>
<div class="header_line"></div>
<div class="header">
    <jsp:include page="../nav/personal_nav.jsp"></jsp:include>
</div>

<section style="background: url(/static/img/bg_team.png);height: 1000px;" >
    <!--<section style="background: #EEEEEE;height: 1000px;" >-->

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
                <p class="list selected" data-id="3">
                    我的收藏
                </p>
                <p class="list list_line " data-id="4">
                    账户管理
                </p>
                <p class="list" data-id="5">
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
            <p class="my_order">我的收藏</p>
            <div class="order_tr">
                <div class="order_trh">
                    <ul class="order_ul">
                        <li><a class="selected">我的收藏</a></li>
                        <li><a href="/personal/my_history">浏览历史</a></li>

                    </ul>
                </div>

                <div class="thead">
                    <p class="order_p" style="width: 480px;">商品名称</p>
                    <p class="order_p" style="width: 100px;">库存情况</p>
                    <p class="order_p" style="width: 190px;">积分价</p>
                    <p class="order_p" style="width: 170px;">操作</p>
                </div>
            </div>

            <div id="rs">

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
<script src="/static/js/page.js"></script>
<script src="/static/layer/layer.js"></script>
<script>
    var sku;
    function cancel_favorite(t){
        sku = $(t).data("sku");
        layer.open({
            type: 1,
            title: false,
            closeBtn: 0,
            area:["436px","192px"],
            content: '<div class="cart_tip"><button onclick="layer.closeAll();"></button><button onclick="goCancel();"></button></div>'
        });
    }
    function goCancel(){

        $.ajax({
            url: '/GoodsFollow/deleteGoodsDetailFollow?sku='+sku,
            dataType: "json",
            success:function(rs){
                if(rs.success){
                    layer.closeAll();
                    getdata(1,4);
                }
            }
        })
    }

    var options,
            pageNo = getUrlParms("pageNo"),
            pageSize = getUrlParms("pageSize");
    if(pageNo==null)pageNo = 1;
    if(pageSize==null)pageSize = 4;
    getdata(pageNo,pageSize);

    function getdata(pageNo,pageSize,start,end){
        var url = getUrlParms();
        if(url.indexOf("pageNo")==-1){
            url+="&pageNo="+pageNo+"&pageSize="+pageSize;
        }

        $.ajax({
            url: "/GoodsFollow/queryUserFollow?"+url,
            type:"post",
            dataType: "json",
            success:function(rs){
                if(!rs.success&&rs.errCode=='0010007') window.location.href = "/login/loginPage"
                var datas=rs.data.goodsDetailBos;
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
            $("#rs").append('<p style="text-align: center; padding: 50px;">你还没有收藏商品<p>');
        for (var i = 0; i < result.length; i++) {


            $("#rs").append(

                    ['<div class="order_item">',
                        '<div class="item_pic">',
                        '<img src="'+u+result[i].introduceImgUrl+'"/>',
                        '</div>',
                        '<div class="item_name">',
                        '<a target="_blank" href="/GoodsDetail/page?id=' + result[i].id + '">',
                        '<p>'+result[i].name+'</p>',
                        '</a>',
                        '</div>',
                        '<div class="item_num">	',
                        '<p>'+checkStock(result[i].stock)+'</p>',
                        '</div>',
                        '<div class="item_price">	',
                        '<p>'+result[i].price+'积分</p>',
                        '</div>',
                        '<div class="item_detail">',
                        '<a href="javascript:;" data-sku="'+result[i].sku+'" onclick="cancel_favorite(this);">取消收藏</a>',
                        '</div>',
                        '</div>	'].join(""))
        }
    }

    function checkStock(d){
        if(d<1)
            return "无货"
        return "现货"
    }

</script>
</html>