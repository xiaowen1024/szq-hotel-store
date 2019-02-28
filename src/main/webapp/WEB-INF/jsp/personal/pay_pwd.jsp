<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>密码设置-个人中心-广和投资</title>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="icon" href="/static/img/16_16 LOGO.png" type="image/x-icon">
    <!--[if lt IE 9]>
    <script src="/static/js/html5shiv.min.js"></script>
    <script src="/static/js/css3-mediaqueries.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="/static/css/m_app.css"/>
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

        .list>span{
            opacity: 0;
        }
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
            padding-bottom: 45px;
        }
        .detail{
            padding: 20px; float: left;width: 960px;height: 788px;background: #FFFFFF;border: #f9f9f9 1px solid;
            overflow: auto;position: relative;
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
            height: 168px;
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

        .ml30{
            margin-left: 30px;
        }
        .ml130{
            margin-left: 130px;
        }
        .ml165{
            margin-left: 165px;
        }
        .ml170{
            margin-left: 170px;
        }
        .ml145{
            margin-left: 145px;
        }
        .right_wp {
            width: 960px;
            height: 416px;
            border: solid 1px #eeeeee;
            position: relative;
        }
        .row:first-of-type{
            padding-top: 50px;
        }
        .row{
            padding: 15px 0;
        }
        .label{
            width: 170px;
            text-align: right;
            font-size: 16px;
            color: #555555;
            line-height: 30px;
            display: inline-block;
        }
        .label2{
            width: 170px;
            text-align: right;
            font-size: 16px;
            color: #555555;
            line-height: 30px;
            display: inline-block;
        }
        .label:after{
            content: "：";
        }
        .require:before{
            content: "*";
            color: red;
        }
        .input{
            width: 230px;
            height: 30px;
            color: #333333;
            padding-left: 16px;
            border: solid 1px #eeeeee;
        }
        .yzm_input{
            width: 75px;
        }
        .yzm_btn{
            background-color: #eee;
            border-radius: 3px;
            border: solid 1px #ccc;
            padding: 6px;
            color: #666 ;
            font-size: 12px;
            cursor: pointer;
        }
        .yzm_tip{
            line-height: 30px;
            font-size: 13px;
            color: #D3A359;
        }
        .yzm_img{
            width: 72px;height: 29px;vertical-align: middle;
        }
        .change{
            font-size: 13px;
            color: #d3a359;
        }
        .vague{
            font-size: 13px;
            color: #555555;
        }
        .pro_img{
            width: 775px;margin: auto;display: block;padding-top: 50px;
        }
        .input_wp{
            width: 775px;margin: auto;
        }
        .dis_none{
            display: none;
        }
        .next{
            width: 123px;
            height: 30px;
            background-color: #d3a359;
            border: solid 1px #d3a359;
            color: #fff;
            font-size: 14px;
            cursor: pointer;
        }
        .step3 .next{
            color: red;
            display: block;
            position: absolute;
            bottom: 147px;
            left: 387px;
            opacity: 0;
        }
    </style>
</head>

<body>
<div class="header_line"></div>
<div class="header">
    <jsp:include page="../nav/personal_nav.jsp"></jsp:include>
</div>

<section style="background: url(/static/img/bg_team.png) no-repeat;background-position: bottom;height: 1000px;">


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
                <p class="list list_line selected" data-id="4">
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

                <p class="list msg_num_parent" data-id="8">
                    我的消息
                    <span id="msg_num">0</span>
                </p>
            </div>

        </div>
        <div class="detail">
            <p class="my_order">设置积分支付密码</p>

            <div class="right_wp">
                <img class="pro_img step step1 " src="/static/img/pay_pwd1.png" />
                <img class="pro_img step step2 dis_none" src="/static/img/pay_pwd2.png" />
                <img class="pro_img step step3 dis_none" src="/static/img/pay_pwd3.png" />
                <div class="input_wp">
                    <div class="step1 step ">
                        <div class="row">
                            <label class="label ">手机号码</label>
                            <input class="input" required id="mobile"  type="text" />
                        </div>
                        <div class="row">
                            <label class="label">短信验证码</label>
                            <input class="input yzm_input" id="msg" required type="text" />
                            <span class="yzm_btn">获取验证码</span>
                            <span class="yzm_tip dis_none">短信验证码已发送，请查收</span>
                        </div>
                        <div class="row">
                            <label class="label ">验证码</label>
                            <input class="input yzm_input" id="yzm" required type="text" />
                            <img class="yzm_img" src="/login/authImage" />
                            <span class="vague">看不清？  </span>
                            <a href="javascript:;" class="change"> 换一张</a>
                        </div>
                        <div class="row">
                            <label class="label2"></label>
                            <input class="next" data-id="1" type="button" value="下一步" />
                        </div>
                    </div>
                    <div class="step2 step dis_none">
                        <div class="row">
                            <label class="label ">密码</label>
                            <input type="text" style="display:none;" />
                            <input class="input" required id="pwd1"  type="password" />
                        </div>
                        <div class="row">
                            <label class="label ">确认密码</label>
                            <input type="text" style="display:none;" />
                            <input class="input" required id="pwd2"  type="password" />
                        </div>

                        <div class="row">
                            <label class="label2"></label>
                            <input class="next" data-id="2" type="button" value="下一步" />
                        </div>
                    </div>
                    <div class="step3 step dis_none">
                        <input class="next" data-id="3" />
                    </div>
                </div>
            </div>
        </div>
        <div style="clear: both"></div>
    </div>
</section>



<jsp:include page="/WEB-INF/jsp/footer/footer.jsp"></jsp:include>
</body>

<script src="/static/js/jquery-2.2.0.min.js"></script>
<script src="/static/js/main.js"></script>
<script src="/static/layer/layer.js"></script>
<script>
    var $next = $('.next');
    $next.on("click",function(){
        if($(this).data('id')==1){
            if(document.getElementById("mobile").value==''
                    ||document.getElementById("yzm").value==''
                    ||document.getElementById("msg").value==''){
                layer.msg('输入项不能为空', {
                    anim: 6
                });
                return;
            }
            $.ajax({
                type:"post",
                data:{mobile:document.getElementById("mobile").value,
                    authCode:document.getElementById("msg").value,
                    verCode:document.getElementById("yzm").value,type:3	},
                url: "/login/passwordAuthentification",
                dataType: "json",
                success:function(rs){
                    if(!rs.success){
                        popTip(false,"提示",rs.errMsg)
                        return;
                    }
                    $('.step').addClass("dis_none");
                    $('.step2').removeClass("dis_none");
                }
            })
        } else if($(this).data('id')==2) {
            if(document.getElementById("pwd1").value==''
                    ||document.getElementById("pwd2").value==''){
                layer.msg('输入项不能为空', {
                    anim: 6
                });
                return;
            }
            $.ajax({
                type:"post",
                data:{password:document.getElementById("pwd1").value,
                    confirmPassword:document.getElementById("pwd2").value,type:3},
                url: "/login/setPwd",
                dataType: "json",
                success:function(rs){
                    if(!rs.success){
                        popTip(false,"提示",rs.errMsg)
                        return;
                    }
                    $('.step').addClass("dis_none");
                    $('.step3').removeClass("dis_none");
                }
            })
        } else{
            var prevLink = document.referrer;

                if(prevLink.indexOf("sbmit/page")!=-1){
                    location.href = prevLink;
                    return;
                }else {
                    location.href = "/MallHome/list";
                }

        }
    })
    var $yzm_btn = $(".yzm_btn");
    var countdown = 60;
    function settime() {
        if (countdown == 0) {
            $yzm_btn.removeClass("disabled");
            $yzm_btn[0].textContent = "获取验证码";
            countdown = 60;
            return;
        } else {
            $yzm_btn[0].textContent = "重新发送(" + countdown + ")";
            countdown--;
        }
        setTimeout(function () {
            settime();
        }, 1000)
    }
    $yzm_btn.on("click",function(){
        if($yzm_btn.hasClass("disabled"))return;
        var mobile = $("#mobile").val();
        if(!(/^1[1-9][0-9]\d{8}$/.test(mobile))){
            alert('不是有效的手机号码');
            return;
        }
        $.post("/login/sendCode",{mobile:mobile,type:3},function(rs){
            if(rs.success){
                settime();
                $(".yzm_tip").removeClass("dis_none");
                $yzm_btn.addClass("disabled");
            }else{
                alert('网络繁忙，请稍候重试')
            }
        })
    })
    $(".change").on("click",function(){
        $(".yzm_img").attr("src","/login/authImage?"+Date.now());
    });

</script>
</html>
