<%--
  Created by IntelliJ IDEA.
  User: yxw
  Date: 2018/8/21
  Time: 18:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>商品列表-积分商城-广和投资</title>
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
  <style>
    @font-face {
      font-family: 'iconfont';  /* project id 754425 */
      src: url('//at.alicdn.com/t/font_754425_6lrze3a7pkd.eot');
      src: url('//at.alicdn.com/t/font_754425_6lrze3a7pkd.eot?#iefix') format('embedded-opentype'),
      url('//at.alicdn.com/t/font_754425_6lrze3a7pkd.woff') format('woff'),
      url('//at.alicdn.com/t/font_754425_6lrze3a7pkd.ttf') format('truetype'),
      url('//at.alicdn.com/t/font_754425_6lrze3a7pkd.svg#iconfont') format('svg');
    }
    .desc:after{
      font-family: 'iconfont';
      content: "\e61f";
      color: #333333;
    }
    .asc:after{
      font-family: 'iconfont';
      content: "\e61d";
      color: #333333;
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
    .f_item:nth-child(1){
      border-top:  #F1F1F1 0px solid;
    }
    .f_item{
      width:1100px;border-top:  #F1F1F1 1px solid;padding: 8px 0;
    }
    .fiter.f_selected{
      background: #D3A359;border-radius: 3px;font-size: 14px;color: white;
    }
    .f_t{
      color: #333333;
      font-size: 14px;
      margin-right: 20px;
      width: 60px;
      display: inline-block;
      text-align: right;
    }
    .f_t:after{
      content: "：";
    }
    .fiter{
      background: transparent;
      color: #666666;
    }
    .f_wp{
      width: 1138px;border: #F1F1F1 1px solid;padding: 0 30px;margin-bottom: 10px;
    }
    .f_order{
      font-size: 16px;
      color: #333333;
      margin-right: 40px;
      line-height: 60px;
      cursor: pointer;
      position: relative;
    }
    .f_o_selected{
      color: #D3A359;
      border-bottom: 2px solid #D3A359;
      padding-bottom: 18px;
    }
    .f_order:hover{
      color: #D3A359;
      border-bottom: 2px solid #D3A359;
      padding-bottom: 18px;
    }
    .current_tip{
      font-size: 16px;
      color: #d3a359;
      line-height: 60px;
    }
    .total_tip{
      font-size: 16px;
      color: #333333;
      line-height: 60px;
      margin-right: 40px;
    }
    .order_wp{
      border-bottom:1px solid #f1f1f1 ;height: 60px;margin-bottom: 10px;
    }
    .pro_list>li{
      width: 268px;
      height: 407px;
      /*border: #000000 1px solid ;*/
      padding: 15px;
      float: left;
    }

    .pro_img{
      width: 268px;
      height: 268px;
    }
    .pro_list>li a {
      display: block;
      padding: 0px;
      color: #303030;
      text-decoration: none;
      font-size: 14px;
      letter-spacing: 2px;
      position: relative;

    }
    /*.pro_list>li a:hover .pro_cov {*/
    /*display: block;*/
    /*}*/
    .pro_list>li>.pro_title{
      padding-top: 20px;
      width: 268px;
      text-overflow: ellipsis;
      white-space: nowrap;
      text-align: center;
      overflow: hidden;
    }
    .btn_buy {
      height: 43px;
      width: 120px;
      border-top: 1px solid #D4D4D4;
      border-bottom: 1px solid #D4D4D4;
      color: #D4D4D4;
      display: block;
      margin: 0 auto;
    }
    .btn_buy:active{
      position: relative;
      top: 1px;
      left: 1px;
    }
    .btn_buy:hover{
      border-top: 1px solid #D3A359;
      border-bottom: 1px solid #D3A359;
      color: #D3A359;
    }
    .pro_jf{
      font-size: 14px;color: #D3A359;text-align: center;padding: 10px;
    }
    .pro_btn{
      background-color: transparent;border: #CCCCCC 1px solid;width: 40px;height: 35px;
    }
    .pro_btn:hover{
      background-color: #D58512;
      border: #D58512 1px solid;
    }
    .pro_btn.pro_btn_add{
      background-color: #D58512;
      border: #D58512 1px solid;
    }
    .pro_cov{
      display: none;position: absolute;top: 0;left: 0;width: 268px;height: 268px;background-color: #303030;opacity: .8;margin-right: 10px;
    }
    .pro_cov>div{
      position: absolute;top: 50%;left: 50%;transform: translate(-50%,-50%);
    }
    .sale{
      position: absolute;
      top: -10px;
      right: -10px;
      width: 51px;
      height: 47px;
      background-color: #a40000;
      line-height: 47px;
      text-align: center;
      color: white;
      letter-spacing: 2px;
      font-size: 10px;
    }
    .pro_new{
      background-color: #D3A359;
    }
    .ftt{
      position: absolute;
      top: 15px;
      left: 0;
    }
  </style>
</head>

<body>
<div class="header_line"></div>
<jsp:include page="mall_nav.jsp"></jsp:include>
<div class="news_bn">
  <div class="wrapp">
    <span class="bread mall_bread"><a href="/MallHome/list">首页</a> ></span>
    <span class="bread mall_bread" style="padding-left: 25px;">共有</span>
    <span class="bread rs_num mall_bread"></span>
    <span class="bread mall_bread">个结果</span>
  </div>


</div>
<div class="wrapp" >
  <div class="f_wp">
    <div class="f_item" id="brand" style="padding-left: 80px;position: relative;">
    </div>
    <div class="f_item" id="wight">
      <label class="f_t" style="margin-right: 15px;">重量</label>
      <button class="fiter onSelect" data-v="" data-type="weightStatu">全部</button>
      <button class="fiter onSelect" data-v="1" data-type="weightStatu">1kg以下</button>
      <button class="fiter onSelect" data-v="2" data-type="weightStatu">1-5kg</button>
      <button class="fiter onSelect" data-v="3" data-type="weightStatu">5kg以上</button>
    </div>
  </div>
</div>
<div class="wrapp">
  <div class="order_wp">
    <div style="float: left;">
      <a class="f_order orderSelect f_o_selected" data-v="" data-type="sortStatu">综合排序</a>
      <a class="f_order orderSelect" data-v="1" data-type="sortStatu">价格排序</a>
      <a class="f_order orderSelect" data-v="3" data-type="sortStatu">销量排序</a>
      <a class="f_order orderSelect" data-v="5" data-type="sortStatu">人气排序</a>
      <a class="f_order orderSelect" data-v="7" data-type="sortStatu">最新上架</a>
    </div>
    <div style="float: right;">
      <span class="current_tip"></span>
      <span>/</span>
      <span class="total_tip"></span>
      <a id="pre" href="javascript:;" ><i class="iconfont">&#xe600;</i></a>
      <a id="next" href="javascript:;" ><i class="iconfont">&#xe601;</i></a>

    </div>
  </div>
</div>

<div class="wrapp">
  <ul class="pro_list">


  </ul>
</div>
<div style="height: 28px; width: 360px; margin: 60px auto 80px auto;">
  <ul class="page" id="page"></ul>
</div>








<jsp:include page="/WEB-INF/jsp/footer/footer.jsp"></jsp:include>
</body>
<script src="/static/js/jquery-2.2.0.min.js"></script>
<script type="text/javascript" src="/static/js/slick.min.js"></script>
<script type="text/javascript" src="/static/js/main.js" ></script>
<script src="/static/js/page.js"></script>
<script>




  var options,
          pageNo = getUrlParms("pageNo"),
          pageSize = getUrlParms("pageSize"),
          $current_tip = $(".current_tip")[0],
          $total_tip = $(".total_tip")[0],
          $rs_num = $(".rs_num")[0],
          $first = $("#first"),
          $second = $("#second");
  if(pageNo==null)pageNo = 1;
  if(pageSize==null)pageSize = 16;
  getdata(pageNo,pageSize);

  function getdata(pageNo,pageSize){
    var url = getUrlParms();
    if(url.indexOf("pageNo")==-1){
      url+="&pageNo="+pageNo+"&pageSize="+pageSize;
    }

    $.ajax({
      url: "/QueryGoodsList/detailList?"+ encodeURI(url),
      type:"post",
      dataType: "json",
      success:function(rs){
        $rs_num.textContent = rs.data.count;
        $current_tip.textContent = pageNo;
        $total_tip.textContent = Math.ceil(rs.data.count/pageSize);
        if(rs.data.second){
          $second.text(rs.data.second.name);
          $second.attr("href","/GoodsType/detail?leaveId="+rs.data.first.id+"&goodsTypeId="+rs.data.first.pid);
        }
        $first.text(getUrlParms("query"));
        var datas=rs.data.listBos;
        htmlBrand(rs.data.brandBos);
        htmlGoods(datas,rs.data.Url);
        options={
          "id":"page",
          "data":datas,
          "maxshowpageitem":3,
          "pagelistcount":pageSize,
          "callBack":function(result){
          }
        };
        page.init(rs.data.count,pageNo,options);
      }
    });
  }
  function htmlGoods(rs,burl){
    var $list = $(".pro_list");
    $list.empty();
    for (var i = 0; i < rs.length; i++) {



      var html = ['<li><a target="_blank" href="/GoodsDetail/page?id=',
        rs[i].id,
        '"><img class="pro_img" src="',
        burl,
        rs[i].introduceImgUrl,
        '" /><div class="pro_cov"><div><button class="pro_btn">',
        '<i class="iconfont">&#xe682;</i></button>',
        '<button class="pro_btn"><i class="iconfont">&#xe8c4;</i></button>',

        '</div></div></a><a target="_blank" class="pro_title" href="/GoodsDetail/page?id=',
        rs[i].id,
        '">',
        rs[i].name,
        '</a><p class="pro_jf">积分：<span>',
        rs[i].price,
        '</span></p><button class="btn_buy" data-sku="',
        rs[i].sku,
        '">立即兑换</button></li>'].join("");
      $list.append(html)
    }
    $list.append('<div style="clear: both;"></div>')


    var $buy = $(".btn_buy");
    $buy.on("click",function(){

      console.log($(this).data("sku"));
      window.location.href = "/sbmit/page?sku="
    })
  }

  function htmlBrand(arr){
    var brand = $("#brand");
    var brandId = getUrlParms("brandId");
    if(brandId=="")brandId = null;
    var html = ['<label class="f_t ftt">品牌</label>',
      '<button data-v="" data-type="brandId" class="onSelect fiter ',
      brandId == null ? 'f_selected' : '',
      '">',
      '全部</button>'].join("");
    for (var i = 0; i < arr.length; i++) {

      html += ['<button data-type="brandId" class="onSelect fiter ',
        arr[i].id == brandId ? 'f_selected' : '',
        '" ',
        ' data-v="',
        arr[i].id,
        '">',
        arr[i].name,
        '</button>'].join("");
    }
    brand.empty();
    brand.append(html);


    $sel = $(".onSelect");
    $sel.on("click",function(){
      $this = $(this);
      var type = $this.data("type");
      var value = $this.data("v");
      var par = getUrlParms();
      var url = "/QueryGoodsList/page?"+urlReplace(type,value,par);
      window.location.href = url;
    })
  }

  $(function(){
    /*排序点击事件*/
    $sel = $(".orderSelect");
    $sel.on("click",function(){
      $this = $(this);
      var type = $this.data("type");
      var value = $this.data("v");
      if(value!='') {
        value = Number(value);
        if(value%2==0){
          value-=1;
        }else{
          value+=1;
        }
      }
      var par = getUrlParms();
      var url = "/QueryGoodsList/page?"+urlReplace(type,value,par);
      window.location.href = url;
    })
    /*排序点击事件*/
    /*分页点击事件*/
    $("#pre").on("click",function(){
      var cur = Number($(".current_tip")[0].textContent);
      if(cur!=1){
        getdata((cur-1),16)
      }
    })
    $("#next").on("click",function(){
      var cur = Number($(".current_tip")[0].textContent);
      var total = Number($(".total_tip")[0].textContent);
      if(!total)return;
      if(cur!=total){
        getdata((cur+1),16)
      }
    })
    /*分页点击事件*/


    /*重量样式切换*/
    var btn = $("#wight button");
    var weightStatu = getUrlParms("weightStatu");
    if(weightStatu==""||weightStatu==null)$(btn[0]).addClass("f_selected");
    btn.each(function(i,e){
      var $this = $(e);
      if(weightStatu==$this.data("v")){
        $this.addClass("f_selected");
      }
    });
    /*重量样式切换*/
    /*排序样式切换*/
    $sel.removeClass("f_o_selected")
    $sel.removeClass("desc")
    $sel.removeClass("asc")
    var sortStatu = getUrlParms("sortStatu");
    if(sortStatu==""||sortStatu==null){
      $($sel[0]).addClass("f_o_selected");
      return;
    }
    sortStatu = Number(sortStatu);
    if(sortStatu==2||sortStatu==1){
      $($sel[1]).addClass("f_o_selected");
      if(sortStatu%2==0){
        $($sel[1]).addClass("desc");
      } else {
        $($sel[1]).addClass("asc");
      }
      $($sel[1]).data("v",sortStatu);
    } else if(sortStatu==3||sortStatu==4){
      $($sel[2]).addClass("f_o_selected");
      if(sortStatu%2==0){
        $($sel[2]).addClass("desc");
      } else {
        $($sel[2]).addClass("asc");
      }
      $($sel[2]).data("v",sortStatu);
    }else if(sortStatu==5||sortStatu==6){
      $($sel[3]).addClass("f_o_selected");
      if(sortStatu%2==0){
        $($sel[3]).addClass("desc");
      } else {
        $($sel[3]).addClass("asc");
      }
      $($sel[3]).data("v",sortStatu);
    }else if(sortStatu==7||sortStatu==8){
      $($sel[4]).addClass("f_o_selected");
      if(sortStatu%2==0){
        $($sel[4]).addClass("desc");
      } else {
        $($sel[4]).addClass("asc");
      }
      $($sel[4]).data("v",sortStatu);
    }
    /*排序样式切换*/

  });
</script>
</html>

