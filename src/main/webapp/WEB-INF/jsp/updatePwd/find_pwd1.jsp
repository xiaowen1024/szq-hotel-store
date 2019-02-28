<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>密码找回-广和投资</title>
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
    .header{
      box-shadow: 0px 5px 10px #EEEEEE;
    }
    .footer {
      height: 100px;
      width: 100%;
      margin: 0 auto 0 auto;
      background-color: #6C6C6C;
      background-image: url(img/footer_bg.png);
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
    a>.iconfont:hover{
      color: #D3A359;
    }
    .header_up span,i{
      color: #777777;
    }

    @font-face {
      font-family: 'iconfont';  /* project id 754425 */
      src: url('//at.alicdn.com/t/font_754425_sqk9koje0y.eot');
      src: url('//at.alicdn.com/t/font_754425_sqk9koje0y.eot?#iefix') format('embedded-opentype'),
      url('//at.alicdn.com/t/font_754425_sqk9koje0y.woff') format('woff'),
      url('//at.alicdn.com/t/font_754425_sqk9koje0y.ttf') format('truetype'),
      url('//at.alicdn.com/t/font_754425_sqk9koje0y.svg#iconfont') format('svg');
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


    section{
      background-image: url(/static/img/bg_team.png) ;
    }
    .reg_wrapp{
      width: 642px;
      height: 710px;
      background: transparent;
      margin: 0 auto;
      padding-top: 70px;
      padding-bottom: 150px;
    }
    .register{
      font-size: 20px;
      letter-spacing: 1px;
      color: #d3a359;
      text-align: center;
      padding-bottom: 10px;
    }
    .line{
      width: 85px;
      height: 2px;
      background-color: #d3a359;
      border-radius: 1px;
      margin: auto;
      margin-bottom: 90px;

    }
    .lab_wrapp{
      float: left;
      width: 135px;
    }
    .lab_wrapp p span {
      font-size: 14px;
      line-height: 60px;
      letter-spacing: 1px;
      color: #d3a359;
    }
    .lab_wrapp p {
      text-align: right;
      font-size: 14px;
      line-height: 60px;
      letter-spacing: 1px;
      color: #333333;
    }
    .input_wrapp{
      float: left;
      width: 500px;
    }
    .input{
      width: 400px;
      height: 41px;
      border-radius: 5px;
      border: solid 1px #cccccc;
      padding-left:16px ;
      margin: 9px 0 8px 20px;
    }
    .yzm{
      width: 222px;
      margin-right: 20px;
    }
    .focus{
      border: #D3A359 1px solid;
    }
    .yzm_btn{
      background-color: #d3a359;
      border-radius: 5px;
      border: solid 1px #d3a359;
      padding: 9px 38px;
      color: white ;
      font-size: 14px;
      cursor: pointer;
      line-height: 41px;
      letter-spacing: 1px;
    }
    .iconfont:hover{
      cursor: pointer;

    }
    .agree_wrapp{
      padding-top: 20px;
      padding-left: 20px;
    }
    .agree{
      color: #D3A359;
    }
    .agree_wrapp span{
      width: 351px;

      font-size: 14px;

      letter-spacing: 1px;
      color: #666666;
    }
    .agree_wrapp a{
      font-size: 14px;
      letter-spacing: 1px;
      color: #d3a359;
    }
    .register_btn{
      width: 320px;
      height: 50px;
      background-color: #d3a359;
      border-radius: 5px;
      border: solid 1px #d3a359;
      cursor: pointer;
      margin-left: 40px;
      color: white;
      font-size: 14px;
      margin-top: 70px;
    }
    .register_btn:active{
      position: relative;
      top: 1px;
      left: 1px;
    }
    .already {

      font-size: 14px;

      letter-spacing: 1px;
      color: #666666;
      padding-left: 180px;
      padding-top: 30px;
    }

    .already>a {

      text-decoration: underline;
      font-size: 14px;
      letter-spacing: 1px;
      color: #d3a359;
      cursor: pointer;
    }
    .progress{
      width: 642px;
      height: 90px;
      margin: 80px auto;
    }
    .progress>div{
      float: left;
    }
    .pd.first{
      margin-left: 60px;
    }
    .pd{
      width: 56px;
      height: 56px;
      background: #CCCCCC;
      border-radius: 28px;
      float: left;
      margin-left: 188px;
      position: relative;
    }
    .step_num{
      position: absolute;
      font-size: 18px;
      line-height: 60px;
      letter-spacing: 1px;
      color: #ffffff;
      top: -1px;
      left: 23px;
    }
    .step_num_last{
      position: absolute;
      font-size: 28px;
      line-height: 60px;
      letter-spacing: 1px;
      color: #ffffff;
      top: -1px;
      left: 16px;
      cursor:auto!important;
    }
    .pd-font1{
      margin-left: 55px;
    }
    .pd-font2{
      margin-left: 188px;
    }
    .pd-font3{
      margin-left: 203px;
    }
    .pdf>span{
      padding-top: 65px;
      display: block;
    }
    .step>.pd{
      background: #D3A359;
    }
    .progress_line{
      width: 200px;
      height: 2px;
      background-color: #cccccc;
      border-radius: 1px;
      position: absolute;
      top: 28px;
      left: 50px;
      z-index: -1;
    }
    .stf{
      color: #BBBBBB;
      font-size: 14px;
    }
    .stf.act{
      color: #D3A359;
    }
    .stepact{
      background: #D3A359;
    }
  </style>
</head>

<body>
<div class="header_line"></div>
<div class="header">
  <div class="header_up">
    <div class="header_up_left">
      <i class="iconfont" style="color: #ccc;">&#xe62c;</i>
      <span  style="color: #ccc;">Mon-Fri : 09:00-17:00</span>
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
  <nav class="header_nav">
    <img src="/static/img/logo.png" class="nav_logo"/>

    <div style="float: right; margin-top: 5px;">
      <button class="btn" onclick="window.location.href='/'">网站首页</button>
    </div>
  </nav>
</div>
<section >
  <div class="reg_wrapp">
    <p class="register">找回密码</p>
    <div class="line"></div>
    <div class="progress">
      <div class="step">
        <div class="pd first">
          <span class="step_num">1</span>
          <span class="progress_line"></span>
        </div>
        <div class="pd-font1 pdf"><span class="stf act">信息验证</span></div>
      </div>
      <div class="">
        <div class="pd">
          <span class="step_num">2</span>
          <span class="progress_line"></span>
        </div>
        <div class="pd-font2 pdf"><span class="stf">设置密码</span></div>
      </div>
      <div class="">
        <div class="pd">
          <i class="iconfont step_num_last">&#xe61c;</i>
        </div>
        <div class="pd-font3 pdf"><span class="stf">完成</span></div>
      </div>


    </div>
    <div class="lab_wrapp">
      <p><span>*</span>手机号码:</p>
      <p><span>*</span>验证码:</p>
    </div>
    <div class="input_wrapp">
      <form action="find_pwd2.html">
        <input class="input" required name="name" id="phone" placeholder="请输入手机号码" />
        <input class="yzm input" required name="yzm" id="yzm"  placeholder="请输入验证码" />
        <span class="yzm_btn">获取验证码</span>
        <input class="register_btn" value="下一步" type="button" />
      </form>
      <p class="already"><a href="/login/registerPage">去注册</a></p>
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
<script src="/static/js/main.js"></script>
<script type="text/javascript" src="/static/layer/layer.js"></script>
<script>
  var $s1 = $(".section1");
  var $agree = $("#agree");

  $('.input').focus(function(){
    $(this).addClass("focus")
  })
  $('.input').blur(function(){
    $(this).removeClass("focus")
  })
  $agree.on("click",function(){
    if ($agree.hasClass('agree')) {
      $agree.removeClass('agree')
    } else {
      $agree.addClass('agree')
    }
  })
  $(".register_btn").on("click",function(){
    var type = 2;
    var authCode = document.getElementById("yzm").value;
    var mobile = $("#phone").val();
    if(!(/^1[0-9][0-9]\d{8}$/.test(mobile))){
      layer.msg("不是正确的手机号");
      return;
    }
    if(authCode==''){
      layer.msg("请填写验证码");
      return;
    }
    $.ajax({
      type: "post",
      url: "/login/verificationCode",
      data:{"mobile": mobile,"type":type,"authCode":authCode},
      dataType: "json",
      success:function(res) {
        if(res.success == false){
          popTip(false,"提示",res.errMsg)
          return;
        }else{
//          window.location.href = 'find_pwd2.html?mobile='+mobile+'&authCode='+authCode;
          window.location.href = '/login/updatePwdPage2?mobile='+mobile+'&authCode='+authCode;
        }

      }
    });
  })
  var countdown = 60;
  var $yzm_btn = $(".yzm_btn");
  $yzm_btn.on("click",function(){
    if($yzm_btn.hasClass("disabled"))return;
    var mobile = $("#phone").val();
    if(!(/^1[1-9][0-9]\d{8}$/.test(mobile))){
      alert('不是有效的手机号码');
      return;
    }
    $.ajax({
      type: "post",
      url: "/login/sendCode",
      data:{"mobile": mobile,"type":2},
      dataType: "json",
      success:function(rs) {
        if(rs.success){
          settime();
          $yzm_btn.addClass("disabled");
        }else{
          alert('网络繁忙，请稍候重试')
        }
      }
    });

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

</script>
</html>
