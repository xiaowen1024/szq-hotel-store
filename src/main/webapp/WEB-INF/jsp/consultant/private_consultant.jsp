<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>私享顾问</title>
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
    <link href="/static/css/page.css" rel="stylesheet"/>
    <style>

        .ppp{
            width: 25%;float: left; position: relative;
        }




        #cover {
            position: absolute;
            background: rgba(0, 0, 0, 0.4);
            width: 100%;
            /*filter: alpha(opacity=60);*/
            /*opacity: 0.6;*/
            display: none;
            left: 0px;
            top: 0px;
            right: 0px;
            bottom: 0px;
        }


        /* 触发弹窗图片的样式 */
        #myImg {
            border-radius: 5px;
            cursor: pointer;
            transition: 0.3s;
        }

        #myImg:hover {opacity: 0.7;}

        /* 弹窗背景 */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            /*padding-top: 100px;*/ /* Location of the box */
            left: 0;
            top: 0;
            right: 0;
            bottom:0;
            margin: auto;
            width: 800px; /* Full width */
            height: 400px; /* Full height */
            /*overflow: auto;*/ /* Enable scroll if needed */
            /*background-color: rgb(0,0,0);*/ /* Fallback color */
            /*background-color: rgba(0,0,0,0.9);*/ /* Black w/ opacity */
            background-color: white;
            z-index: 999;
        }

        /* 图片 */
        .modal-content {
            margin: auto;
            display: block;
            /*width: 80%;*/
            /*max-width: 700px;*/
            width: 350px;
            height: 400px;

        }

        /* 文本内容 */
        #caption {
            margin: auto;
            display: block;
            /*width: 80%;*/
            width: 340px;
            max-width: 700px;
            text-align: center;
            color: #ccc;
            /*padding: 10px 0;*/
            height: 350px;
            float: right;
            background-color: #FFFFFF;
            padding: 0px 30px;
            position: relative;
        }

        /* 添加动画 */
        #caption,.modal {
            -webkit-animation-name: zoom;
            -webkit-animation-duration: 0.6s;
            animation-name: zoom;
            animation-duration: 0.6s;
        }

        @-webkit-keyframes zoom {
            from {-webkit-transform:scale(0)}
            to {-webkit-transform:scale(1)}
        }

        @keyframes zoom {
            from {transform:scale(0)}
            to {transform:scale(1)}
        }

        /* 关闭按钮 */
        .close {
            position: absolute;
            top: 0px;
            right: 20px;
            color: #ccc;
            font-size: 40px;
            font-weight: bold;
            transition: 0.3s;
            z-index: 999;
        }

        .close:hover,
        .close:focus {
            color: #bbb;
            text-decoration: none;
            cursor: pointer;
        }

        /* 小屏幕中图片宽度为 100% */
        @media only screen and (max-width: 800px){
            .modal-content {
                width: 100%;
            }
        }
        .guwen{
            width: 73px;height: 30px; border: 1px solid #FFFFFF; color: #FFFFFF;font-size: 18px;
            padding: 0px 5px;position: absolute;top: 15px; left: 10px; display: none;border-radius: 3px;
        }


        .ppp{
            width: 25%;float: left; position: relative;overflow: hidden;
        }


        .item_btn {
            padding: 0;
            width: 107px;
            height: 32px;
            background-color: #D3A359;
            border-radius: 3px;
            position: absolute;
            right: 38px;
            bottom: -10px;
            color: #fff;
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
            padding-left: 157px;
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
        }

        .item_img {
            width: 125px;
            height: 188px;
            position: absolute;
        }

        .item_p1 {
            color: #333;
            font-size: 16px;
            padding-left: 162px;
        }

        .item_p2 {
            background: url(/static/img/auth_img.jpg) 20px center no-repeat;
            margin: 20px 0 10px 143px;
            padding-left: 80px;
            color: #333;
            font-size: 16px;
        }

        .item_p3 {
            width: 576px;
            height: 116px;
            font-size: 16px;
            color: #333333;
            margin-left: 163px;
            line-height: 30px;
        }


        .ss_p1{
            color: #555;font-size: 20px;
        }
        .ss_d1{
            height: 190px;width: 100%;border: solid 2px #ececec;margin: 20px 0;border-left: 0px;border-right:0px;padding: 15px 0;
        }
        .ss_img1{
            display: block; position: absolute;width: 125px;height: 189px;
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
        .imgg{
            display: block;transition: all 0.6s;
            width: 100%;height: 100%;
        }
        .od:hover .imgg {
            transform: scale(1.1);
        }
        .od:hover{
            border:2px solid #D3A359!important;
        }
        .od{
            width: 270px;height: 313px; border: solid 2px #e3e3e3;
        }
        .od_c{
            overflow: hidden;width: 270px;height: 313px;position: relative;top: 10px;left: 10px;
        }
        .newp{
            text-align: center;color: #333333;font-size: 16px;
        }
        .od_p{
            width: 290px;margin: 5px;height: 460px;float: left;
        }
    </style>
</head>

<body>
<div id="cover"></div>
<div class="header_line"></div>
<div class="header news sxy_bg">

    <jsp:include page="../nav/header_nav.jsp"></jsp:include>
    <div class="header_big_font_wrapp"></div>
    <h1 align="center"  class="header_big_font">财富管理 / Wealth management</h1>
</div>

<div class="news_bn">
    <div class="wrapp">
        <span class="bread"><a href="/">首页</a> > <a href="/wealthManagement/page">财富管理</a>  > 私享顾问</span>
        <div class="bread_btn_wrapp">
            <button class="bread_btn bread_btn_active" onclick="window.location.href='/privateConsultant/page#'">私享顾问</button>
            <button class="bread_btn  " onclick="window.location.href='/wealthManagement/page#'">私募投资</button>
        </div>
    </div>
</div>

<div style="width: 100%;background: white;">
    <div style="height: 100px;"></div>
    <p style="color: #111;font-size: 36px;text-align: center;">私享顾问</p>
    <div style="height: 10px;"></div>
    <div style="background: #D3A359;height: 3px;width: 71px;margin: auto;"></div>
    <div style="height: 10px;"></div>
    <p style="font-size: 26px;color: #040404;text-align: center;">Private consultant</p>

    <!-- 弹窗 -->

    <div id="myModal" class="modal">

        <!-- 关闭按钮 -->
        <span class="close">&times;</span>

        <!-- 弹窗内容 -->
        <div style="float: left; width: 250px; height: 300px;">
            <img class="modal-content" id="img01">
        </div>
        <!-- 文本描述 -->
        <div id="caption">
            <div style="padding-top: 80px; padding-bottom: 20px;">
                <p align="left" style="color: #666666; font-weight: bold;" id="position" ></p>
                <p align="left" style="color: #333333; font-weight: bold; font-size: 20px;" id="name"></p>
            </div>
            <p id="synopsis" align="left" style="color: #999999;"></p>
            <button class="item_btn" onclick="confirm(this)">
                立即联系
            </button>
        </div>
    </div>
    <div id="wrapp" style="width: 1208px;overflow: hidden;height: auto;margin: auto;padding: 60px 0 0 0">

    </div>
    <div style="height: 28px; width: 360px; margin: 40px auto;">
        <ul class="page" id="page"></ul>
    </div>
</div>





<jsp:include page="../footer/footer.jsp"></jsp:include>
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
<script src="/static/js/mainJs/jquery.min.js"></script>
<script src="/static/js/main.js"></script>
<script src="/static/layer/layer.js"></script>
<script src="/static/js/page.js"></script>
<script>
    var options,
            pageNo = getUrlParms("pageNo"),
            pageSize = getUrlParms("pageSize");
    if(pageNo == null) pageNo = 1;
    if(pageSize == null) pageSize = 12;
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
                var datas = rs.data.data;
                var html = '';
                for(var i=0;i<rs.data.data.length;i++){

                    var imgUrl = '${Url}'+ rs.data.data[i].imgUrl;

                    html +=      ['<div class="od_p">',
                        '    <div style="height: 40px;"></div>',
                        '    <div class="od">',
                        '    <div class="od_c">',
                        '<img class="imgg" src="'+ imgUrl +'" onclick="showdatils('+"'"+rs.data.data[i].name+"',"+"'"+rs.data.data[i].gender+"\','"+rs.data.data[i].position+"\','"+""+imgUrl+"\','"+""+rs.data.data[i].jobNumber+"\','"+""+rs.data.data[i].id+"\','"+rs.data.data[i].synopsis+'\')"/>',
                        '   </div>',
                        '  </div>',
                        '    <div style="height: 28px;"></div>',
                        '     <p class="newp">'+ rs.data.data[i].name +'</p>',
                        ' <div style="height: 10px;"></div>',
                        ' <p class="newp">'+ rs.data.data[i].jobNumber +'</p>',
                        ' </div>'].join("")
                }
                $("#wrapp").html(html);
                document.getElementById("cover").style.height = $(document).height()+"px";
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
    if(location.href.indexOf("#")!=-1){
        $('html , body').animate({scrollTop:  $(".header").innerHeight()},'fast');
    }
    var $yzm_btn = $(".yzm_btn");
    var countdown = 60;
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
                        window.location.href = "/personal/my_adviser.html";
                    },2000)
                }else{
                    layer.msg(rs.errMsg);
                }
            }
        })
    }
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
        if(!(/^1[0-9][0-9]\d{8}$/.test(mobile))){
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


    // 获取弹窗
    var modal = document.getElementById('myModal');
    // 获取图片插入到弹窗 - 使用 "alt" 属性作为文本部分的内容
    var $img = $('.imgg');
    var modalImg = document.getElementById("img01");
    var captionText = document.getElementById("caption");

    modalImg.src = "";
    $img.on('click',function(){
        modal.style.display = "block";
        modalImg.src = $(this).src;
        captionText.innerHTML = this.alt;
    })

    // 获取 <span> 元素，设置关闭按钮
    var span = document.getElementsByClassName("close")[0];

    // 当点击 (x), 关闭弹窗
    span.onclick = function() {
        modal.style.display = "none";
    }


    <%--$.getJSON("/privateConsultant/list?pageNo=1&pageSize=99",function(rs){--%>

    <%--var html = '';--%>
    <%--for(var i=0;i<rs.data.data.length;i++){--%>

    <%--var imgUrl = '${Url}'+ rs.data.data[i].imgUrl;--%>

    <%--html +=      ['<div class="od_p">',--%>
    <%--'    <div style="height: 40px;"></div>',--%>
    <%--'    <div class="od">',--%>
    <%--'    <div class="od_c">',--%>
    <%--'<img class="imgg" src="'+ imgUrl +'" onclick="showdatils('+"'"+rs.data.data[i].name+"',"+"'"+rs.data.data[i].gender+"\','"+rs.data.data[i].position+"\','"+""+imgUrl+"\','"+""+rs.data.data[i].jobNumber+"\','"+""+rs.data.data[i].id+"\','"+rs.data.data[i].synopsis+'\')"/>',--%>
    <%--'   </div>',--%>
    <%--'  </div>',--%>
    <%--'    <div style="height: 28px;"></div>',--%>
    <%--'     <p class="newp">'+ rs.data.data[i].name +'</p>',--%>
    <%--' <div style="height: 10px;"></div>',--%>
    <%--' <p class="newp">'+ rs.data.data[i].jobNumber +'</p>',--%>
    <%--' </div>'].join("")--%>
    <%--}--%>
    <%--$("#wrapp").html(html);--%>




    <%--});--%>

    function showdatils(name,gender,position,imgUrl,jn,id,synopsis){

        $("#name").html('');
        $("#position").html('');
        $("#synopsis").html('');
        var modalImg = document.getElementById("img01");
        modalImg.src = '';
        // 获取弹窗
        var modal = document.getElementById('myModal');
        var cover = document.getElementById('cover');
        modal.style.display = "block";
        cover.style.display = "block";
        disabledMouseWheel();
        $(".item_btn").data("id",id);
        $(".item_btn").data("jobnumber",jn);
        var sex = '';
        if(gender == "female"){
            sex = "女士";
        }else{
            sex = "先生";
        }
        $("#name").html(name + sex +" "+ jn);
        $("#position").html(position);
        $("#synopsis").html(synopsis);
        modalImg.src = imgUrl;

    }
    var zdlcs;
    function confirm(t){
        zdlcs = $(t).data("id");
        document.getElementById("pop_jobNumber").textContent =  $(t).data("jobnumber");
        $.ajax({
            url: "/questionnaire/queryUserInfo",
            dataType: "json",
            success:function(rs){
                if(!rs.success){
                    window.location.href = "/login/loginPage";
                }else{
                    layer.open({
                        type: 1,
                        title: false,
                        closeBtn: 0,
                        area: ["590px", "300px"],
                        content: $(".go")
                    });
                }
            }

        })
    }


    function disabledMouseWheel()  {
        if (document.addEventListener)  {
            document.addEventListener('DOMMouseScroll',  dis,  false);
        }
        window.onmousewheel  =  document.onmousewheel  =  dis;
    }

    function opensc()  {
        if (document.addEventListener)  {
            document.addEventListener('DOMMouseScroll',  scrollFunc,  false);
        }
        window.onmousewheel  =  document.onmousewheel  =  scrollFunc;
    }

    function  scrollFunc(evt)  {
        return true;
    }
    function dis(){
        return false;
    }

    $(".close").on("click", function () {
        document.getElementById('myModal').style.display='none';
        document.getElementById('cover').style.display='none';
        opensc();
    })

</script>
</html>