<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>合格证认定-个人中心-广和投资</title>
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
            min-height: 788px;

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

        .order_tr{
            height: 160px;
        }
        .order_tr>p:nth-child(1){
            padding-top: 50px;padding-left: 25px;padding-right: 45px;color: #555555;font-size: 16px;
        }
        .order_tr>p:nth-child(2){
            padding: 23px 0 23px 25px;color: #555;
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
            color: #555555;font-size: 22px;line-height: 122px;width: 100px;text-align: center;
        }
        .item_price{
            float: left; height: 128px;
        }
        .item_price p{
            color: #555555;font-size: 22px;line-height: 122px;width: 200px;text-align: center;
        }
        .item_detail{
            float: left; height: 88px;padding: 20px 0;
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
        .radio{
            margin-right: 20px;
            opacity: 0;
        }
        .label{
            font-size: 16px;
            position: relative;
            line-height: 26px;
            color: #555555;
            cursor: pointer;
        }
        .item{
            width: 880px;border-bottom: #ECECEC 0px solid;margin-left: 25px;
            padding-top: 25px;
        }
        .item>p:nth-child(1){
            margin-right: 26px;
            display: inline-block;
            font-size: 16px;
            color: #555555;
            width: 26px;
            line-height: 26px;background-color: #e9e7e8;text-align: center;
        }
        .item>p:nth-child(2){
            font-size: 16px;color: #555555;display: inline-block;
            line-height: 26px;
            margin-bottom: 10px;
            width: 800px;
        }
        .item .label{
            display: block;
        }

        .label2 {
            position: absolute;
            left: 6px;
            top: 5px;
            width: 15px;
            height: 15px;
            background-image: url(/static/img/un_checkbox.png);
            cursor: pointer;
        }

        input:checked+label {
            border: 1px solid #d3a359;
            background:transparent;
            width: 14px;
            height: 14px;
        }

        input:checked+label::after {
            position: absolute;
            content: "";
            width: 5px;
            height: 10px;
            top: 0px;
            left: 4px;
            border:2px solid #D3A359;
            border-top: none;
            border-left: none;
            transform: rotate(45deg)
        }
        .confirm{
            width: 121px;
            height: 32px;
            background-color: #d3a359;
            border-radius: 2px;
            float: left;
            color: white;
            font-size: 12px;
            letter-spacing: 2px;
        }

        .cancel{
            width: 204px;
            height: 41px;
            background-color: #bfbfbf;
            border-radius: 2px;
            float: right;
            color: white;
            font-size: 16px;
            border:#bfbfbf;
        }
        .cancel:active,.confirm:active{
            position: relative;
            top: 1px;
        }
        .bottom_p{
            text-align: center;font-size: 16px;color: #333333;
        }
        .submit_wrapp{
            width: 459px;height: 47px;margin-left: 259px;margin-top: 25px;
        }
        .warning_tip{
            padding: 23px 0 23px 25px;
            color: #555;
        }
        .c_wp{
            margin-left: 140px;padding-top: 2px;
        }
        .c_radio{
            margin-right: 12px;
        }
        .sec{
            background: url(/static/img/bg_team.png) no-repeat;background-position: bottom;
        }
    </style>
</head>

<body>
<div class="header_line"></div>
<div class="header">
    <jsp:include page="../nav/personal_nav.jsp"></jsp:include>
</div>


<section class="sec" >

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
            <p class="my_order">合格投资者认定</p>
            <div class="order_tr">
                <p>根据《私募投资基金监督管理暂行办法》第四章第十四条规定：“私募基金管理人、私募基金销售机构不得向合格投资者之外的
                    单位和个人募集资金，不得通过报刊、电台、电视、互联网等公众传播媒体或者讲座、报告会、分析会、传单、手机短信、微信、
                    博客和电子邮件等方式，向不特定对象宣传推介。”
                </p>
                <p>您如有意进行私募投资基金投资且满足《私募投资基金监督管理暂行办法》关于“合规投资者标准之规定：</p>
            </div>


            <div class="item">

                <label class="label">
                    <input class="radio" id="item1" checked="checked" type="checkbox"/>
                    <label class="label2" for="item1"></label>具备相应风险识别能力和风险承担能力，
                </label>
                <label class="label">
                    <input class="radio" id="item2" checked="checked"  type="checkbox"/>
                    <label class="label2" for="item2"></label>投资于单只私募基金的金额不低于100万元，
                </label>
                <label class="label">
                    <input class="radio" id="item3" checked="checked"  type="checkbox"/>
                    <label class="label2" for="item3"></label>个人金融类资产不低于300万元或者最近三年个人年均收入不低于50万元人民币。
                </label>

            </div>
            <p class="warning_tip">请您详细阅读本提示，如符合以上合规投资者条件，方可获得广和投资产口宣传推介服务。</p>



            <div class="submit_wrapp">
                <button class="confirm" onclick="confirm()">确认</button>
            </div>
            <div class="item">

                <label class="label">
                    <input class="radio" id="item1" checked="checked" type="checkbox"/>
                    <label class="label2" for="item1"></label>具有 2 年以上投资经历，且满足以下条件之一：个人金融资产不低 于 300 万元，家庭金融净资产不低于 300 万元，家
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;庭金融资产不低 于 500 万元，或者近 3 年本人年均收入不低于 50 万元。
                </label>
                <div style="height: 10px;"></div>
                <label class="label">
                    <input class="radio" id="item2" checked="checked"  type="checkbox"/>
                    <label class="label2" for="item2"></label>最近 1 年末净资产不低于 1000 万元的法人单位。
                </label>
                <div style="height: 10px;"></div>
                <label class="label">
                    <input class="radio" id="item3" checked="checked"  type="checkbox"/>
                    <label class="label2" for="item3"></label>金融管理部门视为合格投资者的其他情形。 合格投资者投资于单只私募基金的金额不低于 100 万元。 投资者不得使用
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;贷款、发行债券等筹集的非自有资金投资资产管理产 品。 上述所称金融资产包括银行存款、股票、债券、基金份额、资
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;产管理 计划、银行理财产品、信托计划、保险产品、期货权益等。
                </label>

            </div>
        </div>
    </div>

</section>




<jsp:include page="/WEB-INF/jsp/footer/footer.jsp"></jsp:include>
</body>

<script src="/static/js/jquery-2.2.0.min.js"></script>
<script src="/static/js/main.js"></script>
<script src="/static/layer/layer.js"></script>
<script>

    function confirm(){

        var $ckb = $('input:checked');
        if($ckb.length<6){
            layer.msg("请确认是否符合投资者条件")
            return;
        }
        $.ajax({
            type:"post",
            url: "/questionnaire/update?cognizance=1",
            dataType: "json",
            success:function(rs){
                window.location.href = "/personal/my_research"
            }
        })
    }
</script>
</html>
