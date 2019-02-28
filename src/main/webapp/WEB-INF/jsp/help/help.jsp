<%--
  Created by IntelliJ IDEA.
  User: yxw
  Date: 2018/9/10
  Time: 0:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>帮助中心-广和投资</title>
  <link rel="icon" href="/static/img/16_16 LOGO.png" type="image/x-icon">

  <meta charset="UTF-8">
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <!--[if lt IE 9]>
  <script src="/static/js/html5shiv.min.js"></script>
  <script src="/static/js/css3-mediaqueries.min.js"></script>
  <![endif]-->
  <link rel="stylesheet" type="text/css" href="/static/css/m_app.css"/>
  <!--<link rel="stylesheet" media="screen and (max-width:1400px)" href="css/app.css"/>-->
  <link rel="stylesheet" type="text/css" href="/static/css/slick-theme.css" />
  <link rel="stylesheet" type="text/css" href="/static/css/slick.css" />
  <style>


    .btn:hover{
      border: #D3A359 1px solid;
      color: #D3A359;
    }
    .iconfont:hover{
      color: #D3A359;
    }
    @font-face {
      font-family: 'iconfont';  /* project id 754425 */
      src: url('//at.alicdn.com/t/font_754425_sggjnxu4oii.eot');
      src: url('//at.alicdn.com/t/font_754425_sggjnxu4oii.eot?#iefix') format('embedded-opentype'),
      url('//at.alicdn.com/t/font_754425_sggjnxu4oii.woff') format('woff'),
      url('//at.alicdn.com/t/font_754425_sggjnxu4oii.ttf') format('truetype'),
      url('//at.alicdn.com/t/font_754425_sggjnxu4oii.svg#iconfont') format('svg');
    }
    .vedio_icon{
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%,-50%);
      font-size: 80px;
      color: white;
      cursor: pointer;
    }
    .footer_bottom p {
      color: #FFFFFF;
      font-size: 12px;
    }
    .footer_bottom_right {
      float: right;
      margin-top: 5px;
    }
    .club_btn:hover{
      background: #D3A359;
      color: white;
    }
    .club_btn:active{
      position: relative;
      top: 1px;
      left: 1px;
    }
    .shadow{
      box-shadow:0 0 10px rgba(78, 113, 184, .2)inset;
    }
    .news_right_p:hover{
      color: #D3A359;
    }
    .news_left_p:hover{
      color: #D3A359;
    }
    .midd_wrapp{
      padding-top: 0px;
      height:576px;
      padding: 0;
    }
    .midd{
      padding-top: 80px;
      background-image: url(/static/img/lunbo_bg.gif);
      background-size: cover;
    }
    .swiper-father{
      height: 520px;
    }
    .midd_div_content{
      height: 189px;
      overflow: hidden;
    }

    button {
      background-color: transparent;
      color: white;
      padding: 8px 10px;
      border-radius: 2px;
      border: white 1px solid;
      cursor: pointer;
    }
    .btn:active{
      position: relative;
      top: 1px;
      left: 1px;
    }



    .nav_a{
      display: block;
      margin: 8px 25px;
      padding: 0 0 10px 0;
      color: #333;
      font-size: 16px;
    }
    .partner ul {
      width: 1170px;
      height: 120px;
      margin: 0 auto;
      padding: 1px 0;
      border: 1px solid #eee;
    }
    .partner div ul li {
      width: 234px!important;
      height: 119px;
    }
    .friend_img{
      border-left: 1px solid #eee;
    }

    .nav_logo {
      width: 155px;
      height: 45px;
      float: left;
      margin-right: 65px;
      margin-top: 0px;
    }
    /*				9月1改动*/
    .club_left_wrapp1 {
      padding: 42px 105px 55px 45px;
      height: 292px;
      position: relative;
    }
    .club_right_wrapp2 {
      padding: 9px 18px 26px 11px;
      margin-top: 387px;
    }
    .club_btn_wrapp {
      width: 500px;
      padding: 30px 0px 42px 25px;
      position: absolute;
      top: 20px;
      right: -414px;
    }
    .club_desc{
      width: 1031px;
      height:200px ;
      margin-top: 59px;
      margin-left: 30px;
      text-align: center;
      line-height: 30px;
      color:rgb(127,127,127)
    }
    .line7 {
      position: relative;
      top: 45px;
      height: 1px;
      width: 100%;
      background: #616161;
    }

    .circle {
      height: 46px;
      width: 28px;
      border: 1px solid #D3A359;
      text-align: center;
      border-radius: 45%;
      cursor: pointer;
      position: relative;
    }
    .point{
      width: 5px;
      height: 5px;
      background: #D3A359;
      border-radius: 5px;
      position: absolute;
      top: 10px;
      left: 11px;
    }
    .main_btn_wrap{
      width: 30px;
      height: 48px;
      margin: 0 auto;
      position: absolute;
      left: 48%;
      bottom: 20px;
    }
    .wxgzh{
      position:relative;
    }
    .wxgzh:hover .wximg{
      display: block;
    }
    .wximg{
      display: none;position: absolute;width: 180px;height: 260px;left: -83px;top: 25px;z-index:999;
    }
    .white_btn{
      padding: 8px 10px;background: #D3A359;border-radius: 2px;color: white;
    }
    .no_white_btn{
      padding: 8px 10px;border: #D3A359 1px solid;border-radius: 2px;color: #D3A359;
    }
    .dis_none{
      display: none;
    }
    .header {
      height: 120px;
      color: white;
      font-size: 10px;
      padding-top: 4px;
      margin-bottom: 10px;

    }

    * {
      margin: 0;
      padding: 0;
      font-family: "Microsoft YaHei","\5fae\8f6f\96c5\9ed1"!important;
    }
    .sub_ul>a {
      color: #444444;
      line-height: 50px;
      border-bottom: 1px solid #eee;
      padding-left: 0px;
      margin: 0 20px;
    }
    .header {
      box-shadow: 0px 5px 10px #EEEEEE;
    }
    .news_bn {
      height: 60px;
      background-color: #fdfdfd;
    }
    .bread {
      font-family: PingFang-SC-Bold;
      font-size: 14px;
      line-height: 55px;
      letter-spacing: 0px;
      color: #333;
    }
    .tit_p{
      font-size: 20px;
      color: #333;
      padding-bottom: 15px;
      padding-top: 40px;
    }
    .container{
      background: url(/static/img/bg_team.png) no-repeat bottom center;
      background-color: rgb(252,252,252);
      min-height: 800px;
    }
    .content_p{
      width: 258px;
      height: 54px;
      color: #333;
      font-size: 16px;
      line-height: 54px;
      border-bottom: #e6e6e6 1px solid;
      cursor: pointer;
    }
    .content_p:before{
      content: "\2022";
      padding: 20px;
      color: #DCB57A;
    }
    .content_p.act:before{
      content: "\2022";
      padding: 20px;
      color: #fff;
    }
    .content_p.act{
      width: 258px;
      height: 54px;
      background: #DCB57A;
      color: #fff;
      font-size: 16px;
      line-height: 54px;
    }
    .c_p_title{
      font-size: 18px;
      line-height: 60px;
      letter-spacing: 1px;
      color: #333333;
      text-align: center;
      font-weight: bold;
    }
    .c_p_t1{
      font-size: 16px;
      line-height: 36px;
      letter-spacing: 1px;
      color: #333333;
      font-weight: bold;
    }
    .c_p_t2{
      font-size: 14px;
      line-height: 36px;
      letter-spacing: 1px;
      color: #333333;
      text-indent: 30px;
    }
    .item_wp{
      display: inline-block;width: 870px;padding: 0 0 0 50px;vertical-align: top;
    }
    .item{
      padding-bottom: 50px;
    }
  </style>
</head>

<body>
<div class="header_line"></div>
<div class="header">

<jsp:include page="../nav/header_nav.jsp"></jsp:include>
</div>
<section class="news_bn">
  <div class="wrapp">
    <span class="bread">帮助中心 > <span id="bread">新手必读</span></span>
  </div>
</section>
<section class="container">
  <div style="width: 1200px;margin: auto;">


    <div style="display: inline-block;width: 260px;">
      <p class="tit_p">常见问题</p>
      <p class="content_p act" data-id="0">新手必读</p>
      <p class="content_p" data-id="1">注册登录</p>
      <p class="content_p" data-id="2">和悦俱乐部</p>
      <p class="content_p" data-id="3">密码设置</p>
      <p class="content_p" data-id="4">预约指引</p>
      <p class="tit_p">版权声明</p>
      <p class="content_p" data-id="5">版权声明</p>
      <p class="tit_p">联系我们</p>
      <p class="content_p" data-id="6">联系我们</p>
    </div>
    <div class="item_wp">
      <div class="item ">
        <p class="c_p_title">新手必读</p>
        <p class="c_p_t1">1．为什么选择广和投资？</p>
        <p class="c_p_t2">广和投资有限公司是专业的资产和财富管理公司，成立于2006年11月，注册资本9990万元。公司管理团队成员由资深的投资、理财规划人员组成，对于财富管理有着深刻的理解和广泛的实践，能够准确掌握客户的投资需求，量身定制财富配置方案。公司在基金业协会备案号P1007660。 </p>
        <p class="c_p_t2">广和投资财富与资产管理立足于为机构及个人投资者提供优质的资产配置方案，提高其闲置资金的流动性和收益性,主要有三方面内容:</p>
        <p class="c_p_t2">（一）与银行、券商等大型金融机构及优质资产管理企业合作，引进和共同研发基金产品；</p>
        <p class="c_p_t2">（二）以公司自有投资业务为基础研发基金产品；</p>
        <p class="c_p_t2">（三）为高端客户提供资产配置增值服务,成为财税规划、保险代理以及海外资产配置等方案的提供者。</p>
        <p class="c_p_t2">截至2017年底，广和投资实现管理资产规模累计110亿，服务于7,000个高净值家庭累计配置资产。</p>
        <p class="c_p_t2">    集团旗下多种金融业务公司、持牌公司的存在，为广和投资项目储备、业务多样化奠定了坚实的基础。 </p>
        <p class="c_p_t1">2．广和投资提供什么样的理财项目？</p>
        <p class="c_p_t2">广和投资致力于为广大高净值客户提供专业的财富管理服务，包含互联网金融、私募基金投资、财富与资产管理等板块，同时开展银行间合作、商业保理、融资租赁等业务，为企业提供投融资顾问、收购兼并、产业整合、海内外上市等金融服务。</p>
        <p class="c_p_t1">3．如何控制广和投资平台上理财产品的投资风险？</p>
        <p class="c_p_t2">广和投资从项目选择、投资决策、投资前期以及投资后运行全过程的风险管控，力求以最大程度降低风险发生概率。</p>
      </div>
      <div class="item dis_none">
        <p class="c_p_title">注册登录</p>
        <p class="c_p_t1">1．如何进行注册登录？</p>
        <p class="c_p_t2">（1）打开广和投资网站，在首页右上角点击【注册】；</p>
        <p class="c_p_t2">（2）输入手机号码、图文验证码和手机验证码，设置并确认登录密码，填写推荐私享顾问工号（也可不填），阅读并勾选“我已经阅读并同意《网络服务协议》《合格投资者承诺》”，点击【注册】；</p>
        <p class="c_p_t2">（3）打开广和投资网站，在首页右上角点击【登录】；</p>
        <p class="c_p_t2">（4）输入手机号码和密码，点击【登录】。</p>
        <p class="c_p_t1">2．为什么要用手机号注册？</p>
        <p class="c_p_t2">（1）您的手机号码具有唯一性，便于识别和记忆；</p>
        <p class="c_p_t2">（2）更换密码、异常登录等重要操作信息，可以通过手机来通知您，提高安全性；</p>
        <p class="c_p_t2">（3）方便与您保持联系，以便推送重要信息。</p>
        <p class="c_p_t1">3．手机号注册时，显示此手机号码已经注册，怎么办？</p>
        <p class="c_p_t2">如您之前注册过忘记了密码，可以点击登录下方【忘记密码】填写账户信息进行找回，填写时请您准确核对自己的手机号码。</p>
        <p class="c_p_t1">4．用手机号码注册时，显示手机号码格式有误，怎么办？</p>
        <p class="c_p_t2">可能是您的输入法调整到了中文输入法，需要您切换为英文输入法，然后再输入11位手机号码。</p>
        <p class="c_p_t1">5．手机收不到验证码怎么办？</p>
        <p class="c_p_t2">（1）可能是您安装了拦截软件，需要您去拦截信息中查看，并设置白名单；</p>
        <p class="c_p_t2">（2）可能是您曾经收到骚扰短信，回复了退订，通讯公司便认为您不需要再接收此类短信，将其列入到黑名单中。需要您拨打通讯公司客服电话，申请移除黑名单；</p>
        <p class="c_p_t2">（3）您也可以通过语音验证码的方式获取验证码。</p>
        <p class="c_p_t1">6．为什么会登录失败？</p>
        <p class="c_p_t2">请您核对以下两点：</p>
        <p class="c_p_t2">（1）输入的手机号码是否正确；</p>
        <p class="c_p_t2">（2）输入的密码是否正确（区分大小写）。如果忘记密码或者当天内同一手机号码连续输错5次密码，提示“账号锁定，请找回重置密码”，您可以点击“忘记密码”进行重置后登录。</p>
      </div>
      <div class="item dis_none">
        <p class="c_p_title">和悦俱乐部</p>
        <p class="c_p_t1">1．怎么定义和悦会员？</p>
        <p class="c_p_t2">和悦——广和投资高净值客户私享俱乐部</p>
        <p class="c_p_t2">和悦是广和投资旗下面向高净值客户集财富管理、客户服务、增值服务、会员管理系统、媒介于一身的品质服务生态圈。致力于为高净值客户的财富提供保障，为客户的生活提供全方位的品质服务。</p>
        <p class="c_p_t2">和悦会员定义：符合和悦俱乐部会员入会标准，已在广和投资完成注册认证的合格投资者或法人。</p>
        <p class="c_p_t1">2．和悦俱乐部入会标准是什么？</p>
        <p class="c_p_t2">个人会员：年满 18 周岁以上，具备风险识别能力和风险承担能力的自然人；</p>
        <p class="c_p_t2">机构会员：具有独立法人资格的企事业单位或机构。</p>
        <p class="c_p_t1">3．和悦俱乐部入会方式有哪些？</p>
        <p class="c_p_t2">登录广和投资线上金融服务平台 — — 广和投资官网（www.guanghetouzi.com）、广和微信公众账号，以上任何平台注册成功即可成为和悦会员。</p>
        <p class="c_p_t1">4．会员注册需要哪些材料？</p>
        <p class="c_p_t2">（1）个人会员：本人有效手机号码</p>
        <p class="c_p_t2">                      有效身份证件和银行卡</p>
        <p class="c_p_t2">（2）机构会员：《营业执照》副本（盖公章）</p>
        <p class="c_p_t2">                      《机构开户申请表》（盖公章）</p>
        <p class="c_p_t2">                       风险调查问卷（盖公章）</p>
        <p class="c_p_t2">                       授权经办人证件正反面复印件（盖公章）</p>
        <p class="c_p_t2">说明：个人会员可通过广和投资官网、广和微信公众号完成认证过程；机构会员由广和投资私享顾问协助完成。</p>
        <p class="c_p_t1">5．会员如何查询及兑换积分？</p>
        <p class="c_p_t2">积分兑换</p>
        <p class="c_p_t2">（1）客户可单笔兑换，也可累计积分兑换。</p>
        <p class="c_p_t2">（2）资金在账的会员每兑换一次，所用积分自动减除，剩余积分自动累计，资金已出账的客户，剩余积分，年底自动清零，以上所有积分在本年度年底自动清零。</p>
        <p class="c_p_t2">（3）积分不可用于兑换现金，仅限参加广和指定兑换物品或其他积分活动。</p>
        <p class="c_p_t2">（4）不同会员卡内积分不可相互累计使用。</p>
        <p class="c_p_t2">会员卡内积分详情查询</p>
        <p class="c_p_t2">（1）现场查询</p>
        <p class="c_p_t2">会员以及贵宾可在和悦会员服务中心查询积分详情</p>
        <p class="c_p_t2">（2）网络查询</p>
        <p class="c_p_t2">会员以及贵宾可登陆广和官网 或广和服务号系统直接查询消费与明细。</p>
        <p class="c_p_t2">（3）电话查询</p>
        <p class="c_p_t2">会员以及贵宾可致电广和全国统一客服及预订电话查询消费与明细。</p>
        <p class="c_p_t2">以上积分明细记录自交易之日起保存两年，逾期不再提供查询服务。</p>
        <p class="c_p_t2">（4）以上积分明细记录自交易之日起保存两年，逾期不再提供查询服务。</p>
      </div>

      <div class="item dis_none">
        <p class="c_p_title">密码设置</p>
        <p class="c_p_t1">1．如何设置登录密码？</p>
        <p class="c_p_t2">为了您的账户安全，密码必须包含数字和英文字母（区分大小写），至少包含2个字母，2个数字。至少6位字符，不超过12位字符。</p>
        <p class="c_p_t1">2．如何修改登录密码？</p>
        <p class="c_p_t2">（1）点击【我的账户-账户管理】，在登录密码处，点击【立即修改】；</p>
        <p class="c_p_t2">（2）输入原登录密码，设置并确认新登录密码，点击【提交】；</p>
        <p class="c_p_t2">（3）登录密码修改成功。</p>
      </div>
      <div class="item dis_none">
        <p class="c_p_title">预约指引</p>
        <p class="c_p_t1">1．预约条件</p>
        <p class="c_p_t2">请您按照以下步骤进行操作：</p>
        <p class="c_p_t2">注册－实名认证－风险测评－合格投资者认证(私募基金）－投资者分类（公募基金、私募基金）</p>
        <p class="c_p_t1">2. 预约流程</p>
        <p class="c_p_t2">（1）完成预约条件，点击【登录】，输入用户名和密码；</p>
        <p class="c_p_t2">（2）点击【财富管理-高端财富管理/公募理财】；</p>
        <p class="c_p_t2">（3）选择产品，点击【立即预约】；</p>
        <p class="c_p_t2">（4）在产品预约页面，输入预约金额（递增为整数），查看并勾选“我已经阅读《风险提示书》”，点击【我要预约】；</p>
        <p class="c_p_t2">（5）确认预约信息，点击【提交】；</p>
        <p class="c_p_t2">（6）预约成功。</p>
        <p class="c_p_t1">3. 网银转账</p>
        <p class="c_p_t2">您可以通过“网银”转账或线下汇款方式将认购或申购资金转账到项目指定的募集账户。</p>
      </div>
      <div class="item dis_none">
        <p class="c_p_title">版权声明</p>
        <p class="c_p_t1">法律声明的接受</p>
        <p class="c_p_t2">本网站根据以下法律声明为您提供服务。该等法律声明可由本网站随时更新，且毋须另行通知。本网站法律声明(以下简称本“法律声明”)一旦发生变动, 本网站将在网页上公布修改内容。修改后的法律声明一旦在网页上公布即有效代替原来的法律声明。您可随时访问http://www.guanghetouzi.com查阅最新版法律声明。</p>
        <p class="c_p_t2">您在使用本网站提供的各项服务（以下可简称“服务”或“本服务”）之前，应仔细阅读本法律声明。如您不同意本法律声明及/或随时对其的修改，您可以主动取消本网站提供的服务；您一旦使用本网站服务，即视为您已了解并完全同意本法律声明的各项内容，包括本网站对法律声明随时所做的任何修改，并成为本网站用户（以下简称“用户”）。</p>
        <p class="c_p_t1">服务之修改</p>
        <p class="c_p_t2">本网站有权于任何时间暂时或永久修改或终止服务（或其任何部分），而无论其通知与否。您同意对于本网站对于服务（或其任何部分）所作的任何修改、暂停或终止，本网站对您和任何第三人均无需承担任何责任。</p>
        <p class="c_p_t1">用户隐私制度</p>
        <p class="c_p_t2">除以下情形外，本网站不会将您的个人识别信息透露给任何人:</p>
        <p class="c_p_t2">a.您同意让第三方共享资料；</p>
        <p class="c_p_t2">b.只有透露您的个人资料，才能提供您所要求的产品和服务；</p>
        <p class="c_p_t2">c.我们需要向代表我们提供产品或服务的公司提供资料（除非我们另行通知您，否则这些公司无权使用您的身份识别资料）；</p>
        <p class="c_p_t2">d.我们需要遵守法律法规等相关规定、司法或行政等相关部门的要求；</p>
        <p class="c_p_t2">e.我们发现您违反了法律声明。</p>
        <p class="c_p_t1">免责条款</p>
        <p class="c_p_t2">您明确了解并同意∶</p>
        <p class="c_p_t2">您使用服务之风险由您个人负担。本网站或广和投资或相关法律主体对服务不提供任何明示或默示的担保或保证，包含但不限于商业适售性、特定目的之适用性及未侵害他人权利等担保或保证。</p>
        <p class="c_p_t2">本网站所载的信息可能包含通过各种公开和非公开渠道所获取的部分，本网站并不保证其内容的真实性、准确性、完整性、实时性或正确性，也不代表广和投资对该内容的赞同，广和投资对此不负任何法律责任。</p>
        <p class="c_p_t2">本网站信息中署名或来源为"广和投资"的文章，以及图片和音视频等资料，版权均属于广和投资。本网站所载任何内容均不得下载、复制或转载，否则广和投资或其相关法律主体将追究相关法律责任。</p>
        <p class="c_p_t2">本网站不保证以下事项∶</p>
        <p class="c_p_t2">a. 服务将符合您的要求；</p>
        <p class="c_p_t2">b. 服务将不受干扰、及时提供、安全可靠或不会出错；</p>
        <p class="c_p_t2">c. 使用服务取得之结果正确可靠；</p>
        <p class="c_p_t2">d. 您经由服务购买或取得之任何产品、服务、资讯或其它信息的可靠性将符合您的期望；</p>
        <p class="c_p_t2">e. 软件中任何错误都将得到更正。</p>
        <p class="c_p_t2">除本法律声明已声明不得下载的内容外，是否使用服务下载或取得任何资料应由您自行考虑且自负风险，因任何资料之下载而导致的您电脑系统之任何损坏或数据流失等后果，由您自行承担。</p>
        <p class="c_p_t2">您自本网站或经由服务取得的任何建议或信息，无论是书面或口头形式，除非法律声明有明确规定，将不构成本法律声明以外之任何保证。</p>
        <p class="c_p_t1">责任限制</p>
        <p class="c_p_t2">您明确了解并同意，基于以下原因而造成的，包括但不限于利润、信誉、应用、数据损失或其它无形损失，本网站或广和投资或相关法律主体均不承担任何直接、间接、附带、特别、衍生性或惩罚性赔偿责任（即使本网站事先已被告知发生此种赔偿之可能性亦然）：</p>
        <p class="c_p_t2">a.本服务之使用或无法使用；</p>
        <p class="c_p_t2">b.为替换从或通过本服务购买或取得之任何商品、数据、信息、服务，收到的讯息，或缔结之交易而发生的成本；</p>
        <p class="c_p_t2">c.您的传输或数据遭到未获授权的存取或变造；</p>
        <p class="c_p_t2">d.任何第三方在本服务中所作之声明或行为；</p>
        <p class="c_p_t2">e.与本服务相关的其它事宜，但本法律声明有明确规定的除外；</p>
        <p class="c_p_t2">f.第三方以任何方式发布或投递欺诈性信息，或诱导用户受到经济损失，本网站或广和投资或其相关法律主体均不承担任何责任。</p>
        <p class="c_p_t1">与金融相关服务之特别警告</p>
        <p class="c_p_t2">若您希望就公司商情、股票报价、投资或证券等设立或接受任何服务，或从本服务接收或请求本服务提供任何消息、信息、警示或其它信息，请再度详阅前文的“免责条款”和“责任限制”。这两条对您尤其适用。对于此类信息，“投资人应自行提高警觉”。本服务旨在提供相关信息而已，本服务提供之内容并非供交易或投资目的而使用或依赖。对于经由本服务传送之任何信息之准确性、适用性和可获得与否，本网站及其授权方、广和投资及其相关法律主体均无须承担任何责任。基于前述信息而作的任何交易或投资决定，由您自行承担全部后果和责任。</p>
        <p class="c_p_t1">信息的储存及限制</p>
        <p class="c_p_t2">您承认关于本服务的使用本网站有权制订一般措施及限制，包含但不限于本服务所张贴内容或其它上载内容之最长期间、本网站服务器为您分配的最大磁盘空间，以及一定期间内您使用本服务之次数上限（及每次使用时间之上限）。通过本服务存储或传送之任何信息、通讯资料和其它内容，如被删除或未予储存，您同意本网站毋须承担任何责任。您亦同意，长时间未使用的帐号，本网站有权关闭。您也同意，本网站有权依其自行之考虑，不论通知与否，随时变更这些一般措施及限制。</p>
        <p class="c_p_t1">用户管理</p>
        <p class="c_p_t2">用户应同意将不会利用本服务进行任何违法或不正当的活动，包括但不限于下列行为∶</p>
        <p class="c_p_t2">上载、张贴或以其它方式传送含有下列内容之一的信息：</p>
        <p class="c_p_t2">a. 反对宪法所确定的基本原则的；</p>
        <p class="c_p_t2">b. 危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；</p>
        <p class="c_p_t2">c. 损害国家荣誉和利益的；</p>
        <p class="c_p_t2">d. 煽动民族仇恨、民族歧视、破坏民族团结的；</p>
        <p class="c_p_t2">e. 破坏国家宗教政策，宣扬邪教和封建迷信的；</p>
        <p class="c_p_t2">f. 散布谣言，扰乱社会秩序，破坏社会稳定的；</p>
        <p class="c_p_t2">g. 散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的；</p>
        <p class="c_p_t2">h. 侮辱或者诽谤他人，侵害他人合法权利的；</p>
        <p class="c_p_t2">i. 含有虚假、诈骗、有害、胁迫、侵害他人隐私、骚扰、侵害、中伤、粗俗、猥亵、或其它道德上令人反感的内容；</p>
        <p class="c_p_t2">j. 含有中国法律、法规、规章、条例以及任何具有法律效力之规范所限制或禁止的其它内容。</p>
        <p class="c_p_t2"> 以任何方式危害未成年人的利益；冒充任何人或机构，包含但不限于本网站主管、论坛管理人员，或以虚伪不实的方式陈述或谎称与任何人或机构有关；伪造标题或以其它方式操控识别资料，以伪造经由本服务传送之任何内容之来源；将依据任何法律或合约或法定关系（例如由于雇佣关系和依据保密合约所得知或揭露之内部资料、专属及机密资料）知悉但无权传送之任何内容加以上载、张贴、发送电子邮件或以其它方式传送；</p>
        <p class="c_p_t2"> 将侵害他人著作权、专利权、商标权、商业秘密、或其它专属权利（以下简称“专属权利”）之内容加以上载、张贴、发送电子邮件或以其它方式传送；将任何广告信函、促销资料、“垃圾邮件”、“滥发信件"、“连锁信件”、“直销”或其它任何形式的劝诱资料加以上载、张贴、发送电子邮件或以其它方式传送，惟专供前述目的使用之区域，按照有关适用指引或规则进行的行为不在此限；</p>
        <p class="c_p_t2">将设计目的在于干扰、破坏或限制任何计算机软件、硬件或通讯设备功能之计算机病毒（包括但不限于木马程序(trojan horses)、蠕虫(worms)、定时炸弹、删除蝇(cancelbots)（以下简称“病毒”）或其它计算机代码、档案和程序之任何资料，加以上载、张贴、发送电子邮件或以其它方式传送；</p>
        <p class="c_p_t2">破坏正常的对话流程、造成荧屏快速移动，或使本服务其它用户无法输入，或对其它用户参加即时交流的能力产生负面影响；</p>
        <p class="c_p_t2">干扰或破坏本服务或与本服务相连线之服务器和网络，或违反任何关于本服务连线网络之规定、程序、政策或规范；</p>
        <p class="c_p_t2">跟踪或以其它方式骚扰他人；</p>
        <p class="c_p_t2">故意或非故意地违反任何适用的当地、国家和国际法律，包括但不限于香港联合交易所、上海或深圳交易所颁布的规则或法规或任何国家的或其它证券交易所的任何规则包括但不限于纽约证券交易所、美国证券交易所NASDAQ，以及任何具有法律效力的规则；</p>
        <p class="c_p_t2">未经合法授权而截获、篡改、收集、储存或删除他人个人信息、电子邮件或其它数据资料，或将获知的此类资料用于任何非法或不正当目的。</p>
        <p class="c_p_t2">您已认可本网站未对您可能上传的内容加以任何事先审查，对用户的使用行为也无法进行全面控制，您使用任何内容时，包括依赖前述内容之正确性、完整性或实用性时，您同意将自行加以判断并承担所有风险，而不依赖于本网站。但本网站及其指定人有权（但无义务）依其自行之考虑，拒绝和删除可经由本服务提供之违反本条款的或其它引起本网站反感的任何内容。您了解并同意，本网站依据法律法规的要求，或基于诚信为了以下目的或在合理必要范围内，认定必须将内容加以保存或揭露时，得加以保存或揭露：</p>
        <p class="c_p_t2">a.遵守法律程序；</p>
        <p class="c_p_t2">b.执行本法律声明；</p>
        <p class="c_p_t2">c.回应任何第三人提出的权利主张；</p>
        <p class="c_p_t2">d.保护本网站、其用户及公众之权利、财产或个人安全；</p>
        <p class="c_p_t2">e.其它本网站认为有必要的情况。</p>
        <p class="c_p_t2">您了解并同意经由本服务之技术处理及传送，您提供的任何内容，可能</p>
        <p class="c_p_t2">a.经由各个网路加以传送；</p>
        <p class="c_p_t2">b.为了符合及配合连线网路或装置之技术要求而进行改变。</p>
        <p class="c_p_t1">保障</p>
        <p class="c_p_t2">由于您通过本服务提供、张贴或传送之内容、您与本服务连线、您违反本法律声明、或您侵害他人任何权利因而衍生或导致任何第三人提出任何索赔或请求，包括合理的律师费，您同意赔偿本网站、广和投资相关法律主体及其子公司、关联企业、高级职员、代理人、品牌共有人或其它合作伙伴及员工，并使其免受损害。</p>
        <p class="c_p_t1">终止服务</p>
        <p class="c_p_t2">您同意本网站得基于其自行之考虑，因任何理由，或本网站认为您已经违反本法律声明的文字及精神，终止您的密码、帐号或服务之使用（或服务之任何部分），并将您在服务内任何内容加以移除并删除。本网站亦得依其自行之考虑，于通知或未通知之情形下，随时终止服务或其任何部分。您同意依法律声明任何规定提供之本服务，无需进行事先通知即可中断或终止，您承认并同意，本网站可立即关闭或删除您的帐号及您帐号中所有相关信息及文件，及/或禁止继续使用前述文件或本服务。此外，您同意若服务之使用被中断或终止或您的帐号及相关信息和文件被关闭或删除，本网站对您或任何第三人均不承担任何责任。</p>
        <p class="c_p_t1">通知</p>
        <p class="c_p_t2">向您发出的通知可经由网页公告、电子邮件和普通邮件为之。本法律声明或其它事项有所变更时，本服务一般将向您显示此种通知或与该通知相关之链接。</p>
        <p class="c_p_t1">信息内容的所有权</p>
        <p class="c_p_t2">本网站由广和投资所有和运营。本网站所有的要素，包括但不限于，一般的设计和“内容”都受到著作权、商标和其它有关知识产权的法律保护。除非本法律声明或另外一个与广和投资之间的合约中有明确允许的部分外，本网站及/或其“内容”的任何部分或要素皆不可以任何方法进行复制或再传输。</p>
        <p class="c_p_t1">适用法律</p>
        <p class="c_p_t2">本法律声明及您与本网站之关系，均适用中华人民共和国法律。您与本网站就本服务、本法律声明或其它有关事项发生的争议，应提请有管辖权的法院通过诉讼方式解决。如若本法律声明之任何规定因与中华人民共和国法律相抵触而导致无效，您同意将按照相关法律法规之规定，努力实现本条款当事人之间的、在本法律声明项下的目的，且本法律声明之其他条款仍应具有完整的法律效力。</p>
        <p class="c_p_t1">其他</p>
        <p class="c_p_t2">本法律声明构成您与本网站之全部协议，并规范您对于本服务之使用行为，并取代您先前与本网站所达成的全部协议。在您使用相关服务、使用第三方提供的内容或软件时，亦应遵从所适用之附加条款及条件。</p>
        <p class="c_p_t2">本网站未行使或执行本法律声明任何权利或规定，不构成对前述权利或权利之放弃。</p>
        <p class="c_p_t2">本法律声明之标题仅供方便而设，不具有任何法律之效力。</p>

      </div>
      <div class="item dis_none">
        <p class="c_p_title">联系我们</p>
        <p class="c_p_t2">联系电话：010-50856300</p>
        <p class="c_p_t2">地址：北京市朝阳区姚家园路观湖国际二座一层</p>
      </div>
    </div>


  </div>
</section>



<jsp:include page="../footer/footer.jsp"></jsp:include>
</body>
<script src="/static/js/jquery-2.2.0.min.js"></script>
<script src="/static/js/main.js"></script>
<script>

  $(".content_p").on("click",function(){
    $(".content_p").removeClass("act");
    $(this).addClass("act");
    $(".item").addClass("dis_none");
    var id = Number($(this).data("id"));
    $($(".item")[id]).removeClass("dis_none");
    switch (id){
      case 0:
        document.getElementById("bread").textContent = "新手必读";
        break;
      case 1:
        document.getElementById("bread").textContent = "注册登录";
        break;
      case 2:
        document.getElementById("bread").textContent = "和悦俱乐部";
        break;
      case 3:
        document.getElementById("bread").textContent = "密码设置";
        break;
      case 4:
        document.getElementById("bread").textContent = "预约指引";
        break;
      case 5:
        document.getElementById("bread").textContent = "版权声明";
        break;
      case 6:
        document.getElementById("bread").textContent = "联系我们";
        break;
      default:
        break;
    }
  })



</script>
</html>
