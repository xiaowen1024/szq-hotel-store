<%--
  Created by IntelliJ IDEA.
  User: yxw
  Date: 2018/9/9
  Time: 20:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>帮助中心-积分商城-广和投资</title>
  <meta charset="UTF-8">
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <link rel="icon" href="/static/img/16_16 LOGO.png" type="image/x-icon">
  <!--[if lt IE 9]>
  <script src="/static/js/html5shiv.min.js"></script>
  <script src="/static/js/css3-mediaqueries.min.js"></script>
  <![endif]-->
  <link rel="stylesheet" type="text/css" href="/static/css/m_app.css?v=1"/>
  <link rel="stylesheet" type="text/css" href="/static/css/mall.css" />
  <style>
    .lunbo_a{
      display: inline-block;
      outline: none;
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
  </style>
</head>

<body>
<div class="header_line"></div>
<jsp:include page="mall_nav.jsp"></jsp:include>
<section class="news_bn">
  <div class="wrapp">
    <span class="bread">帮助中心 > <span id="bread">新手必读</span></span>
  </div>
</section>
<section class="container">
  <div style="width: 1200px;margin: auto;">


    <div style="display: inline-block;width: 260px;padding-bottom: 50px;">
      <p class="tit_p">会员服务</p>
      <p class="content_p act" data-id="0">注册登录操作指南</p>
      <p class="content_p" data-id="1">会员权益</p>
      <p class="tit_p">配送服务</p>
      <p class="content_p" data-id="2">配送指南</p>
      <p class="content_p" data-id="3">签收注意</p>
      <p class="content_p" data-id="4">退换服务</p>
      <p class="tit_p">兑换服务</p>
      <p class="content_p" data-id="5">积分兑换流程</p>
      <p class="content_p" data-id="6">电子产品售后服务</p>
      <p class="tit_p">常见问题</p>
      <p class="content_p" data-id="7">发票说明</p>
      <p class="tit_p">法律条款</p>
      <p class="content_p" data-id="8">法律条款</p>
    </div>
    <div class="item_wp">
      <div class="item ">
        <p class="c_p_title">注册登录操作指南</p>
        <p class="c_p_t1">1．如何进行注册登录？</p>
        <p class="c_p_t2">（1）打开广和投资网站，点击在首页右上角点击【注册】。</p>
        <p class="c_p_t2">（2）输入手机号码、图文验证码和手机验证码，设置并确认登录密码，填写推荐私享顾问工号（也可不填），阅读并勾选“我已经阅读并同意《网络服务协议》《合格投资者承诺》”，点击【注册】。</p>
        <p class="c_p_t2">（3）打开广和投资网站，在首页右上角点击【登录】。</p>
        <p class="c_p_t2">（4）输入手机号码和密码，点击【登录】。</p>
        <p class="c_p_t1">2．为什么要用手机号注册？</p>
        <p class="c_p_t2">（1）您的手机号码具有唯一性，便于识别和记忆。</p>
        <p class="c_p_t2">（2）更换密码、异常登录等重要操作信息，可以通过手机来通知您，提高安全性。</p>
        <p class="c_p_t2">（3）方便与您保持联系，以便推送重要信息。</p>
        <p class="c_p_t1">3．手机号注册时，显示此手机号码已经注册，怎么办？</p>
        <p class="c_p_t2">如您之前注册过忘记了密码，可以点击登录下方【忘记密码】填写账户信息进行找回，填写时请您准确核对自己的手机号码。</p>
        <p class="c_p_t1">4．用手机号码注册时，显示手机号码格式有误，怎么办？</p>
        <p class="c_p_t2">可能是您的输入法调整到了中文输入法，需要您切换为英文输入法，然后再输入11位手机号码。</p>
        <p class="c_p_t1">5．手机收不到验证码怎么办？</p>
        <p class="c_p_t2">（1）可能是您安装了拦截软件，需要您去拦截信息中查看，并设置白名单。</p>
        <p class="c_p_t2">（2）可能是您曾经收到骚扰短信，回复了退订，通讯公司便认为您不需要再接收此类短信，将其列入到黑名单中。需要您拨打通讯公司客服电话，申请移除黑名单。</p>
        <p class="c_p_t1">6．为什么会登录失败？</p>
        <p class="c_p_t2">请您核对以下两点：</p>
        <p class="c_p_t2">（1）输入的手机号码是否正确。</p>
        <p class="c_p_t2">（2）输入的密码是否正确（区分大小写）。如果忘记密码，请找回密码，您可以点击“忘记密码”进行重置后登录。</p>
      </div>
      <div class="item dis_none">
        <p class="c_p_title">会员权益</p>
        <p class="c_p_t2">本着服务于高净值客户“财富增值、身心健康、家庭幸福、品质生活、自我提升” 的理念，特增设医疗健康、生活休闲、教育咨询、企业专享、高端尊享等方面会员权益，为您的衣食住行提供全程管家式服务。简介如下：</p>
        <p class="c_p_t1">1、悦动视角</p>
        <p class="c_p_t2">解读全球宏观经济趋势，承办专业的金融论坛和财富讲座。(广和商学院）</p>
        <p class="c_p_t1">2、奢生活</p>
        <p class="c_p_t2">优雅生活、高端品鉴，提供品鉴休闲类活动，包括禅茶文化、红酒品鉴、艺术插花、缩影微景观、珠宝鉴赏、手工陶艺等。</p>
        <p class="c_p_t1">3、爱体育</p>
        <p class="c_p_t2">私享健康人生，观感运动之美，培养健康生活方式，定期举办徒步骑行、马术、高尔夫等竞技类运动。</p>
        <p class="c_p_t1">4、少儿财商</p>
        <p class="c_p_t2">关注青少年财商教育，通过各类知识性、趣味性丰富的亲子活动，带领客户的子女开拓眼界，培养宽广的兴趣爱好，陪同孩子成长。</p>
        <p class="c_p_t1">5、和意至善</p>
        <p class="c_p_t2">承担社会责任，关注社会公益，携手客户一起参与社会公益活动，将爱心、公益、环保传扬下去。</p>
        <p class="c_p_t1">6、私人订制旅行家</p>
        <p class="c_p_t2">提供定制境内外、长短途旅游文化度假。</p>
        <p class="c_p_t1">7、悦享盛宴</p>
        <p class="c_p_t2">广和财富高净值客户半年度及年度答谢晚宴。</p>
        <p class="c_p_t1">8、悦嘉年华</p>
        <p class="c_p_t2">打造顶级圈层私享主题活动，承办高端财富峰会；私人晚宴定制等。</p>
        <p class="c_p_t1">9、全球生命保障</p>
        <p class="c_p_t2">高端私人健康体检，在为客户提供金融专业类服务的同时，更加强对客户健康的关注，每年一次，为客户提供定制体检服务。</p>
        <p class="c_p_t2">详情可咨询您的理财顾问或者官方客服</p>
      </div>
      <div class="item dis_none">
        <p class="c_p_title">配送指南 </p>
        <p class="c_p_t1">1.   配送服务</p>
        <p class="c_p_t2">公司所有订单采用合作物流公司送货上门，我们将根据您所兑换商品的配送地址及商品所在库房的情况，在相应时间之内将商品送到您所填写的配送地址。但由于市场货源变动较大，部分热销商品可能会存在缺货导致送货延时或取消订单等特殊情况，请您谅解。 </p>
        <p class="c_p_t1">2.   配送时效</p>
        <p class="c_p_t2">（1）兑换当日15:00前产生的订单当日发货，15:00以后产生的订单次日处理！专业的配送团队为您进行货物配送服务。</p>
        <p class="c_p_t2">（2）港澳台及海外订单不支持发货。</p>
      </div>
      <div class="item dis_none">
        <p class="c_p_title">签收注意 </p>
        <p class="c_p_t1">1.   礼品签收注意事项</p>
        <p class="c_p_t2">（1）您在接收到货物签收时，请您务必仔细核对：商品及配件、商品数量。</p>
        <p class="c_p_t2">（2）若存在包装破损、商品错误、商品少发、商品有表面质量问题等影响签收的因素，请您一定要当面向送货员说明情况并可以立即向配送人员提出退货，我们会根据情况给予处理，请您不必担心。</p>
        <p class="c_p_t2">（3）如果您当场签收，我们视同为您认可商品完整无缺。</p>
        <p class="c_p_t2">（4）商品将定期更新，图片仅供参考，请以实物为准。</p>
        <p class="c_p_t1">2.   换货政策</p>
        <p class="c_p_t2">和悦商城旨在为您提供积分换礼服务，所有订单暂时无法退换，请您谅解。如果您兑换的商品出现包装破损、质量等问题您可致电广和投资官方客服。我们将第一时间为您处理。</p>
      </div>
      <div class="item dis_none">
        <p class="c_p_title">退换服务</p>
        <p class="c_p_t1">换货说明</p>
        <p class="c_p_t2">和悦商城旨在为您提供积分换礼服务，所有订单无法退换，请您谅解。如果您兑换的商品出现包装破损、质量等问题您可在收到货品的7个工作日内致电广和投资官方客服。我们将第一时间为您处理，逾期将不予处理。</p>
      </div>
      <div class="item dis_none">
        <p class="c_p_title">积分兑换流程</p>
        <p class="c_p_t1">1．搜索商品</p>
        <p class="c_p_t2">（1）您可以通过在导航搜索中输入关键字的方法来搜索您想要购买的商品</p>
        <p class="c_p_t2">（2）您还可以通过分类导航栏来找到您想要购买的商品分类</p>
        <p class="c_p_t1">2.  填写订单信息</p>
        <p class="c_p_t2">（1）确认收货人信息：收货人姓名，地址及电话等信息</p>
        <p class="c_p_t2">（2）请填写正确完整的收货人姓名、收货人联系方式、详细的收货地址和邮编，否则将会影响您订单的处理或配送</p>
        <p class="c_p_t2">（3）确认配送方式：确认配送时间信息（周一至周五送货，周末及法定节假日送货，时间不限）</p>
        <p class="c_p_t2">（4）确认商品清单：确认购买商品的种类、数量、价格、金额及促销、优惠等信息</p>
        <p class="c_p_t1">3．提交订单</p>
        <p class="c_p_t2">（1）以上信息核实无误后，请点击“提交订单”，系统生成一个订单号，就说明您已经成功提交订单</p>
        <p class="c_p_t2">（2）订单提交成功后，您可以登陆“个人中心-我的订单 ”查看订单信息</p>
        <p class="c_p_t2">（3）兑换礼品，广和投资不予提供发票，如有订单问题可凭借订单号处理</p>
        <p class="c_p_t1">4．订单状态</p>
        <p class="c_p_t2">（1）已提交：订单提交成功后，等待系统确认处理</p>
        <p class="c_p_t2">（2）已付款：积分支付成功</p>
        <p class="c_p_t2">（3）已发货：订单商品已经从库房发出，配送人员已经出发</p>
        <p class="c_p_t2">（4）修改订单：当订单处于已提交状态时，申请人可以修改订单信息</p>
      </div>
      <div class="item dis_none">
        <p class="c_p_title">电子产品售后服务</p>
        <p class="c_p_t1">尊敬的客户：</p>
        <p class="c_p_t2">      您好，如果遇到电子产品的售后维修问题，请您第一时间联系广和投资客服或携带电子产品到官方指定维修店维修。</p>
        <p class="c_p_t1">维修店查询渠道：</p>
        <p class="c_p_t2">和悦商城提供的电子产品类商品均为正品行货，货源来源于各类电子产品的授权经销商，请大家放心兑换和使用。</p>
      </div>
      <div class="item dis_none">
        <p class="c_p_title">常见问题</p>
        <p class="c_p_t1">发票说明：</p>
        <p class="c_p_t2">和悦商城积分换礼服务所有涉及商品无法提供发票，请您谅解。如遇商品维修可持保修卡或联系品牌方直接进行售后服务。</p>
      </div>
      <div class="item dis_none">
        <p class="c_p_title">法律条款</p>
        <p class="c_p_t2">和悦商城作为客户增值服务的一部分，为客户提供积分换礼服务。所有涉及事宜最终解释权归广和投资所有。</p>
      </div>


    </div>


  </div>
</section>
<jsp:include page="/WEB-INF/jsp/footer/footer.jsp"></jsp:include>
</body>
<script src="/static/js/jquery-2.2.0.min.js"></script>
<script type="text/javascript" src="/static/js/main.js" ></script>
<script>

  $(".content_p").on("click",function(){
    $(".content_p").removeClass("act");
    $(this).addClass("act");
    $(".item").addClass("dis_none");
    var id = Number($(this).data("id"));
    $($(".item")[id]).removeClass("dis_none");
    switch (id){
      case 0:
        document.getElementById("bread").textContent = "注册登录操作指南";
        break;
      case 1:
        document.getElementById("bread").textContent = "会员权益";
        break;
      case 2:
        document.getElementById("bread").textContent = "配送指南";
        break;
      case 3:
        document.getElementById("bread").textContent = "签收注意";
        break;
      case 4:
        document.getElementById("bread").textContent = "退换服务";
        break;
      case 5:
        document.getElementById("bread").textContent = "积分兑换流程";
        break;
      case 6:
        document.getElementById("bread").textContent = "电子产品售后服务";
        break;
      case 7:
        document.getElementById("bread").textContent = "发票说明";
        break;
      case 8:
        document.getElementById("bread").textContent = "法律条款";
        break;
    }
  })




</script>
</html>

