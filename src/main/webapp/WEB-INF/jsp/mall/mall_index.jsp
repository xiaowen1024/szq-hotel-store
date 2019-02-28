<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>积分商城-广和投资</title>
	<meta charset="UTF-8">
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<link rel="icon" href="/static/img/16_16 LOGO.png" type="image/x-icon">
	<!--[if lt IE 9]>
	<script src="/static/js/html5shiv.min.js"></script>
	<script src="/static/js/css3-mediaqueries.min.js"></script>
	<![endif]-->
	<link rel="stylesheet" type="text/css" href="/static/css/m_app.css?v=2"/>
	<link rel="stylesheet" type="text/css" href="/static/css/mall.css" />
	<link rel="stylesheet" type="text/css" href="/static/css/slick.css" />
	<style>
		.lunbo_a{
			display: inline-block;
			outline: none;
		}
	</style>

</head>

<body>
<div class="header_line"></div>
<jsp:include page="mall_nav.jsp"></jsp:include>
<section class="section1">
</section>
<section class="section2">
	<div id="img1">
	</div>
	<div id="ad_item">
		<p>精品推荐<span>/ Fine quality</span></p>

	</div>
</section>
<section class="section3" id="section3">
</section>
<section class="section4">
	<div id="img2">
	</div>
	<div id="new_item">
		<p>新品上架<span>/ New Arrivals</span></p>
	</div>
</section>
<jsp:include page="../footer/footer.jsp"></jsp:include>
</body>
<script src="/static/js/jquery-2.2.0.min.js"></script>
<script type="text/javascript" src="/static/js/slick.min.js"></script>
<script type="text/javascript" src="/static/js/main.js" ></script>
<script>
	var $s1 = $(".section1");
	var $adItem = $("#ad_item");
	var $newItem = $("#new_item");
	var $section3 = $("#section3");
	var $img1 = $("#img1");
	var $img2 = $("#img2");

	$.getJSON("/MallHome/info",function(rs){
		var s3 = "/Goods/page?leaveId="+rs.data.image[0]['leaveId']+"&goodsTypeId="+rs.data.image[0]['goodsTypeId'];
		var img1 = "/Goods/page?leaveId="+rs.data.recommondImage[0]['leaveId']+"&goodsTypeId="+rs.data.recommondImage[0]['goodsTypeId'];
		var img2 = "/Goods/page?leaveId="+rs.data.recommondImage[1]['leaveId']+"&goodsTypeId="+rs.data.recommondImage[1]['goodsTypeId'];
		$img1.append('<a target="_blank" href="'+img1+'"><img class="ad_1" src="'+rs.data.Url+rs.data.recommondImage[0]['image']+'"/></a>');
		$img2.append('<a target="_blank" href="'+img2+'"><img class="ad_1" src="'+rs.data.Url+rs.data.recommondImage[1]['image']+'"/></a>');
		$section3.append('<a target="_blank" href="'+s3+'"><img src="'+rs.data.Url+rs.data.image[0]['image']+'"/></a>');


		var $headul = $("#head_ul1");
		var html0="";
		$('.has_menu').hover(function() {
			$(this).find('ul').slideDown(1);
		}, function() {
			$(this).find('ul').slideUp(1);
		});


		for(var i=0;i<rs.data.banner.length;i++){

			if(rs.data.banner[i]['image']){
//				$s1.append('<a target="_blank"  href="'+rs.data.banner[i]['url']+'" class="lunbo_a"><img class="lunbo" src="'+rs.data.banner[i]['image']+'"/></a>')
				$s1.append('<a target="_blank"><img class="lunbo" src="'+rs.data.Url+rs.data.banner[i]['image']+'"/></a>')
			}
		}
		for(var i=0;i<rs.data.goods.length;i++){

			if(rs.data.goods[i]['homeState']==1){
				var html = '<div class="ad_item"><a target="_blank" href="/GoodsDetail/page?id='+rs.data.goods[i]['id']+'"><img src="';
				html+=rs.data.Url +rs.data.goods[i]['imgUrl'];
				html+='" /></a><p>';
				html+=rs.data.goods[i]['name'];
				html+='</p><p>积分：';
				html+=rs.data.goods[i]['price'];
				html+='</p><button onclick="goChange('+rs.data.goods[i]['sku']+')">立即兑换</button></div>';
				$adItem.append(html)
			}else{
				var html = '<div class="new_item"><a target="_blank" href="/GoodsDetail/page?id='+rs.data.goods[i]['id']+'"><img src="';
				html+=rs.data.Url +rs.data.goods[i]['imgUrl'];
				html+='" /></a><p>';
				html+=rs.data.goods[i]['name'];
				html+='</p><p>积分：';
				html+=rs.data.goods[i]['price'];
				html+='</p><button onclick="goChange('+rs.data.goods[i]['sku']+')">立即兑换</button></div>';
				$newItem.append(html)
			}
		}



		$s1.slick({
			autoplay:true,
			autoplaySpeed:3000,
			dots: true,
			fade: true,
			speed: 1000,
			infinite: true,
			cssEase: 'cubic-bezier(0.7, 0, 0.3, 1)'
		})
	})
	var compare = function (prop) {
		return function (obj1, obj2) {
			var val1 = obj1[prop];
			var val2 = obj2[prop];if (val1 < val2) {
				return -1;
			} else if (val1 > val2) {
				return 1;
			} else {
				return 0;
			}
		}
	}
	function oneTab(arr){
		var newArr=[];
		for (var i=0;i<arr.length;i++) {
			if(arr[i].pid==0)newArr.push(arr[i]);
		}
		return newArr.sort(compare("sort"));
	}
	function twoTab(arr,pid){
		var newArr=[];
		for (var i=0;i<arr.length;i++) {
			if(arr[i].pid==pid)newArr.push(arr[i]);
		}
		return newArr.sort(compare("sort"));
	}
	function goChange(sku){
		$.ajax({
			url: "/shoppingCar/add?sku="+sku+"&number=1",
			dataType: "json",
			success:function(rs){
				if(rs.errCode=="0010007"){
					window.location.href = "/login/loginPage"
				}else{
					window.location.href = "/sbmit/page?number=1&sku="+sku;
				}

			}
		})
	}


</script>
</html>
