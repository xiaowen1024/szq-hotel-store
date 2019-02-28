<%--
  Created by IntelliJ IDEA.
  User: yxw
  Date: 2018/9/9
  Time: 2:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>乐享积分-积分商城-广和投资</title>
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
  <link rel="stylesheet" type="text/css" href="/static/css/page.css" />
  <link rel="stylesheet" type="text/css" href="/static/css/slick-theme.css" />
  <link rel="stylesheet" type="text/css" href="/static/css/slick.css" />
  <link rel="stylesheet" type="text/css" href="/static/css/jquery.jqzoom.css" />
  <link rel="stylesheet" type="text/css" href="/static/css/zoom.css" />
  <link rel="stylesheet" type="text/css" href="/static/css/address.css" />
  <style>
    @font-face {
      font-family: 'iconfont';  /* project id 754425 */
      src: url('//at.alicdn.com/t/font_754425_dsvzp6i5i0d.eot');
      src: url('//at.alicdn.com/t/font_754425_dsvzp6i5i0d.eot?#iefix') format('embedded-opentype'),
      url('//at.alicdn.com/t/font_754425_dsvzp6i5i0d.woff') format('woff'),
      url('//at.alicdn.com/t/font_754425_dsvzp6i5i0d.ttf') format('truetype'),
      url('//at.alicdn.com/t/font_754425_dsvzp6i5i0d.svg#iconfont') format('svg');
    }
    .news_bn{
      height: 45px;
      background-color: transparent;
      margin-top: 10px;
    }
    .header{
      box-shadow: 0px 5px 10px #EEEEEE;
    }
    .rs_num{
      color: #D3A359;
    }
    .mall_bread{
      font-size: 14px;
      line-height: 45px;
    }
    li a {
      display: block;
      padding: 0px;
      color: #fff;
      text-decoration: none;
      font-size: 16px;
    }
    .pro_jf{
      font-size: 14px;color: #D3A359;
      padding-bottom: 18px;
      border-bottom: solid 1px #eddabd;
    }
    .left_wp{
      float: left;width: 230px;border: #eddabd 1px solid;margin-bottom: 20px;
    }
    .left_title{
      width: 230px;height: 45px;text-align: center;line-height: 45px;color: white;font-size: 16px;background-color: #d7ac69;
    }
    .left_ul{
      width: 200px;padding: 16px;
      padding-bottom: 0px;
    }
    .left_ul_li{
      width: 198px;margin: 8px 0;
    }
    .left_ul_li:nth-last-child(2){
      border-bottom: solid 0px #eddabd;margin-bottom: 0px;
    }
    .his_img{
      width: 198px;height: 198px;
    }
    .his_name{
      color:#666666;padding: 10px 0;
    }
    .tab{
      color: #000000;text-align: center;display: inline-block;line-height: 42px; width: 170px;height: 42px;
    }
    .tab_cur{
      border-top: 2px solid #D3A359;color: #D3A359;background-color: white;height: 42px;
    }
    .right_wp{
      float: right;width: 910px;
    }
    .tab_wp{
      width: 100%;height: 44px;background: #EDDABD;
    }
    .intro_wp{
      width: 910px;height: auto;padding: 30px 0;
    }
    .intro_tb{
      width: 868px;height: auto;border:#f1f1f1 1px solid;padding:0 20px
    }
    .tb_item{
      border-bottom:#f1f1f1 1px solid;line-height: 50px;font-size: 14px;color: #666666;
    }
    .tb_item>span:nth-child(1){
      padding-right: 30px;
    }
    .tb_item>span:nth-child(2){
      padding-right: 50px;
    }
    .img_wp{
      width: 868px;height: auto;margin-top: 20px;
    }
    .img_wp>img{
      max-width: 908px;
      display: block;
    }
    .parameter_wp{
      width: 910px;
      height: auto;
      padding: 30px 0;
      display: none;
    }
    a:hover{
      text-decoration: none;
    }
    .standard{
      position: relative;margin-right: 10px;cursor: pointer;padding:6px 12px;color: #666666;font-size: 12px;border: solid 1px #cccccc;border-radius: 3px;
    }
    .standard.sel{
      border: solid 1px #D3A359;
    }
    .standard:hover{
      border: solid 1px #D3A359;
    }
    .standard.sel b{
      position: absolute;
      width: 11px;
      height: 11px;
      background: url(img/selected.png) no-repeat;
      right: -1px;
      bottom: 0;
    }
    .sale{
      color: #fff;
      background: url(img/clock.png) 30px center no-repeat #D3A359;
      text-indent: 60px;
      width: 100%;
      display: block;height: 40px;
      line-height: 40px;
      font-weight: bold;
    }
    .price {
      color: #a8a8a8;
      line-height: 55px;
      font-size: 16px;
      display: inline-block;
      text-decoration: line-through;
    }
    .btn_empty {
      border: 1px solid #ECEEEF;
      background: transparent;
      color: #ECEEEF;
    }
    .dis_none{
      display: none;
    }
    .cart_tip{
      width: 320px;
      height: 190px;
      background-image: url(/static/img/cart_pop.png);
      position: relative;
    }
    .cart_tip>button:nth-child(1){
      width: 73px;
      height: 30px;
      opacity: 0;
      position: absolute;
      bottom:24px;
      left: 73px;
    }
    .cart_tip>button:nth-child(2){
      width: 73px;
      height: 30px;
      opacity: 0;
      position: absolute;
      bottom:24px;
      left: 175px;
    }
    .buy_btn:hover{
      cursor: pointer;
    }
    .btn_empty:hover{
      cursor:not-allowed;
    }
    .fcd3{
      color: #D3A359;
    }
  </style>
</head>

<body>
<div class="header_line"></div>
<jsp:include page="mall_nav.jsp"></jsp:include>
<div class="news_bn">
  <div class="wrapp">
				<span class="bread mall_bread">
					<a href="/MallHome/list">首页</a> >
					<a id="first" href="#"></a> >
					<a id="second" href="#"></a>
				</span>
    <span> > </span>
    <span class="bread mall_bread" id="breadName"></span>
  </div>
</div>
<div class="wrapp" >
  <div class="pro_wp">
    <div class="pro_left">
      <div id="preview" class="spec-preview">
				    	<span class="jqzoom">
				    		<img id="singleImg" img="" />
				    	</span>
      </div>
      <div class="spec-scroll"> <a class="prev"></a> <a class="next"></a>
        <div class="items">
          <ul id="ulImg">
          </ul>
        </div>
      </div>
    </div>
    <div class="pro_right">
      <p class="pro_tit" id="pro_tit"></p>
      <p id="price" class="dis_none">
        <span class="label">商品价格</span>
        <span class="or_price" id="jf"></span>
        <em class="or_price">积分</em>
      </p>
      <div style="background: #EEEEEE;min-width: 523px;" class="dis_none" id="preferential">
        <div class="sale">
          <span>活动截至时间：</span>
          <span id="p_time"></span>
        </div>
        <span class="label">活动价格</span>
        <div class="vip_price">
          <span id="p_jf"></span>
          <em>积分</em>
          <span class="price" id="y_jf"></span>
          <em class="price">积分</em>
        </div>
      </div>
      <p id="sel_spec">
      </p>
      <p>
        <span class="label">兑换方式</span>
        <a class="standard sel"><span id="jf_ex"></span><span>积分</span><b></b></a></p>
      <p>
        <span class="label">购买数量</span>
        <button class="num_btn reduce">-</button>
        <input class="num_text" id="num" value="1" />
        <button class="num_btn plus">+</button>
      </p>
      <div class="buy_wp">
        <button class="buy_btn" data-id="0">立即兑换</button>
        <button class="buy_btn" data-id="1">加入购物车</button>
        <button class="btn_empty buy_btn dis_none">无货</button>
        <a class="focus" id="focus" href="javascript:;" onclick="follow();">
          <i class="iconfont" id="gz_i">&#xe8c4;</i>
          <span id="gz_f" style="font-size: 14px;color: #555;">关注该商品</span></a>
      </div>

    </div>

  </div>
</div>

<div class="wrapp">
  <div class="left_wp">
    <div class="left_title">推荐商品</div>
    <ul class="left_ul" id="ad">
    </ul>
  </div>
  <div class="right_wp">
    <div class="tab_wp">
      <a href="javascript:;" class="tab tab_cur" data-id="0">商品介绍</a>
      <a href="javascript:;" class="tab" data-id="1">规格参数</a>
    </div>
    <div class="intro_wp">
      <div class="intro_tb">
        <p class="tb_item">
          <span>名称：</span>
          <span id="name"></span>
          <span>商品编号：</span>
          <span id="sku"></span>
        </p>
        <p class="tb_item">
          <span>重量：</span>
          <span id="weight"></span>
        </p>
      </div>
      <div class="img_wp" id="img_wp">

      </div>
    </div>
    <div class="parameter_wp">
      <div class="intro_tb">
        <p class="tb_item">
          <span>品牌：</span>
          <span id="brand"></span>
        </p>
        <p class="tb_item">
          <span>产地：</span>
          <span id="pro_address"></span>
        </p>
      </div>

    </div>
  </div>
</div>
<div style="clear: both;"></div>




<jsp:include page="../footer/footer.jsp"></jsp:include>
</body>
<script src="/static/js/jquery-2.2.0.min.js"></script>
<script src="/static/js/jquery.jqzoom.js"></script>
<script type="text/javascript" src="/static/js/slick.min.js"></script>
<script type="text/javascript" src="/static/js/main.js" ></script>
<script src="/static/js/page.js"></script>
<script src="/static/js/location.js"></script>
<script src="/static/layer/layer.js"></script>

<script>
  $preferential = $("#preferential");
  $price = $("#price");
  $pro_tit = $(".pro_tit");
  $sel_spec = $("#sel_spec");
  $name = $("#name");
  $sku = $("#sku");
  $weight = $("#weight");
  $brand = $("#brand");
  $pro_address = $("#pro_address");
  $img_wp = $("#img_wp");
  $singleImg = $("#singleImg");
  $ulImg = $("#ulImg");
  $ad = $("#ad");
  $jf_ex = $("#jf_ex");
  $num_btn = $(".num_btn");
  $num = $("#num");
  $buy_btn = $(".buy_btn");
  $breadName = $("#breadName");
  $first = $("#first");
  $second = $("#second");
  var stock = 0,sku;
  var datas;
  $buy_btn.on("click",function(){
    if($(this).hasClass("btn_empty"))return;
    var id = $(this).data("id");
    if(id==0){
      $.ajax({
        url: "/shoppingCar/add?sku="+$("#sku").text()+"&number="+document.getElementById("num").value,
        dataType: "json",
        success:function(rs) {
          if (rs.errCode == "0010007") {
            window.location.href = "/login/loginPage"
          } else {
            window.location.href = "/sbmit/page?number=" + document.getElementById("num").value + "&sku=" + $("#sku").text()
          }
        }
      })
      //兑换
    }else{
      //加入购物车
      $.ajax({
        url: "/shoppingCar/add?sku="+$("#sku").text()+"&number="+document.getElementById("num").value,
        dataType: "json",
        success:function(rs){
          if(rs.errCode=="0010007"){
            window.location.href = "/login/loginPage"
          }else {

            layer.open({
              type: 1,
              title: false,
              closeBtn: 0,
              shadeClose: true,
              skin: 'cart_tip',
              content: '<div class="cart_tip"><button onclick="layer.closeAll();"></button><button onclick="pay()"></button></div>'
            });
          }
        }

      })

    }
  })
  function pay(){
    //立即结算方法
    window.location.href = "/sbmit/page?sku="+$sku.text()
//		layer.msg("立即结算方法todo");
  }
  $num_btn.on("click",function(){
    var f = $(this).hasClass("reduce");
    var num = Number(document.getElementById("num").value);
    if(f&&num!=1){
      document.getElementById("num").value = --num;
    }
    if(!f&&stock>num){
      document.getElementById("num").value = ++num;
    } else if (!f){
      layer.msg('最多可购买'+stock+'件！');
    }
  })
  $num.on("change",function(){
    var num = Number(document.getElementById("num").value);
    if(num<1){
      document.getElementById("num").value =1;
    }else if(num>stock){
      document.getElementById("num").value =stock;
      layer.msg('最多可购买'+stock+'件！');
    }
  })

  //	$.getJSON("mall_detail.json",function(rs){
  $.ajax({
    url: "/GoodsDetail/detail?id="+getUrlParms("id"),
    type:"post",
    dataType: "json",
    success:function(rs){
      datas = rs.data;
      var goods = rs.data.goods;
      $pro_tit.text(goods[0].name);
      $breadName.text(goods[0].name);
      checkTime(goods[0]);//活动
      htmlSpec(goods);//规格
      htmlIntr(goods[0]);//商品介绍
      htmlImg();//图片
      htmlAd();//推荐商品
      $first.text(datas.first.name);
      $second.text(datas.second.name);
      $first.attr("href","/Goods/page?leaveId="+datas.first.id);
      $second.attr("href","/Goods/page?leaveId="+datas.first.id+"&goodsTypeId="+datas.second.id);
      setFollow(goods[0]);
      addHistory(goods[0].sku);
    }
  });
  function htmlAd(){
    $ad.empty();
    for (var i = 0; i < datas.recommond.length; i++) {
      var url = datas.Url+""+datas.recommond[i].introduceImgUrl;
      $ad.append(	['<li class="left_ul_li">',
        '<a target="_blank" href="/GoodsDetail/page?id=',
        datas.recommond[i].id,
        '"><img src="',
        url,
        '" class="his_img"/></a>',
        '<a href="page?id=',
        datas.recommond[i].id,
        '" class="his_name">',
        datas.recommond[i].name,
        '</a>',
        '<p class="pro_jf">积分：<span>',
        datas.recommond[i].price,
        '</span></p>',
        '</li>'].join(""))
      if(i>4)break;
    }
    $ad.append('<div style="clear: both;"></div>');
  }
  function htmlIntr(v){
    $name.text(v.name);
    $sku.text(v.sku);
    $weight.text(weightCalc(v.weight));
    $brand.text(datas.brand.name);
    $pro_address.text(datas.brand.produced);
  }
  function weightCalc(w){
    w = Number(w);
    if(w<1){
      return "1kg以下";
    }else if(w<5){
      return "1-5kg";
    }else{
      return "5kg以上";
    }
  }
  function htmlImg(){
    $img_wp.empty();
    $ulImg.empty();
    var flag = true;
    for (var i = 0; i < datas.goodsImgs.length; i++) {
      if(datas.goodsImgs[i].status==1){
        $img_wp.append('<img src="'+datas.Url+""+datas.goodsImgs[i].imgUrl+'" >')
      }else{
        var url = datas.Url+""+datas.goodsImgs[i].imgUrl;
        if(flag){
          flag = false;
          $singleImg.attr('jqimg',url);
          $singleImg.attr('src',url);
          $ulImg.append('<li><img class="hover" src="'+url+'" bimg="'+url+'" onmousemove="preview(this);"></li>')
        }else{
          $ulImg.append('<li><img src="'+url+'" bimg="'+url+'" onmousemove="preview(this);"></li>')
        }
      }

    }
    var $hover = $(".spec-scroll .items ul li img");
    $(".spec-scroll .items ul li img").hover(function(){
      $hover.removeClass("hover");
      $(this).addClass("hover");
    })
    startImg();
  }
  function htmlSpec(v,s){
    $sel_spec.empty();
    $sel_spec.append('<span class="label">选择规格</span>');
    for (var i = 0; i < v.length; i++) {
      if(i==0&&!s){
        stock = v[i].stock;
        sku = v[i].sku;
        $sel_spec.append('<a class="standard sel">'+v[i].specification+'<b></b></a>')
      } else {
        if(s==v[i].specification){
          stock = v[i].stock;
          sku = v[i].sku;
          $sel_spec.append('<a class="standard sel">'+v[i].specification+'<b></b></a>')
        } else
          $sel_spec.append('<a class="standard">'+v[i].specification+'<b></b></a>')
      }
    }
    if(stock<1){
      $(".buy_btn").addClass("dis_none");
      $(".btn_empty").removeClass("dis_none");
    } else{
      $(".buy_btn").removeClass("dis_none");
      $(".btn_empty").addClass("dis_none");
    }
    var ssa = $("#sel_spec>a");
    ssa.on("click",function(){
      if($(this).hasClass("sel"))return;
      ssa.removeClass("sel");
      $(this).addClass("sel");
      changeHtml($(this).text());
    })
  }
  function changeHtml(s){
    for (var i = 0; i < datas.goods.length; i++) {
      if(datas.goods[i].specification==s){
        htmlSpec(datas.goods,s);
        checkTime(datas.goods[i]);
        htmlIntr(datas.goods[i]);
        setFollow(datas.goods[i])
        break;
      }
    }
  }
  function checkTime(goods){
    try{
      if(goods.preferentialEndTime.time>Date.now()&&goods.preferentialStartTime.time<Date.now()){
        $preferential.removeClass("dis_none");
        $price.addClass("dis_none");
        $("#p_jf").text(goods.preferentialPrice)
        $jf_ex.text(goods.preferentialPrice)
        $("#y_jf").text(goods.price)
        $("#p_time").text(DateToLStr(new Date(goods.preferentialEndTime.time)))
      } else{
        $price.removeClass("dis_none");
        $preferential.addClass("dis_none");
        $("#jf").text(goods.price)
        $jf_ex.text(goods.price)
      }
    }catch(e){
      $preferential.addClass("dis_none");
      $price.removeClass("dis_none");
      $("#jf").text(goods.price)
      $jf_ex.text(goods.price)
    }

  }
</script>

<script>

  var $tab = $(".tab");
  var $par = $(".parameter_wp");
  var $intro = $(".intro_wp");
  $tab.on("click",function(){
    $par.css("display","block");
    $intro.css("display","block");
    $tab.removeClass("tab_cur")
    $(this).addClass("tab_cur");
    var id = $(this).data("id");
    if(id){
      $intro.css("display","none");
    } else{
      $par.css("display","none");
    }
  })
  $('ul.listArea').Address({ proid: 642, cityid: 643, areaid: 648 });//初始化Tab中的地址
  $(".store-selector").find(".text div").html("北京北京市朝阳区");//初始化文本框显示的地址


</script>
<script>
  //鼠标经过预览图片函数
  function preview(img){
    $("#preview .jqzoom img").attr("src",$(img).attr("src"));
    $("#preview .jqzoom img").attr("jqimg",$(img).attr("bimg"));
  }

  //图片放大镜效果
  $(function(){
//	$(".jqzoom").jqueryzoom({xzoom:550,yzoom:520,magnify:10});
  });

  //图片预览小图移动效果,页面加载时触发
  function startImg(){


    var tempLength = 0; //临时变量,当前移动的长度
    var viewNum = 5; //设置每次显示图片的个数量
    var moveNum = 1; //每次移动的数量
    var moveTime = 300; //移动速度,毫秒
    var scrollDiv = $(".spec-scroll .items ul"); //进行移动动画的容器
    var scrollItems = $(".spec-scroll .items ul li"); //移动容器里的集合
    var moveLength = 89  //计算每次移动的长度
    var countLength = (scrollItems.length - viewNum) * 89; //计算总长度,总个数*单个长度

    //下一张
    $(".spec-scroll .next").bind("click",function(){
      if(tempLength < countLength){
        if((countLength - tempLength) > moveLength){
          scrollDiv.animate({left:"-=" + moveLength + "px"}, moveTime);
          tempLength += moveLength;
        }else{
          scrollDiv.animate({left:"-=" + (countLength - tempLength) + "px"}, moveTime);
          tempLength += (countLength - tempLength);
        }
      }
    });
    //上一张
    $(".spec-scroll .prev").bind("click",function(){
      if(tempLength > 0){
        if(tempLength > moveLength){
          scrollDiv.animate({left: "+=" + moveLength + "px"}, moveTime);
          tempLength -= moveLength;
        }else{
          scrollDiv.animate({left: "+=" + tempLength + "px"}, moveTime);
          tempLength = 0;
        }
      }
    });

  }


  function follow(){
    var url = '';
    var sku = $("#focus").data("sku");
    if($("#focus").hasClass("fcd3")){
      url = '/GoodsFollow/deleteGoodsDetailFollow?sku='+sku;
    }else{
      url = '/GoodsFollow/add?sku='+sku;
    }
    $.ajax({
      url: url,
      dataType: "json",
      success:function(rs){
        if(rs.success){
          if($("#focus").hasClass("fcd3")){
            $("#focus").removeClass("fcd3");
            $("#gz_i").removeClass("fcd3");
            document.getElementById("gz_f").textContent = "关注该商品";
          }else{
            $("#focus").addClass("fcd3");
            $("#gz_i").addClass("fcd3");
            document.getElementById("gz_f").textContent = "已关注";
          }
        } else if(rs.errCode=="0010007"){
          window.location.href = "/login/loginPage";
          return;
        }
      }
    })
  }
  function setFollow(g){

    $("#focus").data("sku",g.sku);
    if(g.followStatus){
      $("#focus").addClass("fcd3");
      $("#gz_i").addClass("fcd3");
      document.getElementById("gz_f").textContent = "已关注";
    }else{
      $("#focus").removeClass("fcd3");
      $("#gz_i").removeClass("fcd3");
      document.getElementById("gz_f").textContent = "关注该商品";
    }
  }
  function addHistory(s){
    $.ajax({
      url: '/history/addHistory?sku='+s,
      dataType: "json",
      success:function(rs){}
    })
  }
</script>
</html>

