<%--
  Created by IntelliJ IDEA.
  User: yxw
  Date: 2018/9/9
  Time: 17:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>核对订单-积分商城-广和投资</title>
  <meta charset="UTF-8">
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <link rel="icon" href="/static/img/16_16 LOGO.png" type="image/x-icon">
  <!--[if lt IE 9]>
  <script src="/static/js/html5shiv.min.js"></script>
  <script src="/static/js/css3-mediaqueries.min.js"></script>
  <![endif]-->
  <link rel="stylesheet" type="text/css" href="/static/css/m_app.css"/>
  <link rel="stylesheet" type="text/css" href="/static/css/mall.css" />
  <link rel="stylesheet" type="text/css" href="/static/css/cart.css" />
  <style>
  </style>
</head>

<body>
<div class="header_line"></div>
<jsp:include page="mall_nav.jsp"></jsp:include>
<div class="news_bn">
  <div class="wrapp">
    <span class="bread mall_bread"><a href="/MallHome/list">首页</a> > <a href="javascript:;">核对订单 </span></a>
  </div>
</div>

<div class="wrapp">
  <div class="cart_process_wp">
    <div class="process_box ">
      <div class="pro_num ">01</div>
      <p class="cn_p">我的购物车</p>
      <p class="en_p">SHOPPING CART</p>
      <p class="line"></p>
    </div>
    <div class="process_box">
      <div class="pro_num act">02</div>
      <p class="cn_p">填写核对订单</p>
      <p class="en_p">CHECK OUT </p>
      <p class="line"></p>
    </div>
    <div class="process_box">
      <div class="pro_num">03</div>
      <p class="cn_p">成功提交订单</p>
      <p class="en_p">ORDER COMPLETED</p>
      <p class="line"></p>
    </div>
    <div style="clear: both;"></div>
  </div>

  <div class="cart_wp">
    <section class="cart_master_info">
      <div style="padding-bottom: 20px;">
        <p class="info_title">收货人信息</p>
        <a class="add_btn" href="javascript:;">新增收货地址</a>
        <div style="clear: both;"></div>
      </div>
      <div class="add_wp" id="rs">


      </div>
      <div class="add_switch more_add "><a href="javascript:;" >更多地址</a><b></b></div>
      <div class="add_switch rec_add dis_none"><a href="javascript:;" >收起地址</a><b></b></div>
    </section>

    <section class="cart_pay_sel">
      <div class="" style="height: 40px;">
        <span class="" style="font-size: 18px;color:#333;display: inline-block;width: 640px;">支付方式</span>
        <span class="" style="font-size: 18px;color:#333;display: inline-block;width: 95px;">订单备注</span>
        <span style="font-size: 16px;color:#999;">提示：请勿填写有关支付、收货、发票方面的信息</span>
      </div>
      <div class="" style="height: 50px;margin-left: 30px;">
        <a class="zf_btn">在线支付
          <b class="zf_b"></b></a>
      </div>
      <div class="" style="height: 40px;">
        <span class="" style="font-size: 18px;color:#333;display: inline-block;width: 640px;">配送方式</span>
      </div>
      <div class="" style="height: 60px;margin-left: 30px;">
        <a class="zf_btn">快递配送
          <b class="zf_b"></b>
        </a>
      </div>
      <textarea class="textarea" id="remark_input" maxlength="100"></textarea>
      <p class="surplus">剩余 <span id="surp">100</span> 个字</p>
    </section>

    <section style="position: relative;">
      <a class="back_cart" style="position: absolute;z-index: 999;" href="/shoppingCar/page">返回修改购物车</a>
      <div id="rs2" >

      </div>
    </section>
    <section class="js_bill">
      <div>
        <p class="js_label">
          <span id="total3"></span> 件商品，总商品积分：
        </p>
        <p class="js_price"><span id="total1"></span>积分</p>
      </div>
      <div>
        <p class="js_label">
          <span></span> 总商品金额：
        </p>
        <p class="js_price">0.00</p>
      </div>
      <div>
        <p class="js_label">
          <span></span> 运费：
        </p>
        <p class="js_price">0.00</p>
      </div>
      <div>
        <p class="js_label">
          <span></span> 优惠金额：
        </p>
        <p class="js_price">-x0.00</p>
      </div>
      <div>
        <p class="js_label">
          <span></span> 优惠券：
        </p>
        <p class="js_price">-x0.00</p>
      </div>
      <div>
        <p class="js_label">
          <span></span> 应付总额：
        </p>
        <p class="js_price need_amount">￥0.00+<span id="total2"></span>积分</p>
      </div>
    </section>
    <section class="js_up_wp">
      <p class="check_zf_tip">为提高您的账户安全，请先设置支付密码去
        <a href="/personal/pay_pwd">设置</a></p>
      <button class="check_up_bill" onclick="upOrder();">提交订单</button>
    </section>
  </div>




  <div class="re_wp dis_none" id="empycart" >
    <div class="img_wp">
      <img src="/static/img/empt_cart.jpg" />
    </div>
    <p class="em_p">您还没有购买任何商品哦~</p>
    <button class="re_btn" onclick="window.location.href='/GoodsDetail/page'">返回首页</button>
  </div>
  <div class="re_wp dis_none" id="fullcart">
    <div class="img_wp">
      <img src="/static/img/full_cart.jpg" id="fullcart"/>
    </div>
    <p class="em_p fu " >感谢您的购物，订单完成！</p>
    <button class="re_btn" onclick="window.location.href='/MallHome/list'">返回首页</button>
  </div>
</div>
<jsp:include page="../footer/footer.jsp"></jsp:include>
</body>
<div class="add_pop" id="pop1">
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

<div class="js_pop" id="pop2">

  <div class="row">
    <label class="label" style="width: 134px;">温馨提示</label>
    <span>您当前剩余</span><span id="syjf"></span>
    <label class="label" class="fcd3">积分实付</label>
    <span class="fcd3" id="jfsf"></span><span class="fcd3">积分</span>
  </div>
  <div class="row">
    <label class="label" style="width: 144px;">支付密码</label>
    <input class="input w200" readonly onfocus="this.removeAttribute('readonly');" autocomplete="off" id="pwd" type="password" />
    <input type="hidden" id="orderId" />
  </div>
  <p class="pwd_err_tip dis_none">密码输入错误请重新输入</p>
  <button class="save_add" onclick="payOrder();">确认兑换</button>
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
  var flag = 0,zfmm=0,totalPrice=0,totalNumber=0;
  getCartData();
  checkPayState();
  $("#pwd").focus(function(){
    $(".pwd_err_tip").addClass("dis_none");
  })
  function payOrder(){
    var d = {passWord:document.getElementById("pwd").value,orderId:$("#orderId").val(),count:$("#jfsf").text()};
    if(d.passWord==''){
      layer.msg("密码不正确")
      return;
    }
    $.ajax({
      url: "/pay/payOrder",
      data:d,
      type: "post",
      dataType: "json",
      success: function(rs) {
        if("0000008"==rs.errCode){
          $(".pwd_err_tip").removeClass("dis_none");
          return;
        }
        if(!rs.success){
          layer.msg(rs.errMsg)
          return;
        }
        layer.closeAll();
        $(".cart_wp").addClass("dis_none");
        $("#fullcart").removeClass("dis_none");
        $(".pro_num").removeClass("act");
        $($(".pro_num")[2]).addClass("act");
        $('html , body').animate({scrollTop: 0},'slow');
      }
    })
  }
  function upOrder(){
    if(!zfmm){
      layer.msg("请先设置支付密码");
      return;
    }
    var d = [];
    var count = totalPrice;
    var addressId = $(".sel").data("id");
    var remake = document.getElementById('remark_input').value;
    $rs = $(".rowSum");//单条数据总价
    $rn = $(".rowNumber");//单条数据数量
    $ci = $(".cart_item");//所有商品sku
    $("#jfsf").text(totalPrice);
    for (var i = 0; i < $rs.length; i++) {
      d.push({
        number:$($rn[i]).text(),
        price:$($rs[i]).text(),
        sku:$($ci[i]).data("sku"),
        count:totalPrice,
        remake:remake,
        addressId:addressId
      })
    }
    $.ajax({
      url: "/sbmit/submitOrder",
      data:{jsons:JSON.stringify(d)},
      type: "post",
      dataType: "json",
      success: function(rs) {
        if(!rs.success){
          layer.msg(rs.errMsg);
          return;
        }
        $("#syjf").text(rs.data.integral);
        $("#orderId").val(rs.data.orderId);
        layer.open({
          type: 1,
          title: "请填写支付密码",
          closeBtn: 1,
          area: ['480px', '290px'],
          content: $("#pop2")
        });
      }
    })
  }
  var $remark_input = $('#remark_input');
  $remark_input.on("keyup",function(){
    document.getElementById("surp").textContent = 100-this.value.length;
  })

  var $distpicker = $('.addContainer');
  $distpicker.distpicker({});


  function refresh(){
    var $item = $(".add_item");//计算收货人总数
    var $add_wp = $(".add_wp");//
    var $add_title = $(".add_title");//
    var $set_def = $(".set_def");//
    var $add_left = $(".add_left");//
    $add_left.hover(function(){
      var dom = $(this).parent().find(".add_def");
      if(dom.hasClass("dis_none")){
        $(this).parent().find(".set_def ").removeClass("dis_none");
        $(this).parent().find(".d_il").removeClass("dis_none");
      }

    },function(){
      var dom = $(this).parent().find(".add_def");
      if(dom.hasClass("dis_none")){
        $(this).parent().find(".set_def ").addClass("dis_none");
        $(this).parent().find(".d_il").addClass("dis_none");
      }
    })
    $add_title.on("click",function(){
      var self = $(this);
      $add_title.removeClass("sel");
      self.addClass("sel");

    })
    $set_def.on("click",function(){//设置默认地址
      var self = $(this);
      $(".add_def").addClass("dis_none");
      $(".set_def").addClass("dis_none");
      self.addClass("dis_none");
      self.prev().removeClass("dis_none");
      self.parent().find(".d_il").addClass("dis_none")

    })
    var $as = $(".add_switch");
    if($item.length<3){//地址信息少于3条，不显示地址收起功能
      $as.addClass('dis_none')
    }
    $as.on("click",function(){
      var self = $(this);
      $as.addClass("dis_none")
      if(self.hasClass("more_add")){
        $(".rec_add").removeClass("dis_none");
        $add_wp.css("height",$item.length*41+"px")
      }else{
        $(".more_add").removeClass("dis_none");
        if($item.length>2){
          $add_wp.css("height",2*41+"px")
        }

      }
    })
  }

  getAddressList();
  function getAddressList(){

    $.ajax({
      url: "/receivingAdress/list",
      type: "post",
      dataType: "json",
      success: function(rs) {
        $("#rs").empty();
        if(!rs.success && rs.errCode == '0010007') window.location.href = "/login/loginPage"
        for (var i = 0; i < rs.data.data.length; i++) {
          $("#rs").append(
                  ['<div class="add_item">',
                    '<a data-id="'+rs.data.data[i].id+'" class="add_title '+checkDef(rs.data.data[i])+'"><span>'+limitStrLength(rs.data.data[i].name,4)+'</span><span>'+rs.data.data[i].address.split(",")[0]+'</span><b></b></a>',
                    '<div class="add_left">',
                    '<span class="add_name">'+limitStrLength(rs.data.data[i].name,4)+'</span>',
                    '<span class="add_addr">'+rs.data.data[i].address+rs.data.data[i].addressDetail+'</span>',
                    '<span class="add_mobile">'+rs.data.data[i].phone+'</span>',
                    checkAddr(rs.data.data[i]),

                    '</div>',
                    '</div>'].join(''));
        }
        refresh();
      }
    });
  }
  function checkAddr(d){
    if(d.defaultAddress)
      return ['<a href="javascript:;" data-id="'+d.id+'" onclick="setDefault(this);" class="add add_def">默认地址</a>',
        '<a href="javascript:;" data-id="'+d.id+'" class="add set_def dis_none " onclick="setDefault(this);">设为默认地址</a>',
        '<div class="d_il dis_none">',
        '<a class="add add_edit" data-id="'+d.id+'"  href="javascript:;"  onclick="edit(this);">编辑 </a>|',
        '<a class="add add_del" data-id="'+d.id+'"  href="javascript:;"  onclick="delPop(this);"> 删除</a>',
        '</div>'].join("");


    return ['<a href="javascript:;" data-id="'+d.id+'" onclick="setDefault(this);" class="add add_def dis_none">默认地址</a>',
      '<a href="javascript:;" data-id="'+d.id+'" class="add set_def  dis_none" onclick="setDefault(this);">设为默认地址</a>',
      '<div class="d_il dis_none">',
      '<a class="add add_edit" href="javascript:;" data-id="'+d.id+'"   onclick="edit(this);">编辑 </a>|',
      '<a class="add add_del" data-id="'+d.id+'"  href="javascript:;"  onclick="delPop(this);"> 删除</a>',
      '</div>'].join("");
  }
  function checkDef(d){
    if(d.defaultAddress)
      return 'sel'

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
        getAddressList();
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
        layer.msg("设置成功")
        getAddressList();
      }
    })
  }

  $(".add_btn").on("click",function(){
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
        if(!rs.success && rs.errCode == '0010007') window.location.href = "/login/loginPage"
        if(rs.success){
          document.getElementById("addForm").reset();
          layer.closeAll();
          getAddressList();
        }
      }
    });
  }



  function getCartData(){
    $.ajax({
      url: "/shoppingCar/shopingCarDetail",
      dataType: "json",
      success:function(rs){
        if(!rs.success){
          window.location.href = "/login/loginPage";
          return;
        }
        renderCart(rs.data,rs.data.Url);
      }
    })
  }
  function checkPayState(){
    $.ajax({
      url: "/orderInfo/detailList",
      dataType: "json",
      success:function(rs){
        if(!rs.success)return;
        if(rs.data.passWord){
          zfmm = 1;
          $(".check_zf_tip").css("visibility","hidden");
        }
      }
    })
  }

  var $cip = $("#rs2");
  function renderCart(data,u){
    var d = data.goodsDetailBos;
    $cip.empty();
    var sku = getUrlParms("sku");
    if(sku==null)return;
    var skus = sku.split(",");
    for (var j = 0; j < skus.length; j++) {
      for (var i = 0; i < d.length; i++) {
        if(skus[j]!=d[i].sku) continue;
        var num = getUrlParms("number");
        if(num)d[i].number = num;
        totalNumber+=d[i].number;
        $cip.append([
          '<div data-sku="'+d[i].sku+'" class="cart_item check">',
          '<div class="fl cart_img_wp">',
          '<img src="'+u+d[i].introduceImgUrl+'">',
          '</div>',
          '<div class="fl cart_detail_wp pt15">',
          '<a target="_blank" href="/GoodsDetail/page?id='+d[i].goodsId+'" class="cart_name">'+d[i].name+'</a>',
          '<p class="cart_par">',
          '<label class="cart_par_label">规格</label>',
          '<span>'+d[i].specification+'</span>',
          '</p>',
          '</div>',
          '<div class="fl cart_jf_wp pt15">',
          '<p class="cart_jf">'+checkStock(d[i])+'</p>',
          '</div>',
          '<div class="fl cart_num_wp pt15">',
          '<div class="num_wp">',
          '<div class="num_s_wp">',
          '<span>x</span>',
          '<span class="rowNumber">'+checkNumber(d[i])+'</span>',
          '</div>',
          '</div>',
          '</div>',
          '<div class="fl cart_total_wp pt15">',
          '<p class="cart_total_jf">',
          '<span class="rowSum">'+checkTime(d[i],data.time,d[i].number)+'</span>',
          '<span>积分</span>	',
          '</p>',
          '</div>',
          '</div>'].join(""));
      }
    }

  }
  function checkTime(goods,time,num){
    var _price,_flag=false;
    if(num) _flag=true;
    try{
      if(goods.preferentialEndTime.time>time&&goods.preferentialStartTime.time<time){
        if(num){
          _price = goods.preferentialPrice*num;
        }else{
          _price = goods.preferentialPrice;
        }
      } else{
        if(num){
          _price = goods.price*num;
        }else{
          _price = goods.price;
        }
      }
    }catch(e){
      if(num){
        _price = goods.price*num;
      }else{
        _price = goods.price;
      }
    }finally{
      if(_flag && goods.stock!=0){
      } else if(_flag){
        _price = 0;
      }
      totalPrice += _price;
      document.getElementById("total1").textContent = totalPrice;
      document.getElementById("total2").textContent = totalPrice;
      document.getElementById("total3").textContent = totalNumber;
      return _price;
    }

  }

  function checkStock(d){
    if(d.stock==0)return "无货";
    if(d.stock<d.number)return "无货";
    return "有货";
  }
  function checkNumber(d){
    if(d.stock<1){
      return 0
    }else{
      return d.number;
    }
  }
</script>

</html>
