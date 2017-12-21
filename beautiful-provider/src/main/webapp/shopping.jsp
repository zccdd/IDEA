<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>购物车</title>
<script type="text/javascript" src="<%=basePath%>js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/shopping.js"></script>
<script type="text/javascript" src="<%=basePath%>js/shopcar.js"></script>
<link rel="stylesheet" href="<%=basePath%>css/shopping.css" type="text/css"></link></head>
<body>
<!--顶部部分开始-->
<div id="top">
<a name="dingbu"></a>
<div class="topz">
<ul>
<li class="line1"><a href=""><em class="wx"></em>微信登录</a></li>
<li class="line2"><a href=""><em class="qq"></em>QQ登录</a></li>
<li class="line3"><a href="<%=basePath%>login.jsp">登录</a></li>
<li class="line4"><a href="<%=basePath%>register.jsp">注册</a></li>
<li class="line5"><a href="<%=basePath%>shopping.jsp"><em class="gwc"></em>我的购物车</a></li>
<li class="line6"><a href="<%=basePath%>orderController/toDD.do"><em class="dtan"></em>我的订单</a></li>
<li class="line7"><a href="<%=basePath%>goodController/toHome.do"><em class="hyuan"></em>返回首页</a></li>
<li class="line8">
<a href=""><em class="app"></em>下载App<em class="arrow"></em></a>
<ul style="display: none;">
<li class="sao">
<img src="<%=basePath%>image/sao.jpg"/>
<p style="font-size: 14px;color: #FF6699;">美丽说客服端</p>
<p style="color: #666666;">发现流行，只做正确流行款</p>
</li>
</ul>
</li>
<li class="line9"><a href="<%=basePath%>center_zhu.jsp" style="border:none">个人中心</em></a></li>
</ul> 
</div>
</div>
<!--顶部部分结束-->
<!--搜索框部分开始-->
<div id="so">
<div class="sox">
<!--logo部分开始-->
<div class="logo"><img src="<%=basePath%>image/logo.png" /></div>
<div class="sublogo"><img src="<%=basePath%>image/gg.png"/></div>
<!--logo部分结束-->
<!--右侧导航栏开始-->
<div id="wsa">
<div id="adri">
<!--右侧导航栏显示部分-->
<div id="adrs">
<div id="adrc">
<a href="" id="adrcc">
<em class="red_gwc"></em><!--图片样式-->
<em class="w_gwc"></em><!--鼠标悬浮图片样式-->
<span>购物车</span></a>
<a href="" id="adrcg">
<em class="red_xin"></em>
<em class="w_xin"></em>
<span>客服消息</span></a>
</div>
</div>
<!--右侧导航栏隐藏部分-->
<div id="base">
<div id="side">
<div class="basel"></div><!--右侧悬浮框与顶部之间的部分-->
<a href="" id="right_1">x
<em class="red_yh"></em><!--隐藏栏的图片样式-->
<em class="w_yh"></em><!--隐藏栏的鼠标悬浮图片样式-->
<span class="stip">我的优惠券<em class="blck_s"></em></span></a>
<a href="" id="right_2">
<em class="red_like"></em>
<em class="w_like"></em>
<span class="stip">喜欢的商品<em class="blck_s"></em></span></a>
<a href="" id="right_3">
<em class="red_feed"></em>
<em class="w_feed"></em>
<span class="stip">调查问卷<em class="blck_s"></em></span></a>
</div>
</div>
</div>
<!--返回顶部部分-->
<div id="fans">
<div class="top" style="display: none;">
<em class="tops"></em>
<span class="asda" style="display: none;"><a href="#dingbu">返回顶部</a></span>
</div>
</div>
</div>
</div>
<!--顶部结束-->

	<div class="list bookList" align="center">
		<form method="post" name="shoping" action="buyyes.jsp">
			<table>
				<tr class="title">
					<th class="view">图片预览</th>
					<th>商品信息</th>
					<th class="nums">数量</th>
					<th class="price">价格</th>
					<th class="nums">合计</th>
					<th class="nums">操作</th>
				</tr>
					<c:set var="total" value="0"></c:set>
					<c:forEach items="${cart}" var="book">	
			
					<tr>						
					<td>
						<td class="thumb">
						<img src="<%=basePath%>image2/${book.value.tpname}" style="height: 100px; width: 100px; float:left; " /></td>
						<td class="title">${book.value.name}</td>
						<td>
						<img src="<%=basePath%>image/edit_jian.png" width="12" height="12" onclick="jian(${book.value.gid})"/>
							
						<input id="counts${book.value.gid}" readonly="readonly"
							value="${book.value.counts}" size="2"/>
							
						<img src="<%=basePath%>image/edit_add.png" width="12" height="12"
						    onclick="add(${book.value.gid})"/>
						</td>		
						<td>￥
							<div id="price${book.value.gid}" >${book.value.price}${book.value.gid}</div>
						</td>
							<td>
							<input id="sum${book.value.gid}"
							value='<fmt:formatNumber 
								value="${book.value.counts*book.value.price}"
								type="currency"></fmt:formatNumber>' readonly="readonly"
							/>
							
							
							<c:set var="total" 
								value=
								"${total+book.value.counts*book.value.price}"></c:set>
							<input type="hidden" name="items" value="10:2:31.6"/>
						</td>
						<td>
						<a href="<%=basePath%>shopController/deleteShop.do?spid=${book.value.gid}">删除</a>
						</td>
					</tr>
					</c:forEach>
				<tr><td colspan="5">
				
			<div class="button">
				<h4>总价：
					<input id="total" name="total"
						value="${total}" readonly="readonly"/>
				元</h4>
				<input type="hidden" id="hidden_total_price" name="hidden_total_price"/>
				<a href="<%=basePath%>addressController/toBuy.do">提交订单</a>
				<a href="<%=basePath%>goodController/toHome.do">继续购买</a>
			</div>
			</td></tr>
				
			</table>
		</form>
	</div>
<!--底部开始-->
<div class="dis">
<div class="dis1">	
<div class="dis2">
<div class="dss1">
<div class="dss_1"></div>
<div class="dzi1">4000-800-577</div>
<div class="dzi2">美丽说客服热线</div>
<div class="dzi2">周一至周日：09:00-22:00</div>
</div>
<div class="dss2">
<h4>卖家帮助</h4>
<div class="tll"><a href="">新手指南</a></div>
<div class="tll"><a href="">服务保障</a></div>
<div class="tll"><a href="">帮助中心</a></div>
</div>
<div class="dss2">
<h4>商家帮助</h4>
<div class="tll"><a href="">商家入驻</a></div>
<div class="tll"><a href="">商家推广</a></div>
<div class="tll"><a href="">帮助中心</a></div>
</div>
<div class="dss2">
<h4>关于我们</h4>
<div class="tll"><a href="">关于美丽说</a></div>
<div class="tll"><a href="">联系我们</a></div>
<div class="tll"><a href="">加入美丽说</a></div>
</div>
<div class="dss2">
<h4>关注我们</h4>
<div class="tll1"><a href=""><em class="fx1"></em>新浪微博</a></div>
<div class="tll1"><a href=""><em class="fx2"></em>QQ空间</a></div>
<div class="tll1"><a href=""><em class="fx3"></em>腾讯微博</a></div>
</div>
<div class="dss3">
<div class="fx">
<h4>美丽说微信服务号</h4><img src="<%=basePath%>image/fx.png"/>
</div>
</div>
<div class="dss4">
<h4>美丽说k客服端下载</h4><a href=""><em class="fx4"></em></a>
</div>
<div class="dss5">
<span class="dsst">友情链接：</span>
<ul class="link">
<li>
<a href="" target="_blank">腾讯女性</a><a href="" target="_blank">列表网 </a>
<a href="" target="_blank">太平洋女性网</a><a href="" target="_blank">多宝汇</a>
<a href="" target="_blank">七丽女性网</a><a href="" target="_blank">酷我音乐</a>
<a href="" target="_blank">LADYMAX时尚网 </a><a href="" target="_blank">保葫芦</a>
<a href="" target="_blank">中国品牌服装网</a><a href="" target="_blank">优美网</a>
<a href="" target="_blank">男士时尚 </a><a href="" target="_blank">哈秀时尚网</a>
</li>
</ul>
<div class="dsst_1">
<a href="">更多>></a>
</div>
</div>
<div class="dss6">
Copyright ©2016 Meilishuo.com  <a href="">100798号 经营性网站备案信息  京ICP备11031139号</a>  <a herf="">京公网安备110108006045 </a></br>
客服邮箱：kf@meilishuo.com  客服电话：4000-800-577  文明办网文明上网举报电话：010-82615762  <a href="">违法不良信息举报中心 </a> <a href="">我最喜爱的人民警察评选>></a> <a href="">反诈骗信息</a>
</div>
</div>	
</div>
</body>
  <script type="text/javascript">
  	function jian(id){
			if($("#counts"+id).val()==1){
		//采用淘宝模式，如果低于1，则不用提示，直接不可用;
			$("#counts"+id).prev().attribute("disabled","disabled");
			return;
		}
  	
  		$.ajax({
  			url:'<%=basePath%>shopController/changeCartCount.do',
  			type:'post',
  			dataType:'text',
  			data:{
				spid:id,
				count:parseInt($("#counts"+id).val())-1   //  -1
  			},
  			success:function(){
  				
 				var price = $("#price"+id).html();
		  		$("#counts"+id).val(parseInt($("#counts"+id).val())-1);
		  		$("#sum"+id).val("￥"+price*$("#counts"+id).val());
		  		
		  		calcTotal();
  				
  			}
  		});
  	}
  	
  	function add(id){
  		$.ajax({
  			url:'<%=basePath%>shopController/changeCartCount.do',
  			type:'post',
  			dataType:'text',
  			data:{
				spid:id,
  				count:parseInt($("#counts"+id).val())+1
  			},
  			success:function(data){
  				if(data=="false"){
  					alert("库存不足!!!!");
  				}
  				else{
  					var price = $("#price"+id).html();
			  		$("#counts"+id).val(parseInt($("#counts"+id).val())+1);
			  		$("#sum"+id).val("￥"+price*$("#counts"+id).val());
			  		
			  		calcTotal();
  				}
  			}
  		});
  	
  	
  		
  		
  	}
  	
  	function calcTotal(){
  		// input...
  		var counts = $("input[id^=counts]").toArray();
  		var prices = $("div[id^=price]").toArray();
  		var total = 0;
  		
  		for(var i=0;i<prices.length;i++){
  			total += prices[i].innerHTML*counts[i].value;
  		}
  		
  		$("#total").val("￥"+total);
  	}
  $("#getall").click(
  function(){
    if(this.checked){
        $("input[name='checkname']").attr('checked', true)
    }else{
        $("input[name='checkname']").attr('checked', false)
    }
  })
    $(function() { 
    $("#getall").click(function() { 
        $("input[@name='checkname[]']").each(function() { 
            $(this).attr("checked", true);
        });
    })
	}); 
  </script>
</html>
