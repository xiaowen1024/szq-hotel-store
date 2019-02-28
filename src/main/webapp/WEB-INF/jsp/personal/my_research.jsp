<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>风险测评-个人中心-广和投资</title>
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
            float: left;width: 198px;height: 3286px;background: #FFFFFF;
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
            height: 160px;
        }
        .order_tr>p:nth-child(1){
            padding-top: 50px;padding-left: 25px;padding-right: 45px;color: #555555;font-size: 16px;
        }
        .order_tr>p:nth-child(2){
            padding: 23px 0 45px 25px;color: #D3A359;
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
            margin-left: 50px;
            margin-right: 20px;
            opacity: 0;
        }
        .label{
            font-size: 14px;
            position: relative;
            line-height: 26px;
            color: #555555;
        }
        .item{
            width: 880px;border-bottom: #ECECEC 1px solid;margin-left: 25px;
            padding-top: 45px;
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
        .item .label:last-child{
            margin-bottom: 45px;
        }
        .label2 {
            position: absolute;
            left: 56px;
            top: 3px;
            width: 14px;
            height: 14px;
            border-radius: 0%;
            border: 1px solid #e9e7e8;
            background:#e9e7e8;
        }

        input:checked+label {
            background-color: transparent;
            border: 1px solid #d3a359;
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
            width: 204px;
            height: 41px;
            background-color: #d3a359;
            border-radius: 2px;
            float: left;
            color: white;
            font-size: 16px;
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
            width: 459px;height: 117px;margin-left: 259px;margin-top: 70px;
        }
    </style>
</head>

<body>
<div class="header_line"></div>
<div class="header">
    <jsp:include page="../nav/personal_nav.jsp"></jsp:include>
</div>

<section style="background: url(/static/img/bg_team.png) no-repeat;background-position: bottom;" >

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
            <p class="my_order">用户风险测评问卷</p>
            <div class="order_tr">
                <p>
                    风险提示：金融产品投资需承担各类风险，本金可能遭受损失。同时，投资时还应考虑本金兑付风险、市场风险、流动性风险、
                    汇率风险、信用风险、利率风险、赋税风险、产品复杂度风险等各类风险。您在基金认购过程中应当注意核对自己的风险识别
                    和风险承受能力，选择与自己风险识别能力和风险承受能力相匹配的私募基金。</p>
                <p>以下一系列问题可在您选择合适的私募基金前，协助评估您的风险承受能力、理财方式及投资目标。</p>
            </div>


            <div class="item">
                <p>1</p>
                <p>您的主要收入来源是：（ ）</p>
                <label class="label">
                    <input class="radio" value="1" id="item1" type="radio" name="t1" />
                    <label class="label2" for="item1"></label>A 工资、劳务报酬
                </label>
                <label class="label">
                    <input class="radio" value="3" id="item2" type="radio" name="t1" />
                    <label class="label2" for="item2"></label> B 生产经营所得
                </label>
                <label class="label">
                    <input class="radio" value="7" id="item3" type="radio" name="t1" />
                    <label class="label2" for="item3"></label>C 利息、股息、转让等金融性资产收入
                </label>
                <label class="label">
                    <input class="radio" value="8" id="item4" type="radio" name="t1" />
                    <label class="label2" for="item4"></label>D 出租、出售房地产等非金融性资产收入
                </label>
                <label class="label">
                    <input class="radio" value="10" id="item5" type="radio" name="t1" />
                    <label class="label2" for="item5"></label>E 实现经济自由，有稳定投资产业
                </label>
            </div>
            <div class="item">
                <p>2</p>
                <p>您的家庭可支配年收入为（折合人民币）：（ ）</p>
                <label class="label">
                    <input class="radio"  value="1"  id="item11" type="radio" name="t2" />
                    <label class="label2" for="item11"></label>A 50 万元以下
                </label>
                <label class="label">
                    <input class="radio"  value="3" id="item12" type="radio" name="t2" />
                    <label class="label2" for="item12"></label>B 50—100 万元
                </label>
                <label class="label">
                    <input class="radio" value="7"  id="item13" type="radio" name="t2" />
                    <label class="label2" for="item13"></label>C 100—500 万元
                </label>
                <label class="label">
                    <input class="radio"  value="8" id="item14" type="radio" name="t2" />
                    <label class="label2" for="item14"></label>D 500—1000 万元
                </label>
                <label class="label">
                    <input class="radio"  value="10"  id="item15" type="radio" name="t2" />
                    <label class="label2" for="item15"></label> E 1000 万元以上
                </label>
            </div>
            <div class="item">
                <p>3</p>
                <p>在您每年的家庭可支配收入中，可用于金融投资（储蓄存款除外）的比例为：（ ）</p>
                <label class="label">
                    <input class="radio" value="1" id="item21" type="radio" name="t3" />
                    <label class="label2" for="item21"></label>A 小于 10%
                </label>
                <label class="label">
                    <input class="radio"   value="3" id="item22" type="radio" name="t3" />
                    <label class="label2" for="item22"></label> B 10%至 25%
                </label>
                <label class="label">
                    <input class="radio" value="7"   id="item23" type="radio" name="t3" />
                    <label class="label2" for="item23"></label> C 25%至 50%
                </label>
                <label class="label">
                    <input class="radio"  value="8"   id="item24" type="radio" name="t3" />
                    <label class="label2" for="item24"></label> D 大于 50%
                </label>

            </div>
            <div class="item">
                <p>4</p>
                <p>您是否有尚未清偿的数额较大的债务，如有，其性质是：（ ）</p>
                <label class="label">
                    <input class="radio" value="1" id="item31" type="radio" name="t4" />
                    <label class="label2" for="item31"></label>A 没有
                </label>
                <label class="label">
                    <input class="radio"   value="3" id="item32" type="radio" name="t4" />
                    <label class="label2" for="item32"></label>B 有，住房抵押贷款等长期定额债务
                </label>
                <label class="label">
                    <input class="radio"  value="7"  id="item33" type="radio" name="t4" />
                    <label class="label2" for="item33"></label>C 有，信用卡欠款、消费信贷等短期信用债务
                </label>
                <label class="label">
                    <input class="radio"   value="8"  id="item34" type="radio" name="t4" />
                    <label class="label2" for="item34"></label> D 有，亲戚朋友借款
                </label>

            </div>
            <div class="item">
                <p>5</p>
                <p>您的投资知识可描述为：（ ）</p>
                <label class="label">
                    <input class="radio" value="1" id="item41" type="radio" name="t5" />
                    <label class="label2" for="item41"></label>A. 有限：基本没有金融产品方面的知识
                </label>
                <label class="label">
                    <input class="radio"   value="3" id="item42" type="radio" name="t5" />
                    <label class="label2" for="item42"></label>B. 一般：对金融产品及其相关风险具有基本的知识和理解
                </label>
                <label class="label">
                    <input class="radio"  value="7"  id="item43" type="radio" name="t5" />
                    <label class="label2" for="item43"></label>C. 丰富：对金融产品及其相关风险具有丰富的知识和理解
                </label>
            </div>
            <div class="item">
                <p>6</p>
                <p>您的投资经验可描述为：（ ）</p>
                <label class="label">
                    <input class="radio" value="1" id="item51" type="radio" name="t6" />
                    <label class="label2" for="item51"></label> A、 除银行储蓄外，基本没有其他投资经验
                </label>
                <label class="label">
                    <input class="radio"  value="3"  id="item52" type="radio" name="t6" />
                    <label class="label2" for="item52"></label>B、 购买过债券、保险等理财产品
                </label>
                <label class="label">
                    <input class="radio"  value="7"  id="item53" type="radio" name="t6" />
                    <label class="label2" for="item53"></label>C、 参与过股票、基金等产品的交易
                </label>
                <label class="label">
                    <input class="radio"   value="8"  id="item54" type="radio" name="t6" />
                    <label class="label2" for="item54"></label>D、 参与过权证、期货、期权等产品的交易
                </label>

            </div>
            <div class="item">
                <p>7</p>
                <p>您有多少年投资基金、股票、信托、私募证券或金融衍生产品等风险投资品的经验：（ ）</p>
                <label class="label">
                    <input class="radio" value="1" id="item61" type="radio" name="t7" />
                    <label class="label2" for="item61"></label>A、没有经验
                </label>
                <label class="label">
                    <input class="radio"   value="3" id="item62" type="radio" name="t7" />
                    <label class="label2" for="item62"></label>B、少于 2 年
                </label>
                <label class="label">
                    <input class="radio" value="7"   id="item63" type="radio" name="t7" />
                    <label class="label2" for="item63"></label>C、2 至 5 年
                </label>
                <label class="label">
                    <input class="radio"   value="8"  id="item64" type="radio" name="t7" />
                    <label class="label2" for="item64"></label>D、5 至 10 年
                </label>
                <label class="label">
                    <input class="radio"   value="10"  id="item65" type="radio" name="t7" />
                    <label class="label2" for="item65"></label>E、10 年以上
                </label>
            </div>
            <div class="item">
                <p>8</p>
                <p>您计划的投资期限是多久（ ）</p>
                <label class="label">
                    <input class="radio" value="1" id="item71" type="radio" name="t8" />
                    <label class="label2" for="item71"></label> A、1 年以下
                </label>
                <label class="label">
                    <input class="radio"   value="3" id="item72" type="radio" name="t8" />
                    <label class="label2" for="item72"></label>B、1 至 3 年
                </label>
                <label class="label">
                    <input class="radio"  value="7"  id="item73" type="radio" name="t8" />
                    <label class="label2" for="item73"></label>C、3 至 5 年
                </label>
                <label class="label">
                    <input class="radio"   value="8"  id="item74" type="radio" name="t8" />
                    <label class="label2" for="item74"></label> D、5 年以上
                </label>
            </div>
            <div class="item">
                <p>9</p>
                <p>您打算重点投资于哪些种类的投资品种：（ ）</p>
                <label class="label">
                    <input class="radio" value="1" id="item81" type="radio" name="t9" />
                    <label class="label2" for="item81"></label>A 债券、货币市场基金、债券基金等固定收益类投资品种
                </label>
                <label class="label">
                    <input class="radio"   value="3" id="item82" type="radio" name="t9" />
                    <label class="label2" for="item82"></label>B 股票、混合型基金、股票型基金等权益类投资品种
                </label>
                <label class="label">
                    <input class="radio"  value="7"  id="item83" type="radio" name="t9" />
                    <label class="label2" for="item83"></label>C 期货、期权等金融衍生品
                </label>
                <label class="label">
                    <input class="radio"   value="8"  id="item84" type="radio" name="t9" />
                    <label class="label2" for="item84"></label>D 其他产品或者服务
                </label>
            </div>
            <div class="item">
                <p>10</p>
                <p>以下哪项描述最符合您的投资态度：（ ）</p>
                <label class="label">
                    <input class="radio" value="1" id="item91" type="radio" name="t10" />
                    <label class="label2" for="item91"></label>A、厌恶风险，不希望本金损失，希望获得稳定回报
                </label>
                <label class="label">
                    <input class="radio"   value="3" id="item92" type="radio" name="t10" />
                    <label class="label2" for="item92"></label>B、保守投资，不希望本金损失，愿意承担一定幅度的收益波动
                </label>
                <label class="label">
                    <input class="radio"  value="7"  id="item93" type="radio" name="t10" />
                    <label class="label2" for="item93"></label> C、寻求资金的较高收益和成长性，愿意为此承担有限本金损失
                </label>
                <label class="label">
                    <input class="radio"   value="8"  id="item94" type="radio" name="t10" />
                    <label class="label2" for="item94"></label>D、希望赚取高回报，愿意为此承担较大本金损失
                </label>
            </div>
            <div class="item">
                <p>11</p>
                <p>假设有两种投资：投资 A 预期获得 10%的收益，可能承担的损失非常小；投资 B 预期获得 30%的收益，但可能承担较大亏损。您会怎么支配您的投资：（ ）</p>
                <label class="label">
                    <input class="radio" value="1" id="item101" type="radio" name="t11" />
                    <label class="label2" for="item101"></label>A、 全部投资于收益较小且风险较小的 A
                </label>
                <label class="label">
                    <input class="radio"   value="3" id="item102" type="radio" name="t11" />
                    <label class="label2" for="item102"></label>B、 同时投资于 A 和 B，但大部分资金投资于收益较小且风险较小的 A
                </label>
                <label class="label">
                    <input class="radio"  value="7"  id="item103" type="radio" name="t11" />
                    <label class="label2" for="item103"></label>C、 同时投资于 A 和 B，但大部分资金投资于收益较大且风险较大的 B
                </label>
                <label class="label">
                    <input class="radio"   value="8"  id="item104" type="radio" name="t11" />
                    <label class="label2" for="item104"></label>D、 全部投资于收益较大且风险较大的 B
                </label>
            </div>
            <div class="item">
                <p>12</p>
                <p>您认为自己能承受的最大投资损失是多少：（ ）</p>
                <label class="label">
                    <input class="radio" value="1" id="item111" type="radio" name="t12" />
                    <label class="label2" for="item111"></label>A. 10%以内
                </label>
                <label class="label">
                    <input class="radio"  value="3" id="item112" type="radio" name="t12" />
                    <label class="label2" for="item112"></label>B. 10%-30%
                </label>
                <label class="label">
                    <input class="radio"  value="7"  id="item113" type="radio" name="t12" />
                    <label class="label2" for="item113"></label>C. 30%-50%
                </label>
                <label class="label">
                    <input class="radio"   value="8"  id="item114" type="radio" name="t12" />
                    <label class="label2" for="item114"></label> D. 超过 50%
                </label>
            </div>

            <div class="submit_wrapp">
                <button class="confirm" type="submit" onclick="postData()">提交</button>
                <button class="cancel">取消</button>
            </div>
            <p class="bottom_p">基金销售服务由广和投资有限公司提供</p>
        </div>
    </div>

</section>




<jsp:include page="/WEB-INF/jsp/footer/footer.jsp"></jsp:include>
</body>

<script src="/static/js/jquery-2.2.0.min.js"></script>
<script src="/static/js/main.js"></script>
<script src="layer/layer.js"></script>
<script>

    function postData(){
        var $ckb = $('input:checked');
        if($ckb.length<12){
            layer.msg("请完成全部选项");
            return;
        }
        var num = 0;
        for(var i=0;i<$ckb.length;i++){
            if($ckb[i].checked){
                num+=Number($ckb[i].value);
            }
        }
        $.ajax({
            type:"post",
            url: "/questionnaire/update?evaluation=1&examen=1&score="+num,
            dataType: "json",
            success:function(rs){
                window.location.href = "/personal/my_risk"
            }
        })
    }
</script>
</html>
