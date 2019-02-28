<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>账户管理-个人中心-广和投资</title>
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
            padding: 20px; float: left;width: 960px;background: #FFFFFF;border: #f9f9f9 1px solid;
            overflow: auto;
            position: relative;
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



        .left_nav{
            /*float: left;width: 198px;height: 830px;background: #FFFFFF;*/
            float: left;width: 198px;height: 1660px;background: #FFFFFF;
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



        .order_ul>li>.selected{
            color: #D3A359;
        }
        .order_item>div{
            border-left: #f9f9f9 1px solid;
        }






        .risk_title{
            width: 253px;
            height: 30px;
            font-size: 30px;
            letter-spacing: 1px;
            color: #555555;
            margin: 40px auto;
        }
        .risk_img{
            display: block;
            height: 407px;
            width: 810px;
            margin: auto;
        }
        .res_p1{
            position: absolute;
            font-size: 48px;
            color: #555555;
            top: 430px;
            left: 445px;
        }
        .res_p2{
            position: absolute;
            font-size: 16px;
            color: #555555;
            top: 510px;
            left: 405px;
        }
        .res_p3{
            position: absolute;
            font-size: 16px;
            color: #555555;
            top: 609px;
            left: 446px;
            color: #D3A359;
            font-size: 48px;
        }
        .res_p4{
            position: absolute;
            font-size: 16px;
            color: #555555;
            top: 728px;
            left: 399px;
            color: #D3A359;
            font-size: 72px;

        }
        .fs16{
            font-size: 16px;
        }
        .fs13{
            font-size: 16px;
        }
        .fc999{
            color: #999;
        }
        .fc555{
            color: #555;
        }
        .fc333{
            color: #333;
        }
        .pdl20{
            padding-left: 20px;
        }
        .res_p5{
            padding-top: 97px;
        }
        .res_p6{
            padding-top: 114px;
        }
        .res_p7{
            padding-top: 267px;
            letter-spacing: 1px;
            padding-bottom: 10px;
        }
        .res_btn1 {
            position: absolute;
            top: 958px;
            left: 271px;
            width: 204px;
            height: 41px;
            border-radius: 2px;
            background-color: #d3a359;
            font-size: 16px;
            line-height: 18px;
            color: #fff;

        }
        .res_btn2 {
            position: absolute;
            top: 958px;
            left: 528px;
            width: 204px;
            height: 41px;
            border-radius: 2px;
            border: solid 2px #eeeeee;
            font-size: 16px;
            line-height: 18px;
            color: #555555;
        }
        @font-face {
            font-family: 'iconfont';
            src: url('//at.alicdn.com/t/font_754425_acd594cnanf.eot');
            src: url('//at.alicdn.com/t/font_754425_acd594cnanf.eot?#iefix') format('embedded-opentype'), url('//at.alicdn.com/t/font_754425_acd594cnanf.woff') format('woff'), url('//at.alicdn.com/t/font_754425_acd594cnanf.ttf') format('truetype'), url('//at.alicdn.com/t/font_754425_acd594cnanf.svg#iconfont') format('svg');
        }
        .res_btn2 i {
            color: #d3a359;
            font-size: 27px;
            position: absolute;
            top: 11px;
            right: 23px;
        }
        .container{
            width: 1200px;
            margin: 0px auto;
            padding-top: 50px;
        }
        .res_p12{
            padding-top: 71px;
        }
        .res_p8{
            line-height: 24px;
            text-indent: 35px;
        }
        .res_p9{
            padding-top: 90px;
            letter-spacing: 1px;
            padding-bottom: 10px;
        }
        .res_p11{
            padding-top: 50px;
            padding-bottom: 50px;
        }
        #triangle-left {
            border-top: 1.5rem solid transparent;
            border-right: 9rem solid #ffffff;
            border-bottom: 1.5rem solid transparent;
            position: absolute;
        }
        .bsx{
            left: 232px;
            top: 458px;
            transform: rotate(16deg);
        }
        .wjx{
            left: 295px;
            top: 321px;
            transform: rotate(50deg);
        }
        .pwx{
            left: 454px;
            top: 294px;
            transform: rotate(98deg);
        }
        .czx{
            left: 575px;
            top: 362px;
            transform: rotate(137deg);
        }
        .jqx{
            left: 636px;
            top: 452px;
            transform: rotate(164deg);
        }

    </style>
</head>

<body>
<div class="header_line"></div>
<div class="header">
    <jsp:include page="../nav/personal_nav.jsp"></jsp:include>
</div>

<section style="background: url(/static/img/bg_team.png) no-repeat;min-height: 1000px;background-position: bottom;" >

    <div class="container" style="overflow: hidden;">
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
                <p class="list " data-id="2">
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
                <p class="list selected" data-id="6">
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
            <div id="triangle-left" class=""></div>

            <p class="risk_title">用户风险评测结果</p>
            <img class="risk_img" src="/static/img/risk.png" />
            <p class="res_p1" id="p1"></p>
            <p class="res_p2 pdl20">投资者风险评估结果</p>
            <p class="res_p3" id="p2"></p>
            <p class="res_p4" id="p3"></p>
            <p class="res_p5 pdl20 fc555 fs16">您/贵机构的风险测评得分为：</p>
            <p class="res_p6 pdl20 fc555 fs16">您/贵机构的风险承受能力为：</p>
            <p class="res_p12 pdl20 fc555 fs16">依据本公司的投资者与产品、服务等级匹配规则，您/贵机构的风险承受能力等级与本公司<span>保守型，稳健型产品、</span>服务相匹配。</p>
            <button class="res_btn1" onclick="window.location.href='/privateInvestment/page'">私募产品</button>
            <button class="res_btn2" onclick="window.location.href='/personal/my_research'">重新评测<i class="iconfont"></i></button>
            <p class="res_p7 pdl20 fc333 fs16">《投资者风险匹配告知书》</p>
            <p class="res_p8 pdl20 fc999 fs13">本公司在此郑重提醒，本公司向您/贵机构销售的产品或提供的服务将以您的风险承受能力等级和投资品种、期限为基础，若您/贵机构提供的信息发生任何重大变
                化，您/贵机构应当及时以书面方式通知本公司。本公司建议您/贵机构审慎评判自身风险承受能力、结合自身投资行为，认真填写投资品种、期限，并做出审慎的
                投资判断。本公司的适当性匹配意见不表明本公司对产品或者服务的风险和收益做出实质性判断或者保证。</p>
            <p class="res_p9 pdl20 fc333 fs16">《投资者确认函》</p>
            <p class="res_p8  pdl20 fc999 fs13">本人/本机构已仔细阅读贵司的《投资者风险匹配告知书》，已充分知晓并理解贵司对本人/本机构的风险承受能力评估及产品、服务风险等级匹配结果。本人/本
                机构对该《投资者风险匹配告知书》内容没有异议，愿意遵守法律、法规及贵司有关规定，通过贵司购买产品或者服务。本人/本机构承诺，将及时以书面方式如
                实地向贵司告知本人/本机构的重大信息变更。在测试过程中，贵司工作人员没有任何提示、暗示、诱导、误导、帮助等行为对本人进行干扰，影响测试结果。本
                确认函系本人/本机构独立、自主、真实的意思表示。</p>
            <p class="res_p11 pdl20 fc333 fs16">如您对评估结果有异议，请您重新测评，不重新测评则视为您同意《投资者风险匹配告知书》和《投资者确认函》的相关内容。</p>


        </div>
    </div>
</section>
<div style="clear: both;"></div>





<jsp:include page="/WEB-INF/jsp/footer/footer.jsp"></jsp:include>
</body>

<script src="/static/js/jquery-2.2.0.min.js"></script>
<script src="/static/js/main.js"></script>
<script>
    var p1 = document.getElementById("p1");
    var p2 = document.getElementById("p2");
    var p3 = document.getElementById("p3");
    var $tl = $("#triangle-left");
    $.ajax({
        url: "/questionnaire/queryUserInfo",
        dataType: "json",
        success:function(rs){
            if(rs.errCode=="0010007"){
                window.location.href = "/login/loginPage"
            }else if(rs.data.cognizance==0){
                window.location.href = "/personal/my_identify"
            }else if(rs.data.examen==0){
                window.location.href = "/personal/my_research"
            }else{
                rest(rs.data.score);
            }
        }
    })

    function rest(num) {
        if(num>100)num=100
        p1.textContent = num + '分';
        p2.textContent = p1.textContent;
        if(num > 80) {
            p3.textContent = '进取型';
            $tl.addClass("jqx")
        } else if(num > 60) {
            p3.textContent = '成长型';
            $tl.addClass("czx")
        } else if(num > 50) {
            p3.textContent = '平衡型';
            $tl.addClass("pwx")
        } else if(num > 25) {
            p3.textContent = '稳健型';
            $tl.addClass("wjx")
        } else {
            p3.textContent = '保守型';
            $tl.addClass("bsx")
        }
    }

</script>

</html>
