<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>登录-广和投资</title>
  <link rel="icon" href="/static/img/16_16 LOGO.png" type="image/x-icon">
  <meta charset="UTF-8">
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <!--[if lt IE 9]>
  <script src="/static/js/html5shiv.min.js"></script>
  <script src="/static/js/css3-mediaqueries.min.js"></script>
  <![endif]-->
  <link rel="stylesheet" type="text/css" href="/static/css/m_app.css"/>
  <style>
    .footer {
      height: 100px;
      width: 100%;
      margin: 0 auto 0 auto;
      background-color: #6C6C6C;
      background-image: url(/static/img/footer_bg.png);
      background-size: cover;
    }
    .footer_bottom {
      margin: 0px auto;
      height: 32px;
      padding: 34px 0px;
    }
    .btn:hover{
      color: white;
      background: #D3A359;
    }
    .iconfont:hover{
      color: #D3A359;
    }
    .header_up span,i{
      color: #777777;
    }
    @font-face {
      font-family: 'iconfont';  /* project id 754425 */
      src: url('//at.alicdn.com/t/font_754425_rw0baguq6y.eot');
      src: url('//at.alicdn.com/t/font_754425_rw0baguq6y.eot?#iefix') format('embedded-opentype'),
      url('//at.alicdn.com/t/font_754425_rw0baguq6y.woff') format('woff'),
      url('//at.alicdn.com/t/font_754425_rw0baguq6y.ttf') format('truetype'),
      url('//at.alicdn.com/t/font_754425_rw0baguq6y.svg#iconfont') format('svg');
    }

    .footer_bottom p {
      color: #FFFFFF;
      font-size: 12px;
    }
    .footer_bottom_right {
      float: right;
      margin-top: 5px;
    }


    .btn {
      background-color: transparent;
      color: #D3A359;
      border-radius: 2px;
      border: #D3A359 1px solid;
      cursor: pointer;
      width: 72px;
      height: 32px;
      line-height: 32px;
      padding: 0px;
    }
    .btn:active{
      position: relative;
      top: 1px;
      left: 1px;
    }

    .nav_a {
      display: block;
      margin: 8px 25px;
      padding: 0 0 10px 0;
      color: #333333;
      font-size: 16px;
    }
    .nav_logo {
      width: 155px;
      height: 45px;
      float: left;
      margin-right: 65px;
      margin-top: 0px;
    }
    .active {
      color: #D3A359;
      border-bottom: 2px solid #D3A359;
    }
    .header_nav {
      width: 1200px;
      margin: 0 auto;
      height: 60px;
    }

    .header {
      height: auto;
      color: white;
      font-size: 10px;
      padding-top: 4px;
      width: 100%;
    }
    .footer_wrapp {
      height: auto
    }
    .user,.pwd{
      position: absolute;
      top: 10px;
      left: 48px;
      font-size: 22px;

    }
    .user:after{
      content: "|";
      padding-left: 8px;
      font-weight:1;
    }
    .pwd:after{
      content: "|";
      padding-left: 8px;
      font-weight: 1;
    }

    .user_wrapp{
      position: relative;margin-top: 58px;
    }
    .pwd_wrapp{
      position: relative;margin-top: 20px;
    }
    .user_name{
      width: 250px;height: 50px;border-radius: 5px;border: solid 1px #EEEEEE;
      padding-left: 70px;
      margin: auto;display: block;
    }
    .user_pwd{
      width: 250px;height: 50px;border-radius: 5px;border: solid 1px #EEEEEE;
      padding-left: 70px;
      margin: auto;display: block;
    }
    .line{
      width: 76px; height: 2px; background: #D3A359;margin: auto;margin-top: 9px;
    }
    .section1{

      width: 100%;height: 960px; background: url(/static/img/登录页面.jpg) no-repeat center;
    }
    .section1>div:nth-child(1){
      width: 938px; height: 470px;
      margin: 0px auto;
      padding-top: 160px;
    }

    .section1>div:nth-child(1)>div:nth-child(1){
      float: left;width: 551px;height: 470px;
    }
    .section1>div:nth-child(1)>div:nth-child(2){
      float: left;width: 387px;height: 470px;background: white;
    }
    .section1>div:nth-child(1)>div:nth-child(2)>p{
      font-size: 20px;text-align: center;padding-top: 29px;letter-spacing: 1px;
      color: #D3A359;
    }

    .focus{
      border: #D3A359 1px solid;
    }
    .login_button{
      width: 320px;
      height: 50px;
      background-color: #d3a359;
      border-radius: 5px;
      border: solid 1px #d3a359;
      display: block;
      margin: auto;
      margin-top: 30px;
      color: white;
      font-size: 14px;
      cursor: pointer;
    }
    .login_button:active{
      position: relative;
      top: 1px;
      left: 1px;
    }
    .forget{
      padding-left: 30px;
      padding-top: 13px;
      float: left;
      font-size: 12px;
      cursor: pointer;
    }
    .register{
      float: right;padding-right: 40px;
      padding-top: 13px;
      font-size: 14px;
      cursor: pointer;
    }
    .forget:hover,.register:hover{
      color: #D3A359;
    }
    .quick{
      text-align: center;
      color: #D3A359;
      font-size: 14px;
      border-bottom: 1px solid #D3A359;
      position: relative;
      top: 80px;
      left: 50px;
      cursor: pointer;
    }
    .yzm_btn {
      background-color: #d3a359;
      border-radius: 5px;
      border: solid 1px #d3a359;
      padding: 14px 18px;
      color: white;
      font-size: 14px;
      cursor: pointer;
      line-height: 50px;
      letter-spacing: 1px;
    }
    .user_yzm{
      width: 130px;height: 50px;border-radius: 5px;border: solid 1px #EEEEEE;
      padding-left: 70px;
      margin: auto;display: inline-block;
      margin-left: 32px;
    }
    .dis_none{
      display: none;
    }
    .disabled{
      cursor: not-allowed ;
      background: #E0E0E0;
      border: 0px;
    }
    .yzm_wrapp{
      position: relative;margin-top: 20px;
    }
  </style>
</head>

<body>
<div class="header_line"></div>
<div class="header">
  <div class="header_up">
    <div class="header_up_left">
      <i class="iconfont" style="color: #ccc;">&#xe62c;</i>
      <span  style="color: #ccc;" id="_date_"></span>
    </div>
    <div class="header_up_right">
      <i class="iconfont" style="color: #ccc;">&#xe61b;</i>
      <span style="color: #ccc;">+86(021)56497956</span>
      <a href="/personal/help" style="color: #ccc;padding: 0 10px">帮助中心</a>
      <a target="_blank" href="https://weibo.com/guanghebj"><i class="iconfont">&#xe69c;</i></a>
      &nbsp;
      <a href="javascript:;" class="wxgzh">
        <i class="iconfont">&#xe66a;</i>
        <img class="wximg" src="/static/img/ghtzwx.png" />
      </a>
    </div>
  </div>
  </div>
  <nav class="header_nav">
    <img src="/static/img/logo.png" class="nav_logo"/>

    <div style="float: right; margin-top: 5px;">
      <button class="btn" onclick="window.location.href='/'">网站首页</button>

    </div>
  </nav>
</div>
<section class="section1">
  <div>
    <div>
      <img src="/static/img/登录页面_小图.jpg" />
    </div>
    <%--<div>--%>
      <%--<p>登录</p>--%>
      <%--<div class="line"></div>--%>
      <%--<form>--%>
        <%--<div class="user_wrapp">--%>
          <%--<input class="user_name" required="" placeholder="请输入手机号" id="mobile"/>--%>
          <%--<i class="iconfont user" >&#xe7e8;</i>--%>
        <%--</div>--%>
        <%--<div class="pwd_wrapp">--%>
          <%--<input class="user_pwd" required="" placeholder="请输入密码" id="password"/>--%>
          <%--<i class="iconfont pwd" >&#xe602;</i>--%>
        <%--</div>--%>
        <%--<input type="button" class="login_button" value="登录" onclick="login();" />--%>
      <%--</form>--%>
      <%--<a class="forget" href="/login/updatePwdPage1">忘记密码？</a>--%>
      <%--<a class="register" href="/login/registerPage">注册</a>--%>
      <%--<a class="quick">验证码快捷登录</a>--%>
    <%--</div>--%>
    <div>
      <p>登录</p>
      <div class="line"></div>
      <form>
        <div class="user_wrapp">
          <input class="user_name" id="mobile" required="" readonly onfocus="this.removeAttribute('readonly');" placeholder="请输入账号" />
          <i class="iconfont user" >&#xe7e8;</i>
        </div>
        <div class="pwd_wrapp">
          <input type="text" style="display:none;" />
          <input class="user_pwd" id="password" required="" readonly onfocus="this.removeAttribute('readonly');" type="password" placeholder="请输入密码" />
          <i class="iconfont pwd" >&#xe602;</i>
        </div>
        <div class="yzm_wrapp dis_none">
          <input class="user_yzm" id="yzm" required="" readonly onfocus="this.removeAttribute('readonly');" placeholder="请输入验证码" />
          <i class="iconfont pwd" >&#xe603;</i>
          <span class="yzm_btn">获取验证码</span>
        </div>
        <input type="button" class="login_button" value="登录" onclick="login()"/>
      </form>
      <a class="forget" href="/login/updatePwdPage1">忘记密码？</a>
      <a class="register" href="/login/registerPage">注册</a>
      <a class="quick">验证码快捷登录</a>
    </div>
  </div>
</section>


<div class="footer">
  <div class="footer_wrapp">

    <div class="footer_bottom">
      <div class="footer_bottom_left">
        <p>Copyright © 2005 Company Name. Rights Reserved广和投资有限公司版权所有 </p>
      </div>
      <div class="footer_bottom_right">
        <p>北京市朝阳区姚家园路105号冶金地质总局观湖国际2座1层</p>
      </div>
    </div>
  </div>
</div>
</body>
<script src="/static/js/jquery-2.2.0.min.js"></script>
<script src="/static/layer/layer.js?v=2"></script>
<script type="text/javascript" src="/static/js/main.js?v=2"></script>
<script>
  $('input').focus(function(){
    $(this).addClass("focus")
    $(this).next().css("color","#D3A359")
  })
  $('input').blur(function(){
    $(this).removeClass("focus")
    $(this).next().css("color","#837d75")
  })
  var $quick = $(".quick");
  var $yzm_wrapp = $(".yzm_wrapp");
  var $pwd_wrapp = $(".pwd_wrapp");
  var $yzm_btn = $(".yzm_btn");
  var countdown = 60;
  $quick.on("click",function(){
    if($yzm_wrapp.hasClass("dis_none")){
      $yzm_wrapp.removeClass("dis_none");
      $pwd_wrapp.addClass("dis_none");
      $quick[0].textContent = "帐号密码登录";
    } else {
      $yzm_wrapp.addClass("dis_none");
      $pwd_wrapp.removeClass("dis_none");
      $quick[0].textContent = "验证码快捷登录";
    }
  })

  $yzm_btn.on("click",function(){
    if($yzm_btn.hasClass("disabled"))return;
    var mobile = $("#mobile").val();
    if(!(/^1[1-9][0-9]\d{8}$/.test(mobile))){
      alert('不是有效的手机号码');
      return;
    }
    $.post("/login/sendCode",{mobile:mobile,type:1},function(rs){
      if(rs.success){
        settime();
        $yzm_btn.addClass("disabled");
      }else{
        alert('网络繁忙，请稍候重试');
      }
    })
  })

  function settime() {
    if (countdown == 0) {
      $yzm_btn.removeClass("disabled");
      $yzm_btn[0].textContent = "发送验证码";
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
  function login(){
    var mobile = $("#mobile").val();
    console.log(mobile)
    var flag = $yzm_wrapp.hasClass("dis_none");
    if(!(/^1[1-9][0-9]\d{8}$/.test(mobile))){
      alert("不是完整的11位手机号或者正确的手机号");
      return;
    }
    var password = $("#password").val();
    var yzm = $("#yzm").val();
    if(password == "" || password.length < 6){
      if(flag){
        alert("密码长度不能小于6位");
        return;
      }
    }
    if(yzm == "" || yzm.length < 2){
      if(!flag){
        alert("缺少验证码");
        return;
      }
    }
    var data = {"mobile": mobile,"password":password,"type":0};
    if(!flag){
      data.password=yzm;
      data.type=1;
    }
    $.ajax({
      type: "post",
      url: "/login/signIn",
      data:data,
      dataType: "json",
      success:function(res) {
        if(res.success == false){
          alert(res.errMsg);
          return;
        }else{
//          window.location.href = "/";
          loginReturn();
        }

      }
    });
  }

  $(function () {
    if (!!window.ActiveXObject || "ActiveXObject" in window){


      $('#password').removeAttr('readonly').attr('required', true);
      $('#mobile').removeAttr('readonly').attr('required', true);
    }
  })
</script>
</html>
