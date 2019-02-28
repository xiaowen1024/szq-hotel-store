<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>我的私享顾问-个人中心-广和投资</title>
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

        .my_order {
            font-size: 20px;
            letter-spacing: 0px;
            color: #555555;
            position: relative;
        }

        .detail {
            padding: 20px;
            float: left;
            width: 950px;
            /*height: 788px;*/
            background: #FFFFFF;
            border: #f9f9f9 1px solid;
            position: relative;
            margin-left: 10px;
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
            /*margin-top: 35px;*/
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
            border: #f5f5f5 1px solid;
            width: 960px;
            margin: 10px 0;
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
            width: 246px;
            padding: 0 20px;
            font-size: 16px!important;
            color: #333!important;
        }

        .td2 {
            width: 170px;
            color: #666!important;
            font-size: 16px!important;
        }

        .td3 {
            width: 163px;
            font-size: 22px!important;
            color: #d3a359!important;
        }

        .td4 {
            width: 142px;
            font-size: 22px!important;
            color: #d3a359!important;
        }

        .td5 {
            width: 180px;
            font-size: 16px!important;
            color: #666!important;
        }

        .item_tr {
            height: 83px;
        }

        .item_td {
            line-height: 83px;
            text-align: center;
            color: #555555;
            font-size: 14px;
            display: inline-block;
            text-overflow: ellipsis;
            white-space: nowrap;
            overflow: hidden;
        }

        th {
            background: #D3A359;
        }

        .layui-laydate-footer {
            display: none;
        }

        .pdl157 {
            padding-left: 177px;
        }

        .sear {
            color: #fff;
        }

        .sear:hover {
            color: #fff;
        }

        .row_first {
            padding-top: 0px !important;
        }

        .row {
            padding: 9px 0;
            margin-left: 70px;
        }

        .label2 {
            width: 105px;
            text-align: right;
            font-size: 16px;
            color: #555555;
            line-height: 30px;
            display: inline-block;
        }

        .label2:after {
            content: "：";
        }

        .require:before {
            content: "*";
            color: red;
        }

        .input {
            width: 264px;
            height: 30px;
            color: #333333;
            padding-left: 16px;
            border: solid 1px #eeeeee;
        }

        .yzm_input {
            width: 168px;
            border-right: 0px;
        }

        .yzm_btn {
            background-color: #DBBE93;
            padding: 6px 13px;
            padding-bottom: 6px;
            color: #fff;
            font-size: 14px;
            cursor: pointer;
            display: inline-block;
        }

        .go_toast {
            color: #595959;
            font-size: 16px;
            text-align: center;
            line-height: 55px;
        }

        .go {
            position: relative;
            display: none;
        }

        .go_line {
            border-bottom: #E8E8E8 1px solid;
            width: 100%;
            height: 1px;
        }

        .go_title {
            color: #b28248;
            font-size: 22px;
            text-align: center;
            line-height: 55px;
            padding-top: 20px;
        }

        .go_close {
            position: absolute;
            right: 25px;
            top: 15px;
            opacity: 0.5;
        }

        .go_close:hover {
            opacity: 1;
        }

        .btns {
            width: 73px;
            height: 30px;
            border: 1px solid #eee;
            color: #555;
        }

        .ml200 {
            margin-left: 200px;
        }

        .ml30 {
            margin-left: 30px;
        }

        .btns:active {
            position: relative;
            top: 1px;
        }

        .btns:hover {
            color: #fff;
            background: #D3A359;
            border: 0px
        }

        .success_tip {
            background-image: url(/static/img/reservation_success.png);
            position: relative;
            width: 320px;
            height: 189px;
        }

        .success_tip_btn {
            position: absolute;
            width: 70px;
            height: 30px;
            opacity: 0;
            bottom: 23px;
            left: 125px;
        }

        .go_line {
            border-bottom: 0px;
        }

        .list_wp {
            padding: 20px;
            float: right;
            width: 952px;
            margin-top: 30px;
            background: #fff;
        }

        .list_wp_p {
            color: #333;
            font-size: 16px;
            padding: 10px;
        }

        .list_wp_p_num {
            color: #D3A359;
        }

        .item {
            border-bottom: solid 2px #ececec;
            height: 190px;
            padding: 20px;
            position: relative;
            padding-left: 0px;
        }

        .item_img {
            width: 162px;
            height: 188px;
            position: absolute;
        }

        .item_p1 {
            color: #333;
            font-size: 16px;
            padding-left: 182px;
        }

        .item_p2 {
            background: url(/static/img/auth_img.jpg) 40px center no-repeat;
            margin: 20px 0 10px 143px;
            padding-left: 100px;
            color: #333;
            font-size: 16px;
        }

        .item_p3 {
            width: 576px;
            height: 116px;
            font-size: 16px;
            color: #333333;
            margin-left: 183px;
            line-height: 30px;
        }

        .item_btn {
            padding: 0;
            width: 107px;
            height: 32px;
            background-color: #D3A359;
            border-radius: 3px;
            position: absolute;
            right: 50px;
            bottom: 110px;
            color: #fff;
        }
        .ss_p1{
            color: #555;font-size: 20px;
        }
        .ss_d1{
            height: 190px;width: 100%;border: solid 2px #ececec;margin: 20px 0;border-left: 0px;border-right:0px;padding: 15px 0;
        }
        .ss_img1{
            display: block; position: absolute;width: 165px;height: 189px;
        }
        .ss_p2{
            font-size: 16px;color: #333;
        }
        .ss_d2{
            height: 20px;
        }
        .ss_p3{
            font-size: 16px;color: #333;
        }
        .ss_btn1{
            padding: 0;margin-left: 850px;color: #fff;font-size: 12px;	width: 72px;height: 32px;background-color: #d3a359;border-radius: 3px;
        }
        .sslcsbtn{
            position: relative;display: block;margin: auto; font-size: 16px;letter-spacing: 1px;color: #fff;width: 286px;height: 40px;background-color: #d3a359;border-radius: 3px;
        }
        .list.selected:nth-of-type(7):after {
            content: ">";
            padding-left: 5px;
        }
    </style>
</head>

<body>
<div class="header_line"></div>
<div class="header">
    <jsp:include page="../nav/personal_nav.jsp"></jsp:include>
</div>

<section style="background: #F4F4F4;">

    <div class="container">
        <div class="left_nav">
            <div class="u_pic">
                <img src="" width="96px" />
                <img src="/static/img/level.jpg" />
            </div>
            <p class="u_nick">天体阿妮塔</p>
            <div class="u_icon">
                <i class="iconfont">&#xe603;</i>
                <i class="iconfont">&#xe623;</i>
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
                <p class="list" data-id="5">
                    投资明细
                </p>
                <p class="list" data-id="6">
                    风险评测
                </p>

                <p class="list selected" data-id="7">
                    我的私享顾问
                </p>
                <p class="list  msg_num_parent" data-id="8">
                    我的消息
                    <span id="msg_num">0</span>
                </p>
            </div>

        </div>
        <div class="detail">
            <p class="my_order">我的私享顾问</p>
            <div id="rs2">

            </div>
            <div id="ss_area">
                <div style="height: 180px;"></div>
                <p style="color: #555;font-size: 20px;text-align: center;">您还没有专属的私享顾问，请指定！</p>
                <div style="height: 48px;"></div>
                <div style="width: 286px;height: 40px;position: relative;margin: auto;">
                    <p style="line-height: 23px;position: absolute;top: 10px;left: 35px;font-size: 16px;letter-spacing: 1px;">
                        私享顾问工号&nbsp;&nbsp;&nbsp;GH
                    </p>
                    <input id="rs_id" placeholder="00000" style="font-size: 16px;letter-spacing: 1px;padding-left: 180px;width: 106px;height: 40px;border-radius: 3px;border: solid 1px #d3a359;" />
                </div>
                <div style="height: 25px;"></div>
                <button class="sslcsbtn">
                    搜索私享顾问
                    <i class="iconfont sear" style="position: absolute;top: 12px; left: 70px;">&#xe60d;</i>
                </button>
                <div style="height: 70px;"></div>
            </div>
            <div id="ss_rs" style="display: none;">
                <p class="ss_p1">私享顾问</p>
                <div class="ss_d1">
                    <img id="ss_img" class="ss_img1" />
                    <p class="pdl157" class="ss_p2">
                        <span>姓      名：</span>
                        <span id="ss_name"></span>
                    </p>
                    <div class="ss_d2"></div>
                    <p class="pdl157 ss_p3">
                        <span>工      号：</span>
                        <span id="ss_jobNumber"></span>
                    </p>
                    <div class="ss_d2"></div>
                    <p class="pdl157 ss_p3">
                        <span>所属公司：</span>
                        <span id="ss_company"></span>
                    </p>
                    <button class="ss_btn1" id="ss_btn" onclick="confirm(this);">立即联系</button>
                </div>
            </div>
            <div style="padding:18px 0;width: 817px;padding-left: 133px;height: 49px;background-color: #f4f4f4;border-radius: 3px;">
                <p style="color: #333;font-size: 16px;">专属私享顾问设置规则：</p>
                <p style="color: #333;font-size: 14px;padding-top: 10px;">首次设置专属私享顾问，可以主动发起解除专属关系；非首次设置专属私享顾问，存在关系锁定期，锁定期为半年。</p>
            </div>

        </div>

        <div class="list_wp">
            <p class="list_wp_p">
                共有 <span class="list_wp_p_num"></span> 名私享顾问
            </p>
            <div id="rs">

            </div>

            <div style="height: 28px; width: 360px; margin: 20px auto">
                <ul class="page" id="page"></ul>
            </div>
        </div>
        <div style="clear: both;"></div>
        </div>
</section>



<jsp:include page="/WEB-INF/jsp/footer/footer.jsp"></jsp:include>
</body>
<div class="go">
    <a class="go_close" href="javascript:layer.closeAll();">x</a>
    <p class="go_title">尊敬的用户</p>
    <p class="go_toast">您正在指定专属私享顾问 ( <span id="pop_jobNumber"></span> ) </p>
    <div class="row row_first">
        <label class="label2">手机号码</label>
        <input class="input" required type="text" id="mobile" />
    </div>
    <div class="row" style="font-size: 0px;">
        <label class="label2">验证码</label>
        <input class="input yzm_input" id="yzm" required placeholder="请输入手机验证码" type="text" />
        <span class="yzm_btn">获取验证码</span>
    </div>
    <div class="row ml200">
        <button class="btns" onclick="layer.closeAll();">取 消</button>
        <button class="btns ml30" style="color: #fff;background: #D3A359;"  onclick="yuyueSuccess();">确 定</button>
    </div>
</div>
<script src="/static/js/jquery-2.2.0.min.js"></script>
<script src="/static/js/main.js"></script>
<script src="/static/js/page.js"></script>
<script src="/static/layer/layer.js"></script>
<script src="/static/layer/laydate/laydate.js"></script>
<script>
    var $yzm_btn = $(".yzm_btn");
    var countdown = 60;

    function settime() {
        if(countdown == 0) {
            $yzm_btn.removeClass("disabled");
            $yzm_btn[0].textContent = "获取验证码";
            countdown = 60;
            return;
        } else {
            $yzm_btn[0].textContent = "重新发送(" + countdown + ")";
            countdown--;
        }
        setTimeout(function() {
            settime();
        }, 1000)
    }
    $yzm_btn.on("click", function() {
        if($yzm_btn.hasClass("disabled")) return;
        var mobile = $("#mobile").val();
        if(!(/^1[1-9][0-9]\d{8}$/.test(mobile))){
            alert('不是有效的手机号码');
            return;
        }
        $.post("/login/sendCode",{mobile:mobile,type:5},function(rs){
            if(rs.success){
                settime();
                $(".yzm_tip").removeClass("dis_none");
                $yzm_btn.addClass("disabled");
            }else{
                alert('网络繁忙，请稍候重试')
            }
        })

    })

    $(".sslcsbtn").on("click", function() {
        $.ajax({
            url: "/privateConsultant/detailsByJobNumber?jobNumber=GH" + document.getElementById("rs_id").value,
            type: "post",
            dataType: "json",
            success: function(rs) {
                if(!rs.success) {layer.msg("没有找到对应工号的理财师");return;}
                $('#ss_btn').data("id",rs.data.data.id);
                document.getElementById("ss_jobNumber").textContent = rs.data.data.jobNumber;
                document.getElementById("ss_name").textContent = rs.data.data.name;
                document.getElementById("ss_company").textContent = rs.data.data.company;
                document.getElementById("ss_img").setAttribute("src",rs.data.Url+rs.data.data.imgUrl)
                $("#ss_rs").css("display","block");
                $('#ss_btn').data("jobnumber",rs.data.data.jobNumber);
            }
        })
    })

    var options,
            pageNo = getUrlParms("pageNo"),
            pageSize = getUrlParms("pageSize");
    if(pageNo == null) pageNo = 1;
    if(pageSize == null) pageSize = 6;
    getdata(pageNo, pageSize);

    function getdata(pageNo, pageSize) {
        var url = getUrlParms();
        if(url.indexOf("pageNo") == -1) {
            url += "&pageNo=" + pageNo + "&pageSize=" + pageSize;
        }

        $.ajax({
            url: "/privateConsultant/list?" + url,
            type: "post",
            dataType: "json",
            success: function(rs) {
                if(!rs.success && rs.errCode == '0010007') window.location.href = "/login/loginPage"
                var datas = rs.data.data;
                renderTable(datas, rs.data.Url);
                $(".list_wp_p_num").text(rs.data.count);
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

    function renderTable(result, u) {

        $("#rs").empty();

        for(var i = 0; i < result.length; i++) {

            $("#rs").append(
                    ['<div class="item">',
                        '<img src="' + u + result[i].imgUrl + '" class="item_img"/>',
                        '<p class="item_p1"><span>' + result[i].name + '</span><span>'+result[i].jobNumber+'</span></p>',
                        '<p class="item_p2">',
                        '基金从业资格',
                        '</p>',
                        '<p class="item_p3">',
                        result[i].synopsis,
                        '</p>',
                        '<button class="item_btn" data-jobnumber="'+result[i].jobNumber+'"  data-id="'+result[i].id+'" onclick="confirm(this)">',
                        '	立即联系',
                        '</button>',
                        '</div>'
                    ].join(""))
        }

    }

    var zdlcs;
    function confirm(t){
        zdlcs = $(t).data("id");
        document.getElementById("pop_jobNumber").textContent =  $(t).data("jobnumber");
        console.log(zdlcs);
        layer.open({
            type: 1,
            title: false,
            closeBtn: 0,
            area: ["590px", "300px"],
            content: $(".go")
        });
    }
    function cancel(t){
        $.ajax({
            url: "/binding/delete?id="+$(t).data("id"),
            dataType: "json",
            success: function(rs) {
                if(rs.success){
                    layer.msg("解除绑定成功");
                    getMyAdviser();
                }else{
                    layer.msg(rs.errMsg);
                }
            }
        })
    }

    //		/binding/list
    function yuyueSuccess(){
        var y = document.getElementById("yzm").value;
        var m = document.getElementById("mobile").value;
        if(y==''||m==''){
            layer.msg("手机和验证码不能为空");
            return;
        }
        $.ajax({
            url: "/binding/add",
            data:{privateConsultantId:zdlcs,phone:m,code:y},
            type: "post",
            dataType: "json",
            success: function(rs) {
                if(rs.success){
                    layer.msg("您已成功指定理财师");
                    setTimeout(function(){
                        window.location.reload();
                    },2000)
                }else{
                    layer.msg(rs.errMsg);
                }
            }
        })
    }
    getMyAdviser();
    function getMyAdviser(){
        $.ajax({
            url: "/binding/list",
            dataType: "json",
            success: function(rs) {
                $("#rs2").empty();
                if(!rs.success)return;
                if(rs.data.data.length==0){$("#ss_area").css("display","block");return;}
                $("#ss_area").css("display","none");
                var result = rs.data.data;
                var u = rs.data.Url;
                for(var i = 0; i < result.length; i++) {
                    $("#rs2").append(
                            ['<div class="item">',
                                '<img src="' + u + result[i].img_url + '" class="item_img"/>',
                                '<p class="item_p1"><span>' + result[i].name + '</span><span>GH00007</span></p>',
                                '<p class="item_p2">',
                                '基金从业资格',
                                '</p>',
                                '<p class="item_p3">',
                                result[i].synopsis,
                                '</p>',
                                '<button class="item_btn" data-jobnumber="'+result[i].jobNumber+'"  data-id="'+result[i].id+'" onclick="cancel(this)">',
                                '	解除绑定',
                                '</button>',
                                '</div>'
                            ].join(""))
                }
            }
        })
    }
</script>

</html>
