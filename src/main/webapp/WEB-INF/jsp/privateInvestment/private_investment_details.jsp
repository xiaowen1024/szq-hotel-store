<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <title>广和投资-私募投资-私募产品</title>
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
    <link href="/static/css/simuchanpin.css" rel="stylesheet" />
    <style>
        .items>div:nth-child(1){
            width: 70px;float: left;height: 10px;
        }
        .items>div:nth-child(2){
            width: 200px;float: left;font-size: 14px; line-height: 50px;
        }
        .items>div:nth-child(3){
            float: left;font-size: 14px;color: #666;line-height: 50px;
        }

        .risk{
            border-bottom: #EEEEEE 1px solid;
        }
        .risk_wrapp>div:nth-child(1){
            width: 70px;height: 1px; float: left;
        }
        .risk_wrapp>div:nth-child(2){
            width: 200px; float: left;
        }
        .risk_wrapp>div:nth-child(3){
            float: left;
            width:calc(100% - 270px);
        }
        .risk_wrapp>div:nth-child(3)>p:nth-child(n+2){
            text-indent: 80px;
        }

        .risk_wrapp>div>p{
            line-height: 49px;
            border-bottom: 1px solid #EEEEEE;
            font-size:14px;
            color: #666;

        }
        .risk_wrapp{
            border-bottom: 1px solid #EEEEEE;
        }
        .oper_btn{
            cursor: not-allowed;
        }
        .btn_allow{
            cursor: pointer;
        }
        .yzm_input{
            width: 168px;
            border-right: 0px;
        }
        .yzm_btn{
            background-color: #DBBE93;
            padding: 6px 13px;
            padding-bottom: 6px;
            color: #fff;
            font-size: 14px;
            cursor: pointer;
            display: inline-block;

        }
        .go_toast{
            color: #595959;
            font-size: 16px;
            text-align: center;
            line-height: 70px;
        }
        .go{
            position: relative;
            display: none;
        }
        .go_line{
            border-bottom: #E8E8E8 1px solid;
            width: 100%;
            height: 1px;
        }
        .go_title{
            color: #b28248;
            font-size: 22px;
            text-align: center;
            line-height: 55px;
        }
        .go_close{
            position: absolute;
            right: 25px;
            top:15px;
            opacity: 0.5;
        }
        .go_close:hover{
            opacity: 1;
        }
        .btns{
            width: 73px;
            height: 30px;
            border: 1px solid #eee;
            color: #555;
        }
        .ml200{
            margin-left: 200px!important;
        }
        .ml30{
            margin-left: 30px;
        }
        .btns:active{
            position: relative;
            top: 1px;
        }
        .btns:hover{
            color: #fff;
            background: #D3A359;
            border: 0px
        }
        .btns.hover{
            color: #fff!important;
            background: #D3A359!important;
            border: 0px!important;
        }
        .row_first{
            padding-top: 0px !important;
        }
        .row{
            padding: 9px 0;
            margin-left: 70px;
        }
        .label2{
            width: 105px;
            text-align: right;
            font-size: 16px;
            color: #555555;
            line-height: 30px;
            display: inline-block;
        }
        .label2:after{
            content: "：";
        }
        .require:before{
            content: "*";
            color: red;
        }
        .input{
            width: 264px;
            height: 30px;
            color: #333333;
            padding-left: 16px;
            border: solid 1px #eeeeee;
        }
        .invest_start .login_p {
            font-size: 18.77px;
            letter-spacing: 0px;
            text-align: center;
            color: #999;
            padding: 45.22px 0 0 0;
        }
        @media only screen and (max-width: 1400px) {
            .div1{ margin-top: 75px;margin-left: 50px;width: 500px;height: 30px;}
            #productScaleStart{display: inline-block;width: 160px;text-align: center;font-size: 24px;color: #fff;}
            #amountOfInvestment{display: inline-block;width: 160px;text-align: center;font-size: 24px;color: #fff;}
            #fundType{display: inline-block;width: 160px;text-align: center;font-size: 24px;color: #fff;}
            .div2{ margin-top: 10px;margin-left: 50px;width: 500px;height: 20px;}
            #productScaleStartTxt{display: inline-block;width: 160px;text-align: center;font-size: 12px;color: #fff;}
            #amountOfInvestmentTxt{display: inline-block;width: 160px;text-align: center;font-size: 12px;color: #fff;}
            .jjlx{display: inline-block;width: 160px;text-align: center;font-size: 12px;color: #fff;}
        }
        @media only screen and (min-width: 1400px){


            .invest_start .unit {
                position: absolute;
                font-size: 18px;
                letter-spacing: 1px;
                color: #999999;
                right: 110px;
                top: 130px;
            }
            .div1{margin-top: 75px;margin-left: 100px;width: 500px;height: 30px;}
            #productScaleStart{display: inline-block;width: 160px;text-align: center;font-size: 24px;color: #fff;}
            #amountOfInvestment{display: inline-block;width: 160px;text-align: center;font-size: 24px;color: #fff;}
            #fundType{display: inline-block;width: 160px;text-align: center;font-size: 24px;color: #fff;}
            .div2{margin-top: 10px;margin-left: 100px;width: 500px;height: 20px;}
            #productScaleStartTxt{display: inline-block;width: 160px;text-align: center;font-size: 12px;color: #fff;}
            #amountOfInvestmentTxt{display: inline-block;width: 160px;text-align: center;font-size: 12px;color: #fff;}
            .jjlx{display: inline-block;width: 160px;text-align: center;font-size: 12px;color: #fff;}
        }
        .btn_allow{
            cursor: pointer;
        }
        .invest_wrapp{
            background: url("/static/img/simucp.jpg");
            background-size: cover;
        }
    </style>

</head>

<body>
<div class="header_line"></div>
<div class="header news" style="background-image: url(/static/img/private_investment_bg.png);background-size: cover;">


    <jsp:include page="../nav/header_nav.jsp"></jsp:include>

    <div style="height: 135px;">
        <div style="height: 150px"></div>
        <p align="center" style="font-size:47px">

            私募投资<span style="font-size: 32px;"> / Private investment</span></p>

    </div>

</div>

<div class="news_bn">
    <div class="wrapp">
        <span class="bread"><a href="/">首页</a> > <a href="/wealthManagement/page">财富管理</a> > <a href="/privateInvestment/page">私募投资</a> > 私募产品 </span>
        <a name="hxtd"></a>

    </div>

    <section >
        <div style="height: 50px;"></div>
        <div class="news_page_wrapp">


            <div class="invest_wrapp">
                <p class="iw_title" id="fundName"></p>
                <div class="div1">
                    <div id="productScaleStart" ></div>
                    <div id="amountOfInvestment"></div>
                    <div id="fundType" ></div>
                </div>
                <div class="div2">
                    <div id="productScaleStartTxt" ></div>
                    <div id="amountOfInvestmentTxt"></div>
                    <div class="jjlx">基金类型</div>
                </div>
                <%--<p>--%>
                    <%--<span id="productScaleStart"></span>--%>
                    <%--<span id="amountOfInvestment" style="padding-left: 80px;"></span>--%>
                    <%--<span id="fundType"></span>--%>
                <%--</p>--%>
                <%--<p>--%>
                    <%--<span id="productScaleStartTxt"></span>--%>
                    <%--<span id="amountOfInvestmentTxt" style="padding-left: 60px;"></span>--%>
                    <%--<span>基金类型</span>--%>
                <%--</p>--%>
                <div class="invest_waring">
                    <p id="invest_waring_p">*广和提醒您：投资有风险</p>
                </div>
                <div class="invest_start">
                    <p class="login_p">您尚未<span>登录!</span></p>
                    <div style="height: 50px;"></div>
                    <button class="reduce iconfont btn oper_btn">&#xe60c;</button>
                    <input value="" id="amountOfInvestment1" style="vertical-align: middle;"  /><span class="unit" id="amountOfInvestmentTxt1"></span>
                    <button class="plus iconfont btn btn_allow oper_btn">&#xe641;</button>

                    <p class="invest_tip"><span id="amountOfInvestment2"></span><span id="increasingAmount">递增金额   10万元</span></p>
                    <button class="yuyue btn btn_allow"  class="yuyue btn" onclick="yuyue()">我要预约</button>
                </div>
            </div>






            <div class="content">
                    <img id="imgUrl" style="width: 100%"/>

            </div>

        </div>
    </section>

    <jsp:include page="../footer/footer.jsp"></jsp:include>
</body>
<div class="go">
    <a class="go_close" href="javascript:layer.closeAll();">x</a>
    <p class="go_title">立即预约</p>
    <div class="go_line"></div>
    <p class="go_toast">请留下您的联系方式，私享顾问会尽快与您联系</p>
    <div class="row row_first">
        <label class="label2">姓名</label><input class="input" id="name" required  type="text" />
    </div>
    <div class="row">
        <label class="label2">手机号码</label><input class="input" id="mobile" required  type="text" />
    </div>
    <div class="row" style="font-size: 0px;">
        <label class="label2">验证码</label>
        <input class="input yzm_input" required placeholder="请输入手机验证码"  id="yzm"  type="text" />
        <span class="yzm_btn">获取验证码</span>
    </div>
    <div class="row ml200">
        <button class="btns" onclick="layer.closeAll();">取 消</button>
        <button class="btns ml30 hover"  onclick="yuyueSuccess();">确 定</button>
    </div>
</div>
<script src="/static/js/mainJs/jquery.min.js"></script>
<script src="/static/js/main.js"></script>
<script src="/static/layer/layer.js"></script>
<script>

    function getParam(paramName) {
        paramValue = "", isFound = !1;
        if (this.location.search.indexOf("?") == 0 && this.location.search.indexOf("=") > 1) {
            arrSource = unescape(this.location.search).substring(1, this.location.search.length).split("&"), i = 0;
            while (i < arrSource.length && !isFound) arrSource[i].indexOf("=") > 0 && arrSource[i].split("=")[0].toLowerCase() == paramName.toLowerCase() && (paramValue = arrSource[i].split("=")[1], isFound = !0), i++
        }
        return paramValue == "" && (paramValue = null), paramValue
    }

    var privateInvestmentId =  getParam("id");


    function initPage(){
        $.getJSON("/privateInvestment/detail?id="+privateInvestmentId ,function(rs) {
            console.log(rs);
            $("#fundName").html(rs.data.data.fundName);

            var productScaleStart = rs.data.data.productScaleStart+"";
            var productScaleEnd = rs.data.data.productScaleEnd+"";
            var productScaleStartt = "";
            if(productScaleStart.length > 8){
                productScaleStartt = "亿元";
                productScaleStart = productScaleStart.substring(0,productScaleStart.length-8)+"";
                productScaleEnd = productScaleEnd.substring(0,productScaleEnd.length-8)+"";
            }else if(productScaleStart.length <= 8 && productScaleStart.length > 4){
                productScaleStart = productScaleStart.substring(0,productScaleStart.length-4)+"";
                productScaleEnd = productScaleEnd.substring(0,productScaleEnd.length-4)+"";
                productScaleStartt = "万元";
            }else{
                productScaleStart = rs.data.data.productScaleStart+"";
                productScaleEnd = rs.data.data.productScaleEnd+"";
                productScaleStartt = "元";
            }


            $("#productScaleStart").html(productScaleStart + "-" + productScaleEnd);
            $("#productScaleStartTxt").html('产品规模('+ productScaleStartt +')');
            $("#fundType").html(rs.data.data.fundType);


            var amountOfInvestment = rs.data.data.amountOfInvestment + "";
            var amountOfInvestmentt = "";
            if(amountOfInvestment.length > 8){
                amountOfInvestment = amountOfInvestment.substring(0,amountOfInvestment.length-8)+"";
                amountOfInvestmentt = '亿元';
            }else if(amountOfInvestment.length <= 8 && amountOfInvestment.length > 4){
                amountOfInvestment = amountOfInvestment.substring(0,amountOfInvestment.length-4)+"";
                amountOfInvestmentt = '万元';
            }else{
                amountOfInvestment = rs.data.amountOfInvestment+"";
                amountOfInvestmentt = '元';
            }
            $("#amountOfInvestment").html(amountOfInvestment);
            $("#amountOfInvestmentt").html(amountOfInvestmentt);

            $("#amountOfInvestment1").val(amountOfInvestment) ;
            $("#amountOfInvestmentTxt1").html(amountOfInvestmentt);

            $("#amountOfInvestmentTxt").html('起投金额('+ amountOfInvestmentt +')');
            $("#amountOfInvestment2").html('起投金额 ' + amountOfInvestment+amountOfInvestmentt);


            var increasingAmount = rs.data.data.increasingAmount + "";
            var increasingAmountt = "";
            if(increasingAmount.length > 8){
                increasingAmount = increasingAmount.substring(0,increasingAmount.length-8)+"";
                increasingAmountt = '亿元';
            }else if(increasingAmount.length <= 8 && increasingAmount.length > 4){
                increasingAmount = increasingAmount.substring(0,increasingAmount.length-4)+"";
                increasingAmountt = '万元';
            }else{
                increasingAmount = rs.data.data.increasingAmount+"";
                increasingAmountt = '元';
            }
            var start = Number(amountOfInvestment),step = Number(increasingAmount);

            $("#amountOfInvestment1").change(function(){

                if(Number($("#amountOfInvestment1").val())<=start){
                    $("#amountOfInvestment1").val(start);
                    $(".reduce").removeClass("btn_allow");
                }
                if(Number($("#amountOfInvestment1").val())>start){
                    $(".reduce").addClass("btn_allow");
                }
            })
            $(document).on("click",".btn_allow",function(){
                if($(this).hasClass("yuyue")) return;
                if($(this).hasClass("plus")){
                    $("#amountOfInvestment1").val(Number($("#amountOfInvestment1").val())+step);
                    if(Number($("#amountOfInvestment1").val())>start) $(".reduce").addClass("btn_allow");
                }else{
                    $("#amountOfInvestment1").val(Number($("#amountOfInvestment1").val())-step);
                    if(Number($("#amountOfInvestment1").val())<=start){

                        $(".reduce").removeClass("btn_allow");
                    }
                }
            })
            //递增金额   10万元
            $("#increasingAmount").html('递增金额 ' + increasingAmount+increasingAmountt);

//            alert(rs.data.Url+ rs.data.data.imgUrl);
//            $("#imgUrl").css("background-image","url('"+ rs.data.Url+ rs.data.data.imgUrl +"')");
            $("#imgUrl").attr("src", rs.data.Url+ rs.data.data.imgUrl);




        });
    }

    //		150px来源:风险控制数据条数*50 ，假设总共有3条数据，50*3=150px，对应执行下列代码
    $("#risk_wrapp").css("height","150px");//150px动态获取，每条数据50，如果有4条数据，对应改成200px
    $("#risk").css("line-height","150px"); //150px动态获取，每条数据50，如果有4条数据，对应改成200px


    checkLoginStat(function(rs){
        if(rs.errCode=="0010007"){
            window.location.href = "/login/loginPage"
        } else{
            $(".login_p").text("用户"+dealPhone(rs.data.phoneNumber))
        }
    })





    function yuyue(){
        layer.open({
            type: 1,
            title: false,
            closeBtn: 0,
            area:["590px","330px"],
            content: $(".go")
        });
    }
    function yuyueSuccess(){
        var privateInvestmentId = getUrlParms("id");
        var name = document.getElementById("name").value,
                phone = document.getElementById("mobile").value,
                yzm = document.getElementById("yzm").value,
                amountOfInvestment =document.getElementById("amountOfInvestment1").value;
        amountOfInvestment = Number(amountOfInvestment)*10000;
        if(name!=''&&phone!=''&&amountOfInvestment!=''&&yzm!=''){
            var data = {privateInvestmentId:privateInvestmentId,name:name,phone:phone,amountOfInvestment:amountOfInvestment,code:yzm};
        }else{
            layer.msg("缺少必填项");
            return;
        }
        $.ajax({
            type:"post",
            url: "/subscribe/add",
            data:data,
            dataType: "json",
            success:function(rs){
                if(rs.success){
                    popTip1(true,"产品预约成功","稍候工作人员会与您联系请耐心等待");
                    document.getElementById("name").value = "";
                    document.getElementById("mobile").value = "";
                    document.getElementById("yzm").value = "";

                }else{
                    layer.msg(rs.errMsg);
                }
            }
        })
    }
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
        if(!(/^1[0-9][0-9]\d{8}$/.test(mobile))){
            layer.msg('不是有效的手机号码');
            return;
        }
        $.post("/login/sendCode",{mobile:mobile,type:4},function(rs){
            if(rs.success){
                settime();
                $(".yzm_tip").removeClass("dis_none");
                $yzm_btn.addClass("disabled");
            }
        })
    })


    $(function(){
        initPage();
    });

    function popTip1(flag,title,content){

            layer.open({
                type: 1,
                title: false,
                closeBtn: 0,
                area:["320px","190px"],
                success: function(layero, index){
                    $(layero).on("click",function(){
                        layer.closeAll();
                    })
                },
                content: '<div class="success_tip"><p class="tip_title">'+title+'</p><p class="tip_content">'+content+'</p><button class="success_tip_btn"></button></div>'
            });

    }

</script>

</html>
