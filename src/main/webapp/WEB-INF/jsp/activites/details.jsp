<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <title>活动报名-会员尊享-广和投资</title>
  <meta charset="UTF-8">
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <link rel="icon" href="/static/img/16_16 LOGO.png" type="image/x-icon">
  <!--[if lt IE 9]>
  <script src="/static/js/html5shiv.min.js"></script>
  <script src="/static/js/css3-mediaqueries.min.js"></script>
  <![endif]-->

  <link rel="stylesheet" type="text/css" href="/static/css/m_app.css"/>
  <!--<link rel="stylesheet" media="screen and (max-width:1400px)" href="css/app.css"/>-->
  <link href="/static/css/page.css" rel="stylesheet"/>
  <style>
    @font-face {
      font-family: 'iconfont';  /* project id 754425 */
      src: url('//at.alicdn.com/t/font_754425_7op35pmjyfn.eot');
      src: url('//at.alicdn.com/t/font_754425_7op35pmjyfn.eot?#iefix') format('embedded-opentype'),
      url('//at.alicdn.com/t/font_754425_7op35pmjyfn.woff') format('woff'),
      url('//at.alicdn.com/t/font_754425_7op35pmjyfn.ttf') format('truetype'),
      url('//at.alicdn.com/t/font_754425_7op35pmjyfn.svg#iconfont') format('svg');
    }
    .fl{
      float: left;
    }
    .enro{
      color: #333;
      line-height: 36px;
      font-size: 16px;
    }
    .pr10{
      padding-right: 10px;
    }
    .fd3{
      color: #D3A359;
    }
    .ac_btn{
      width: 125px;
      height: 42px;
      background-color: #d3a359;
      border-radius: 3px;
      color: #fff;
      font-size: 18px;
      margin-top: 10px;
    }
    .act_list_title{
      font-size: 22px;
      line-height: 36px;
      color: #222222;
      padding-bottom: 35px;
    }
    .act_form_label{
      width: 500;
      text-align: left;
      font-size: 18px;
      color: #222;
      line-height: 36px;
    }
    .req:after{
      color: #fd1f24;
      content: "*";
    }
    .act_form_input{
      width: 483px;
      height: 40px;
      padding-left: 10px;
    }
    .one_form_wp{
      height: 115px;width: 500px;
    }
    .pdl100{
      padding-left: 100px;
    }
    .act_form_submit{
      width: 287px;
      height: 42px;
      background-color: #d3a359;
      color: #fff;
      font-size: 18px;
    }
    .act_form_cancel{
      width: 115px;
      height: 42px;
      border-radius: 3px;
      border: solid 1px #d9d9d9;
      color: #666;
      font-size: 18px;
      margin-left: 20px;
    }
    .sec{
      padding: 50px 0;width: 1178px;margin: auto;
    }
    .container{
      width: 100%;background: white;
    }
    .act_img{
      width: 470px;height: 280px;
    }
    .right_content{
      width: 600px; padding-left:25px ;
    }
    .act_title_1{
      color: #222;line-height: 36px;font-size: 24px;padding-bottom: 10px;min-height: 70px;
    }
    .dis_none{
      display: none;
    }
    .act_form_wp{
      padding:25px 0;
    }
    .header.news {
      background: #4F4F4F;
      height: 450px;
      background: url(/static/img/vip_bg1.png) no-repeat center center!important ;
    }
  </style>
</head>

<body>
<div class="header_line"></div>
<div class="header news news_bg">
  <jsp:include page="../nav/header_nav.jsp"></jsp:include>

</div>





<div class="news_bn">
  <div class="wrapp">
    <span class="bread"><a href="/">首页</a> > <a href="/activites/huiyuanzunxiang">会员尊享</a> > 会员活动</span>
    <a name="gsjs"></a>
    <div class="bread_btn_wrapp">
      <button class="bread_btn bread_btn_active" onclick="window.location.href='/activites/page'">会员活动</button>
      <button class="bread_btn" onclick="window.location.href='/MallHome/list'">和悦商城</button>

    </div>
  </div>
</div>

<div class="container">
  <section class="sec" >
    <img class="fl act_img" id="act_img">
    <div class="fl right_content">
      <p class="act_title_1" id="c1"></p>
      <p class="enro"><i class="iconfont pr10">&#xe670;</i><span>价格：</span><span class="fd3" id="c2"></span></p>
      <p class="enro"><i class="iconfont pr10">&#xe62c;</i><span>活动时间：</span><span id="c3"></span></p>
      <p class="enro"><i class="iconfont pr10">&#xe60b;</i><span>所属地区：</span><span id="c4"></span></p>
      <p class="enro">
        <i class="iconfont pr10">&#xe604;</i>
        <span>报名人数：</span>
        <select id="personNum">
          <option value="1">1人报名</option>
          <option value="2">2人报名</option>
          <option value="3">3人报名</option>
          <option value="4">4人报名</option>
          <option value="5">大于4人</option>
        </select>
      </p>
      <button class="ac_btn" onclick="act_switch();">预约报名</button>
    </div>
    <div style="clear: both;"></div>
    <div class="act_form_wp dis_none">
      <p class="act_list_title">请填写报名表单</p>
      <div class="form_wp">
        <div class="fl one_form_wp">
          <p class="req act_form_label" >姓名</p>
          <input class="act_form_input" id="name" type="text" placeholder="请输入您的姓名"/>
        </div>
        <div class="fl one_form_wp pdl100">
          <p class="req act_form_label" >联系方式</p>
          <input class="act_form_input" id="phone" type="text" placeholder="请输入您的联系方式"/>
        </div>
        <div class="fl one_form_wp ">
          <p class=" act_form_label" >公司名称</p>
          <input class="act_form_input" id="corporateName" type="text" placeholder="请输入您的公司名称"/>
        </div>
        <div class="fl one_form_wp pdl100">
          <p class=" act_form_label" >公司职务</p>
          <input class="act_form_input" id="companyPosition" type="text" placeholder="请输入您的公司职务"/>
        </div>
        <div style="clear: both;"></div>
        <div>
          <button class="act_form_submit" onclick="act_load();">提交</button>
          <button class="act_form_cancel" onclick="act_switch();">取消</button>
        </div>
      </div>
    </div>
    <div style="padding:30px 0;" id="content"></div>
  </section>

</div>









<jsp:include page="../footer/footer.jsp"></jsp:include>
</body>
<script src="/static/js/jquery-2.2.0.min.js"></script>
<script src="/static/js/main.js"></script>
<script src="/static/layer/layer.js"></script>
<script>
  function act_switch(){
    //报名切换
    if($(".act_form_wp").hasClass("dis_none")){
      $(".act_form_wp").removeClass("dis_none");
    }else{
      $(".act_form_wp").addClass("dis_none");
    }
  }
  function act_load(){
    var name = document.getElementById("name").value,
            phone = document.getElementById("phone").value,
            corporateName = document.getElementById("corporateName").value,
            companyPosition = document.getElementById("companyPosition").value,
            personNum = document.getElementById("personNum").value;

    if(name==""||phone==""){
      alert("缺少必填项");
      return;
    }
    if(!(/^1[1-9][0-9]\d{8}$/.test(phone))){
      alert("不是完整的11位手机号或者正确的手机号");
      return;
    }
    $.ajax({
      url: "/activites/add",
      type: "post",
      data:{name:name,phone:phone
        ,corporateName:corporateName,
        companyPosition:companyPosition,
        membershipActivitesId:getUrlParms("id"),
        personNum:personNum},
      dataType: "json",
      success: function(rs) {
        if(rs.success){
          popTip(true,"活动预约成功","稍后工作人员会与您联系请耐心等待");
        }else{
          popTip(false,"提示",rs.errMsg);
        }
      }
    });

    //活动提交

  }
  $.ajax({
    url: "/activites/details?id=" + getUrlParms("id"),
    type: "post",
    dataType: "json",
    success: function(rs) {
      if(!rs.success && rs.errCode == '0010007') window.location.href = "/login/loginPage"
      var datas = rs.data.data;
      render(datas,rs.data.Url);
    }
  });
  function render(r,u){
    document.getElementById("c1").textContent = r.title;
    document.getElementById("c2").textContent = r.price+'积分';
    document.getElementById("c3").textContent = fmtDate(r.activitieTime.time);
    document.getElementById("c4").textContent = r.local;
    document.getElementById("content").innerHTML = r.content;
    document.getElementById("act_img").setAttribute("src",u+r.imgUrl);
  }
</script>
</html>
