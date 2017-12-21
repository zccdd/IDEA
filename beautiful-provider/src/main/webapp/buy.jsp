<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.util.*,com.dao.*,com.dao.impl.*,com.entity.*"%>
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
<title>美丽说</title>
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/zhifu.css" />
<script type="text/javascript" src="<%=basePath%>js/jquery-1.7.2.min.js"></script>

</head>

<body>
<!--顶部导航栏-->
<div id="top">
<a name="dingbu"></a>
<div class="topz">
<ul>
<li class="line1"><a href=""><em class="wx"></em>微信登录</a></li>
<li class="line2"><a href=""><em class="qq"></em>QQ登录</a></li>
<li class="line3"><a href="<%=basePath%>login.jsp">登录</a></li>
<li class="line4"><a href="<%=basePath%>goodController/toHome.do">首页</a></li>
<li class="line5"><a href="<%=basePath%>shopping.jsp"><em class="gwc"></em>我的购物车</a></li>
<li class="line6"><a href="<%=basePath%>orderController/toDD.do"><em class="dtan"></em>我的订单</a></li>
<li class="line7"><a href="l"><em class="hyuan"></em>美丽说会员</a></li>
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

<div id="worp">
	<div class="jishi">
    	<img src="<%=basePath%>image/duihao.PNG" />
        <span id="pay_time">请您于 内完成支付</span><span id="yq">（逾期订单将被取消）</span>
    </div>
    <div id="dizhi">
    	<span id="add_adress"><img src="<%=basePath%>image/jia11.jpg" height="148px" width="148px"/></span>


    <c:forEach items="${address}" var="a">
   <div style="float: left"><span class="address">
   <td>签收人${a.uname }</td><br/>
  <td>地址：${a.address }</td><br/>
<td>详细地址：${a.xxaddress }</td><br/>
<td>手机号：${a.uphone }</td><br/>
<td>邮箱：${a.email }</td><br/>
<td><a href="<%=basePath%>addressController/deleteAddress.do?id=${a.id }"
    		onclick="return confirm('确定删除')">删除</a></td>
</span></div>
</c:forEach>
   </div> 
   
  <div id="select_adress">

    	<h4>请选择收货地址:</h4><span id="close"><input type="button" value="关闭" /></span>
    	   
    <form action="<%=basePath%>addressController/insertAddress.do" method="post">
    签收人：<input type="text" name="uname"/><br/>
      <select id="province" name="address">
        <option value="请选择">请选择</option>
      	<option value="河南">河南</option>
        <option value="河北">河北</option>
        <option value="甘肃">甘肃</option>
      </select>
      <select id="city" name="address1">
      	<option value="请选择">请选择</option>
      </select>
      <select id="street" name="address2">
      	<option value="请选择">请选择</option>
      </select><br />
      
    <dt class="a_left" ><font size="-1">详细收货地址： </font></dt>
    <textarea placeholder="内容限25字" rows="3" cols="40" id="xiangxi_adress" name="xxaddress"></textarea><br />
    <dt class="a_left">手机号：<input type="text" id="phone" name="uphone" /></dt>
    <dt class="a_left">邮编：&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="youbian" name="email" /></dt>
    <input type="submit" id="queren_btn" value="确认" />
    </div></form>


    <div id="cover"> 
   </div>
</div>
<div id="worp_bottom">
    <div>
    	<span>扫码支付</span>
        <img src="<%=basePath%>image/zhifubaologo.PNG" height="30px" width="100px" /><img src="<%=basePath%>image/weixinlogo.PNG" height="31" width="109" />
        <div class="zhifu">
        	<div class="zhifubao">
            	<div id="span"><p>使用支付宝钱包扫码支付</p></div><br />
                <div id="ma"><img src="<%=basePath%>image/sao.jpg" height="185px" width="185px" /></div>
            </div>
            <div class="weixin">
            	<div id="span"><p>使用微信扫码支付</p></div><br />
                <div id="ma"><img src="<%=basePath%>image/sao.jpg" height="185px" width="185px" /></div>
            </div>
        </div>
    </div>
</div>
<div class="jiesuan">
	<div id="appendchk" class="rg_submit">
	</div>
</div>
<form action="OrderServlet" method="post">
	<table align="center">
				<tr class="title">
					<th class="view">图片预览</th>
					<th>商品信息</th>
					<th class="nums">数量</th>
					<th class="price">价格</th>
					<th class="nums">合计</th>
				</tr>
					
					<c:set var="total" value="0"></c:set>
					<c:forEach items="${cart}" var="book">	
					<tr>
						<td class="thumb">
						<img src="<%=basePath%>image2/${book.value.tpname}" /></td>
						<td class="title">${book.value.name}</td>
						<td>
						<input name="counts${book.value.gid }" id="counts${book.value.gid}" readonly="readonly"
							value="${book.value.counts}" size="2"/>
						</td>
						<td>￥
							<div id="price${book.value.gid}" >${book.value.price}</div>
						</td><!--
						<td>
							<span id="sum${book.value.gid}"/>${book.value.counts*book.value.price}</span>
							<c:set var="total" 
								value=
								"${total+book.value.counts*book.value.price}"></c:set>
							<input type="hidden" name="items" value="10:2:31.6"/>
						</td>-->
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
					</tr>
					</c:forEach>
				<tr><td colspan="5">		
			<div class="button">
				<div id="divzcc" style="cursor:pointer; height: 30px; width: 80px; line-height: 30px; color: white;font-size: 16px; margin-top:5px;background-color: palevioletred">
					<div style="margin-left: 22px">付款</div></div>
</div>
</td>
</tr>
</table>
</form>
</div>
<div class="reg_ft">©Copyright 2010-2011 美丽说 Meilishuo.com (增值电信业务经营许可证：浙B2-20110349) </div>
<div class="ft"><img src="<%=basePath%>image/支付/wei.PNG" /></div>
</body>
</html>
 <script type="text/javascript">
	 $(document).ready(function(){
		 $("#divzcc").click(function(){
			 location.href="<%=basePath%>orderController/toBuyyes.do";
		 })
	 })
	$("#sub").click(function(){
	if($("#dizhi span").length==1){alert("请添加或选择收货地址后付款");}
	else
	window.location.href='buyyes.jsp';
})
//倒计时
	var time_num=3599;//总秒数
	function timer(){
		var fen=parseInt(time_num/60);
		var miao=(time_num%60);
		$("#pay_time").html("请您于<font color='blue'>"+fen+"</font>分<font color='blue'>"+miao+"</font>秒内完成支付");
		time_num--;
	}
	setInterval(timer,1000);
//add_adress
var province=new Array();
province=['河南','河北','甘肃'];
province['河南']=['郑州','许昌','平顶山'];
province['河南']['郑州']=['中原区','二七区','金水区','上街区'];
province['河南']['许昌']=['禹州','胖东来','鄢陵'];
province['河南']['平顶山']=['郏县','卫东区'];
province['河北']=['石家庄','衡水','保定'];
province['河北']['石家庄']=['石家庄1号街','石家庄2号街'];
province['河北']['衡水']=['衡水1号街','衡水2号街'];
province['河北']['保定']=['保定1号街','保定2号街'];
province['甘肃']=['兰州','酒泉','威武'];
province['甘肃']['兰州']=['兰州1号街','兰州2号街'];
province['甘肃']['酒泉']=['酒泉1号街','酒泉2号街'];
province['甘肃']['威武']=['威武1号街','威武2号街'];
$("#province").change(function(){	
	change();
})
$("#city").change(function(){city_change();})
function change(){
	var pro=$("#province");
	var city=$("#city");
	var street=$("#street");
	if(pro.val()!='请选择'){
	$("#city").empty();
	$("#street").empty();
	  for(var i=0;i<province[pro.val()].length;i++){
		$("#city").append("<option value="+province[pro.val()][i]+">"+province[pro.val()][i]+"</option>");		
	  }
	  
	  for(var j=0;j<province[pro.val()][city.val()].length;j++){
		$("#street").append("<option value="+province[pro.val()][$("#city").val()][j]+">"+province[pro.val()][$("#city").val()][j]+"</option>");
	  }
	}else{
		$("#city").empty();
		$("#street").empty();
		$("#province").append("<option value='选请择'>请选择</option>");
		$("#city").append("<option value='请选择'>请选择</option>");
		$("#street").append("<option value='请选择'>请选择</option>");
	}
}
function city_change(){
	var pro=$("#province");
	var city=$("#city");
	var street=$("#street");
	$("#street").empty();
	for(var i=0;i<province[pro.val()][city.val()].length;i++){
		$("#street").append("<option value="+province[pro.val()][city.val()][i]+">"+province[pro.val()][city.val()][i]+"</option>");
	}
}
$("#queren_btn").click(function(){
	if(checkphone()&&checkyoubian()&&$("#province").val()!='请选择'&&$("#xiangxi_adress").val()!=''){
		var string=$("#address").val();
		
		if(id<=5){
		$("#dizhi").append("<span class='address' id='"+id+"'>"+string+"</span>");
		id++;}else{
			alert("只能添加5个收货地址哦！");
		}
		$("#cover").css("display","none");
		$("#select_adress").css("display","none");
		adress_select();
	}else alert("请确认所有信息正确填写后提交！");
})
$("#add_adress").click(function(){
	$("#cover").css("display","block");
	$("#select_adress").css("display","block");
})//遮罩层


//点击事件
$("#close").click(function(){
	$("#cover").css("display","none");
	$("#select_adress").css("display","none");
})



//详细地址限制字数
$("#xiangxi_adress").keyup(function(){
	if($(this).val().length>=25){
		$(this).val($(this).val().substr(1,25));
	}
})
//收获地址表单验证
$("#phone").focus(function(){
	$("#phone").css("background-color",'#fff');
})
$("#youbian").focus(function(){
	$("#youbian").css("background-color",'#fff');
})
$("#phone").blur(function(){
	checkphone();
})
$("#youbian").blur(function(){
	checkyoubian();
})
function checkphone(){
	var reg=/^1\d{10}$/;
	if($("#phone").val()!=""){
		if(!reg.test($("#phone").val())){
			$("#phone").css("background","#ff8066");
			return false;
		}else return true;
	}
}
function checkyoubian(){
	var reg=/^\d{6}$/;
	if($("#youbian").val()!=""){
		if(!reg.test($("#youbian").val())){
			$("#youbian").css("background","#ff8066");
			return false;
		}else{return true;}
	}
}
//收货地址选中效果
var id=1;
function adress_select(){
$(".address").each(function() {
  $(this).click(function(){
		$(this).css("border","1px solid #ff8866");
		for(var i=1;i<=5;i++){
			if(i!=$(this).attr("id")){
				$("#"+i).css("border","none");
			}
	}
	})
	
});
$("#dizhi input").click(function(){
	$(this).parent().remove();
})
}
  </script>