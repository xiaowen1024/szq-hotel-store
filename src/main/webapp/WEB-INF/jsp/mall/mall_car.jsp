<%--
  Created by IntelliJ IDEA.
  User: yxw
  Date: 2018/9/9
  Time: 2:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>购物车-积分商城-广和投资</title>
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
    <span class="bread mall_bread"><a href="/MallHome/list">首页</a> > <a href="#">我的购物车</span></a>
  </div>
</div>

<div class="wrapp">
  <div class="cart_process_wp">
    <div class="process_box ">
      <div class="pro_num act">01</div>
      <p class="cn_p">我的购物车</p>
      <p class="en_p">SHOPPING CART</p>
      <p class="line"></p>
    </div>
    <div class="process_box">
      <div class="pro_num">02</div>
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
    <div class="cart_hd">
      <p class="name">商品详情</p>
      <p class="all_select">
        <input class="all_btn checkBoxClick allcheck" data-id="1" type="checkbox" id="all1" checked="checked"  />
        <label class="label1" for="all1"></label>
        <label for="all1">全选</label>
      </p>
      <p class="exchange_type">兑换方式</p>
      <p class="num">数量</p>
      <p class="total">合计</p>
    </div>
    <div id="c_i_wp">

    </div>
    <div class="calc_wp">
      <p class="calc_p">合计：</p>
      <input class="total_check checkBoxClick allcheck" data-id="1" type="checkbox" checked="checked" id="all2" />
      <label class="label3" for="all2"></label>
      <label class="all_select_2 calc_p mr40" for="all2">全选</label>
      <a href="javascrip:;" onclick="goFavorite()" class="calc_p mr40">收藏选择商品</a>
      <a href="javascrip:;" onclick="delMultipleCart();" class="calc_p mr150">删除选择商品</a>
      <p class="calc_p mr40">已选中 <span id="totalNum">0</span> 件商品</p>
      <div class="js_wp">
        <p>总价(不含运费)</p>
        <p><span id="totalPrice">0</span>积分</p>
      </div>
    </div>
    <div class="jss_wp">
      <button class="js_btn mr20 btn" onclick="clearCart()">清除购物车</button>
      <button class="js_btn btn dis_none">更新购物车</button>
      <button class="qjs_btn btn fr" onclick="goPay()">去结算</button>
    </div>

  </div>




  <div class="re_wp dis_none">
    <div class="img_wp">
      <img src="/static/img/empt_cart.jpg"/>
      <img src="/static/img/full_cart.jpg" class="hide" style="display: none;"/>
    </div>
    <p class="em_p">您还没有购买任何商品哦~</p>
    <p class="em_p fu dis_none">感谢您的购物，订单完成！</p>
    <button class="re_btn" onclick="location.href='/MallHome/list'">返回首页</button>
  </div>
</div>




<jsp:include page="../footer/footer.jsp"></jsp:include>
</body>
<script src="/static/js/jquery-2.2.0.min.js"></script>
<script type="text/javascript" src="/static/js/main.js" ></script>
<script src="/static/layer/layer.js"></script>
<script>
  getCartData();
  function getCartData(){
    $.ajax({
      url: "/shoppingCar/shopingCarDetail",
      dataType: "json",
      success:function(rs){
        if(!rs.success){
          window.location.href = "/login/loginPage";
          return;
        }
        renderCart(rs.data);
      }
    })
  }
  function goPay(){
    var d = [];
    $(".checkbox").each(function(){
      if(this.checked){
        d.push($(this).data("id"))
      }
    })
    if(d.length==0){
      layer.msg("未选择商品")
      return;
    }
    window.location.href = "/sbmit/page?sku="+d.join(",");
  }

  var $cip = $("#c_i_wp");
  var totalPrice=0;
  function renderCart(data){
    var d = data.goodsDetailBos;
    $cip.empty();
    if(d.length==0){
      $(".cart_wp").addClass("dis_none");
      $(".re_wp").removeClass("dis_none");
    } else{
      $(".cart_wp").removeClass("dis_none");
      $(".re_wp").addClass("dis_none");
    }
    for (var i = 0; i < d.length; i++) {
      $cip.append([
        '<div class="cart_item">',
        '<div class="fl cart_img_wp">',
        '<img src="'+data.Url+d[i].introduceImgUrl+'">',
        '</div>',
        '<div class="fl cart_detail_wp">',
        '<input data-carid="'+d[i].carId+'"  '+setCheckBoxStatus(d[i],true)+' data-id="'+d[i].sku+'" class="checkbox checkBoxClick" '+setCheckBoxStatus(d[i],false)+' type="checkbox" id="pro'+i+'">',
        '<label class="label2" for="pro'+i+'"></label>',
        '<p class="checkStock">'+checkStock(d[i])+'</p>',
        '<a target="_blank" href="/GoodsDetail/page?id='+d[i].goodsId+'" class="cart_name">'+d[i].name+'</a>',
        '<p class="cart_par"><label class="cart_par_label">规格</label><span>'+d[i].specification+'</span></p>',
        '</div>',
        '<div class="fl cart_jf_wp">',
        '<p class="cart_jf"><span class="exchange_price">'+checkTime(d[i],data.time)+'</span>积分</p>',
        '</div>',
        '<div class="fl cart_num_wp">',
        '<div class="num_wp">',
        '<a href="javascript:;" class="num_btn reduce">-</a>',
        '<input data-price="'+checkTime(d[i],data.time)+'" data-carid="'+d[i].carId+'" data-stock="'+d[i].stock+'" type="text" value="'+checkStock(d[i],true)+'" class="sum">',
        '<a href="javascript:;" class="num_btn plus">+</a>',
        '</div>',
        '</div>',
        '<div class="fl cart_total_wp">',
        '<p class="cart_total_jf">',
        '<span class="rowSum">'+checkTime(d[i],data.time,d[i].number)+'</span><span>积分</span>',
        '	<a class="del_btn" data-carid="'+d[i].carId+'" data-id="'+d[i].sku+'" href="javascript:;"><i class="iconfont"></i></a>',
        '</p>',
        '</div>',
        '</div>'].join(""));
    }
    document.getElementById("totalPrice").textContent = totalPrice;
    delClick();//删除点击事件
    addClick();//增加减少数量点击事件
    checkBoxClick();//checkbox点击事件
    updateSum();//更新商品总数
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
        totalPrice +=_price;
      } else if(_flag){
        totalPrice +=0;
        _price = 0;
      }
      return _price;
    }

  }


  function delClick(){
    $(".del_btn").on("click",function(){
      var _sku = $(this).data("carid");
      console.log($(this).data("carid"))
      delCart(_sku);
    })
  }

  function delMultipleCart(){
    var d = [];
    $(".checkbox").each(function(){
      if(this.checked){
        d.push($(this).data("carid"))
      }
    })
    if(d.length==0)return;
    delCart(d.join(","));
  }


  function delCart(d){

    //删除购物车中一个或者多个商品
    $.ajax({
      url: "/shoppingCar/deleteInfoList",
      data:{jsons:d},
      dataType: "json",
      success:function(rs){
        if(!rs.success){
          if(rs.errCode=="0010007"){
            window.location.href = "/login/loginPage";
            return;
          }else{
            layer.msg(rs.errMsg);
            return;
          }
        }
        getCartData();
      }
    })
  }

  function calcTotalPrice(f){
    if(f){
      var sum = 0;
      $('.rowSum').each(function() {
        sum+=Number(this.textContent);
      });
      document.getElementById("totalPrice").textContent = sum;
    }else{
      document.getElementById("totalPrice").textContent = 0;
    }
  }

  function addClick(){
    $(".num_btn").on("click",function(){
      var f = $(this).hasClass("reduce");
      var $self = $(this).parent().find(".sum");
      var num = Number($self.val())
      var carId = $self.data('carid');
      var price = Number($self.data('price'));
      if(f&&num!=1&&num!=0){
        networkAddNum(--num,carId,function(rs){
          $self.val(num);
          if($self.parent().parent().parent().find(".checkbox")[0].checked){
            document.getElementById("totalPrice").textContent
                    = Number(document.getElementById("totalPrice").textContent)-price;
          }
          $self.parent().parent().parent().find(".rowSum").text(num*price);
          updateSum();
        });
      }
      if(!f&&Number($self.data("stock"))>num){
        networkAddNum(++num,carId,function(rs){
          $self.val(num);
          if($self.parent().parent().parent().find(".checkbox")[0].checked){
            document.getElementById("totalPrice").textContent
                    = Number(document.getElementById("totalPrice").textContent)+price;
          }
          $self.parent().parent().parent().find(".rowSum").text(num*price);
          updateSum();
        });
      } else if (!f&&$self.data("stock")!=0){
        layer.msg('最多可购买 '+$self.data("stock")+' 件！');
      }
    })
    $(".sum").on("change",function(){
      var $self = $(this).parent().find(".sum");
      var num = Number($self.val());
      if(num<1){
        $self.val(1);
      }else if(num>Number($self.data("stock"))){
        $self.val($self.data("stock"));
        layer.msg('最多可购买'+$self.data("stock")+'件！');
      }
    })
  }

  //调用网络请求增加或者减少购物车商品数量
  function networkAddNum(num,carId,callback){
    $.ajax({
      url: "/shoppingCar/updateNumber?number="+num+"&carId="+carId,
      dataType: "json",
      success:function(rs){
        if(!rs.success){
          window.location.href = "/login/loginPage";
          return;
        }
        callback(rs);
      }
    })
  }

  function checkStock(d,f){
    if(!f&&d.stock==0){
      return "无货";
    }else if(!f){
      return "";
    }
    if(f&&d.stock<d.number){
      return d.stock;
    }else if(f){
      return d.number;
    }
  }

  function setCheckBoxStatus(d,f){
    if(f&&d.stock==0){
      return "disabled='disabled'";
    }else if(f){
      return "";
    }
    if(!f&&d.stock==0){
      return "";
    }else if(!f){
      return 'checked="checked"';
    }
  }

  function checkBoxClick(){

    $(".checkBoxClick").on("change", function () {
      var _self = $(this);

      if(_self.data("id")==1){
        if(this.checked){
          $('input:checkbox').each(function() {
            if(!this.getAttribute("disabled")){
              this.checked = true;
            }
          });
          calcTotalPrice(true);
        }else{
          $('input:checkbox').each(function() {
            this.checked = false;
          });
          calcTotalPrice(false);
        }
      }
      else{
        if(_self.parent().parent().find(".checkbox")[0].checked){
          document.getElementById("totalPrice").textContent
                  = Number(document.getElementById("totalPrice").textContent)
                  +Number(_self.parent().parent().find(".rowSum").text());

        }else{
          document.getElementById("totalPrice").textContent
                  = Number(document.getElementById("totalPrice").textContent)
                  -Number(_self.parent().parent().find(".rowSum").text());
          $('.allcheck').each(function() {
            this.checked = false;
          });
        }
      }
      updateSum();
    })
  }
  function clearCart(){
    $.ajax({
      url: "/shoppingCar/deleteAll",
      dataType: "json",
      success:function(rs){
        console.info(rs);
        if(!rs.success){
          if(rs.errCode=="0010007"){
            window.location.href = "/login/loginPage";
            return;
          }else{
            layer.msg(rs.errMsg);
            return;
          }
        }
        $cip.empty();
        document.getElementById("totalPrice").value = 0;
        document.getElementById("totalNum").textContent = 0;
      }
    })
  }

  function updateSum(){
    //更新已选商品数量
    var num = 0;
    $(".sum").each(function(i,d){
      if($(d).parent().parent().parent().find(".checkbox")[0].checked){
        num+=Number(d.value);
      }
    })
    document.getElementById("totalNum").textContent = num;
  }

  function goFavorite(){
    var d = [];
    $(".checkbox").each(function(){
      if(this.checked){
        d.push($(this).data("id"))
      }
    })
    if(d.length==0)return;

    $.ajax({
      url: "/shoppingCar/addFollowList",
      data:{jsons:d.join(",")},
      dataType: "json",
      success:function(rs){
        console.info(rs);
        if(!rs.success){
          if(rs.errCode=="0010007"){
            window.location.href = "/login/loginPage";
            return;
          }else{
            layer.msg(rs.errMsg);
            return;
          }
        }else{
          layer.msg("收藏成功");
        }
      }
    })
  }

</script>

</html>
