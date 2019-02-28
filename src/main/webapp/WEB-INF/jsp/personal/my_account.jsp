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

        .my_order{
            font-size: 20px;
            letter-spacing: 0px;
            color: #555555;
            padding-bottom: 45px;
        }
        .detail{
            padding: 20px; float: left;width: 960px;min-height: 788px;background: #FFFFFF;border: #f9f9f9 1px solid;
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


        .tab{
            font-size: 16px;
            letter-spacing: 0px;
            color: #555555;
            padding: 0px 5px;
        }
        .security{
            display: none;
        }
        .tab_act{
            color: #D3A359;
        }
        .item{
            width: 940px;
            height: 106px;
            border: solid 1px #f5f5f5;
            margin: 5px;
            position: relative;
        }
        .tab_switch{
            margin-bottom: 20px;
        }
        .item_icon{
            line-height: 106px;
            font-size: 30px;
            color: #CCCCCC;
            padding-left: 58px;
        }
        .item_icon:hover{
            color: #CCCCCC;
        }
        .jf_p1{
            font-size: 16px;
            color: #555555;
            padding: 0 15px 0 30px;
        }
        .jf_p2{
            font-size: 16px;
            color: #555555;
            padding: 0 15px 0 30px;
            position: absolute;
            left: 27%;
            top: 45px;
        }
        .item>p{
            display: inline-block;
        }
        .item>.line{
            width: 1px;
            height: 31px;
            background: #999999;
            position: absolute;
            left: 25%;
            top: 40%;
        }
        .set_btn{
            width: 72px;
            height: 32px;
            border-radius: 3px;
            border: solid 1px #d3a359;
            position: absolute;
            right: 5%;
            top: 37px;
        }
        .set_btn:active{
            border: solid 0px #d3a359;
            color: white;
            background: #D3A359;
        }
        .thead{
            height: 38px;width: 100%;background: #dbbe93;top: 15px;
        }
        .th{
            display: inline-block;
            font-size: 16px;
            color: #ffffff;
            line-height: 38px;
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
        .add_item{
            width: 956px;
            height: 121px;
            border: solid 1px #f5f5f5;
            margin: 20px 0;
            position: relative;
        }
        .add_item>p{
            font-size: 16px;
            color: #555555;
            display: inline-block;
            line-height: 122px;
        }
        .add_item>p:nth-child(2){
            vertical-align: middle;
            width: 206px;
            line-height: 20px!important;
        }
        .add_item>p:nth-child(1){
            width: 110px;
            padding-left: 30px;
        }
        .add_item>p:nth-child(3){
            width: 254px;
            text-align: center;
        }
        .add_item>p:nth-child(4){
            width: 189px;
            text-align: center;
        }
        .add_item>p:nth-child(5){
            width: 145px;
            text-align: center;
        }
        .cd3{
            color: #D3A359;
        }
        .add_wp{
            width: 960px;height: 75px;
        }
        .add_wp>button{
            display: block ;width: 100px;height: 33px;border-radius: 3px;border: solid 1px #d3a359; margin: 10px auto;
        }
        .add_wp>p{
            display: block;margin: 15px auto;width: 244px;font-size: 12px;color: #666666;
        }
        .edit:hover,.del:hover{
            color: #D3A359;
        }
        .add_pop{
            width: 470px;
            height: 525px;
            display: none;
        }
        .layui-layer-title {
            padding: 0 80px 0 20px;
            height: 60px!important;
            line-height: 60px!important;
            border-bottom: 1px solid #eee;
            font-size: 18px!important;
            color: #555555!important;
            overflow: hidden;
            background-color: #f5f5f5!important;
            border-radius: 2px 2px 0 0;
            text-align: center;
        }
        .layui-layer-setwin {
            right: 20px!important;
            top: 25px!important;
        }
        .row:first-of-type{
            padding-top: 20px;
        }
        .row{
            padding: 15px 0;
        }
        .label{
            width: 105px;
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
            width: 310px;
            height: 30px;
            color: #333333;
            padding-left: 16px;
            border: solid 1px #eeeeee;
        }
        .addContainer{
            width: 310px;
            height: 30px;
            display: inline-block;
        }
        select{
            width: 100px;
            height: 30px;
            border: solid 1px #eeeeee;
        }
        .save_add{
            display: inline-block;
            width: 127px;
            height: 40px;
            background-color: #d3a359;
            border-radius: 3px;
            font-size: 15px;
            color: white;
            letter-spacing: 1px;
            margin: 0 176px;
            margin-top: 20px;
        }
        input, textarea {
            -webkit-appearance: none;
            border-radius: 0;
            -webkit-border-radius: 0;
            -moz-border-radius: 0;
            outline: none;
            padding: 0px;
            margin: 0;
        }
        .confirm_tip{
            position: relative;
            width: 436px;
            height: 192px;
            display: none;
            background: url(/static/img/confirm_tip.png);
        }
        .confirm_tip p{
            font-size: 14px;
            color: rgba(0,0,0,0.65);
            line-height: 22px;
            position: absolute;
            top: 69px;
            left: 71px;
        }
        .confirm_tip button:nth-child(3){
            width: 66px;
            height: 30px;
            opacity: 0;
            position: absolute;
            bottom:25px;
            left: 339px;
            background: red;
        }
        .confirm_tip button:nth-child(2){
            width: 66px;
            height: 30px;
            opacity: 0;
            position: absolute;
            bottom: 25px;
            left: 267px;
            background: red;
        }
    </style>
</head>

<body>
<div class="header_line"></div>
<div class="header">
    <jsp:include page="../nav/personal_nav.jsp"></jsp:include>
</div>

<section style="background: url(/static/img/bg_team.png) no-repeat;background-position: bottom;" >

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
            <p class="my_order">账户管理</p>
            <p class="tab_switch">
                <a class="tab tab_act" href="javascript:;" data-id="0">收货地址</a>
                <span style="color: #999999;"> | </span>
                <a class="tab " href="javascript:;" data-id="1">安全中心</a>
            </p>
            <div class="address">
                <div class="thead">
                    <p class="th ml30">收货人</p>
                    <p class="th ml130">收货地址</p>
                    <p class="th ml165">联系电话</p>
                    <p class="th ml170">状态</p>
                    <p class="th ml145">操作</p>
                </div>
                <div style="clear: both;"></div>
                <div id="rs">

                </div>
                <div class="add_wp">
                    <button id="add_address">新增地址</button>
                    <p>您已经创建 <span id="dzzs"></span> 个收货地址，最多可创建20个</p>
                </div>
                <div></div>
            </div>
            <div class="security">
                <div class="item">
                    <p><i class="item_icon iconfont">&#xe603;</i></p>
                    <p class="jf_p1">积分支付密码</p>
                    <div class="line"></div>
                    <p class="jf_p2">设置支付密码用于进行积分支付</p>
                    <button class="set_btn" data-id="0">设置</button>
                </div>
                <div class="item">
                    <p><i class="item_icon iconfont">&#xe603;</i></p>
                    <p class="jf_p1">登陆密码</p>
                    <div class="line"></div>
                    <p class="jf_p2">设置登录密码用于账户登陆</p>
                    <button class="set_btn" data-id="1">设置</button>
                </div>
            </div>

        </div>
        <div style="clear: both;"></div>

    </div>

</section>





<jsp:include page="/WEB-INF/jsp/footer/footer.jsp"></jsp:include>
</body>
<div class="add_pop">
    <form id="addForm">

        <div class="row">
            <label class="label require">收货人</label>
            <input class="input" name="name" id="name" required="" type="text" />
        </div>
        <div class="row">
            <label class="label require">所在地</label>
            <div class="addContainer">
                <select id="sheng"></select><!-- 省 -->
                <select id="shi"></select><!-- 市 -->
                <select id="qu"></select><!-- 区 -->
            </div>
        </div>
        <div class="row">
            <label class="label require">详细地址</label>
            <input name="addressDetail" id="addressDetail" class="input" require placeholder="详细地址，路名或街道名称，门牌号" type="text" />
        </div>
        <div class="row">
            <label class="label require">手机号码</label>
            <input name="phone" id="phone" class="input" require type="text" />
        </div>
        <div class="row">
            <label class="label">固定电话</label>
            <input id="fixedTelephone" name="fixedTelephone" class="input" type="text" />
        </div>
        <div class="row">
            <label class="label">邮政编码</label>
            <input id="postalCode" name="postalCode" class="input" type="text" />
        </div>
        <div class="row">
            <label class="label">地址别名</label>
            <input type="hidden" id="id" />
            <input name="addressAlias" id="addressAlias" class="input" placeholder="家/公司..." type="text" />
        </div>
        <button type="button" class="save_add" onclick="add()">保存收货地址</button>
    </form>
</div>
<div class="confirm_tip">
    <p>您确定要删除这个地址吗？</p>
    <button onclick="layer.closeAll();"></button>
    <button id="deladdr" onclick="del(this);"></button>
</div>
<script src="/static/js/jquery-2.2.0.min.js"></script>
<script src="/static/js/main.js"></script>
<script src="/static/layer/layer.js"></script>
<script src="/static/js/distpicker.data.js"></script>
<script src="/static/js/distpicker.js"></script>
<script>
    var flag=0;
    var $set_btn = $('.set_btn');
    $set_btn.on("click",function(){
        if($(this).data('id')==0){
            window.location.href = "/personal/pay_pwd";
        } else{
            window.location.href = "/personal/login_pwd";
        }
    })
    var $distpicker = $('.addContainer');
    var $tab = $(".tab");
    var $address = $(".address");
    var $security = $(".security");
    var $setAdd = $(".setAdd");
    var $edit = $(".edit");
    var $del = $(".del");
    $edit.on("click",function(){
        //编辑地址
        layer.open({
            type: 1,
            title: "收货信息修改",
            closeBtn: 1,
            area: ['480px', '590px'],
            content: $(".add_pop")
        });
    })
    $del.on("click",function(){
        //删除地址
        layer.open({
            type: 1,
            title: false,
            closeBtn: 0,
            shadeClose: true,
            area: ['436px', '192px'],
            content: $(".confirm_tip")
        });

    })

    $tab.on("click",function(){
        //切换功能
        $address.css("display","block");
        $security.css("display","block");
        $tab.removeClass("tab_act")
        $(this).addClass("tab_act");
        var id = $(this).data("id");
        if(id){
            $address.css("display","none");
        } else{
            $security.css("display","none");
        }
    })

    $("#add_address").on("click",function(){
        //添加地址
        if($(".add_item").length>19){
            layer.msg("收货地址数量超过上限！请删除后重试")
            return;
        }
        flag = 0 ;
        document.getElementById("addForm").reset();
        $distpicker.distpicker();
        layer.open({
            type: 1,
            title: "添加收货地址",
            closeBtn: 1,
            area: ['480px', '590px'],
            content: $(".add_pop")
        });
    })


    function add(){
        var url = '/receivingAdress/add';
        var r = serializeObject($("#addForm"));
        if(r.name==''||r.addressDetail==''||r.phone==''){
            layer.msg("缺少必填项");
            return;
        }
        var address = [document.getElementById("sheng").value,
            document.getElementById("shi").value,
            document.getElementById("qu").value].join(",");
        r.address = address;
        if(flag){
            url = '/receivingAdress/update';
            r.id = document.getElementById("id").value;
        }

        $.ajax({
            url: url,
            data:r,
            type: "post",
            dataType: "json",
            success: function(rs) {
                if(!rs.success && rs.errCode == '0010007') window.location.href = "/login/loginPage";
                if(rs.success){
                    document.getElementById("addForm").reset();
                    layer.closeAll();
                    getList();
                }
            }
        });
    }


    getList();
    function getList(){

        $.ajax({
            url: "/receivingAdress/list",
            type: "post",
            dataType: "json",
            success: function(rs) {
                $("#rs").empty();
                if(!rs.success && rs.errCode == '0010007') window.location.href = "/"+url_login
                $("#dzzs").text(rs.data.data.length);
                for (var i = 0; i < rs.data.data.length; i++) {
                    $("#rs").append(['<div class="add_item">',
                        '<p>'+limitStrLength(rs.data.data[i].name,4)+'</p>',
                        '<p class="addr">'+rs.data.data[i].address+rs.data.data[i].addressDetail+'</p>',
                        '<p>'+rs.data.data[i].phone+'</p>',
                        checkAddr(rs.data.data[i]),
                        '<p><a class="edit" data-id="'+rs.data.data[i].id+'" href="javascript:;" onclick="edit(this);">编辑 </a>|<a class="del"  data-id="'+rs.data.data[i].id+'" href="javascript:;" onclick="delPop(this);"> 删除</a></p>',
                        '</div>'].join(''));
                }
            }
        });
    }
    function checkAddr(d){
        if(d.defaultAddress)
            return '<p><a href="javascript:;" data-id="'+d.id+'" onclick="setDefault(this);" class="setAdd cd3">默认地址</a></p>'
        return	'<p><a href="javascript:;" data-id="'+d.id+'" class="setAdd " onclick="setDefault(this);">设为默认地址</a></p>'
    }
    function edit(t){
        $.ajax({
            url: "/receivingAdress/detail?id="+$(t).data("id"),
            type: "post",
            dataType: "json",
            success: function(rs) {
                if(!rs.success)return;
                flag = 1;
                layer.open({
                    type: 1,
                    title: "修改收货地址",
                    closeBtn: 1,
                    area: ['480px', '590px'],
                    content: $(".add_pop")
                });
                $distpicker.distpicker('destroy');
                $distpicker.distpicker({
                    province: rs.data.address.split(",")[0],
                    city: rs.data.address.split(",")[1],
                    district: rs.data.address.split(",")[2]
                });
                document.getElementById("name").value = rs.data.name;
                document.getElementById("addressDetail").value = rs.data.addressDetail;
                document.getElementById("phone").value = rs.data.phone;
                document.getElementById("fixedTelephone").value = rs.data.fixedTelephone;
                document.getElementById("postalCode").value = rs.data.postalCode;
                document.getElementById("addressAlias").value = rs.data.addressAlias;
                document.getElementById("id").value = rs.data.id;
            }
        })
    }

    function delPop(t){
        $("#deladdr").data("id",$(t).data("id"));
        layer.open({
            type: 1,
            title: false,
            closeBtn: 0,
            shadeClose: true,
            area: ['436px', '192px'],
            content: $(".confirm_tip")
        });
    }

    function del(t){

        $.ajax({
            url: "/receivingAdress/delete?id="+$(t).data("id"),
            type: "post",
            dataType: "json",
            success: function(rs) {
                layer.closeAll();
                getList();
            }
        })
    }

    function setDefault(t){
        if($(t).text().length==4)return;
        $.ajax({
            url: "/receivingAdress/setDefault?addressId="+$(t).data("id"),
            type: "post",
            dataType: "json",
            success: function(rs) {
                getList();
            }
        })
    }


</script>
</html>
