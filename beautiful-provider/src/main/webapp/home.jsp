<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.entity.*,com.dao.*,com.dao.impl.*,com.service.*,com.web.*,com.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>美丽说首页</title>
<script type="text/javascript" src="<%=basePath%>js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/home.js"></script>
<link rel="stylesheet" href="<%=basePath%>css/home.css" type="text/css">

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
<li class="line5"><a href="<%=basePath%>shopController/toShopping.do"><em class="gwc"></em>我的购物车</a></li>
<li class="line6"><a href="<%=basePath%>orderController/toDD.do"><em class="dtan"></em>我的订单</a></li>
<li class="line7"><a href="<%=basePath%>center_zhu.jsp"><em class="hyuan"></em>个人中心 </a></li>
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
<!--搜索框-->
<div class="soso">
<!--搜索框上部-->
<div class="tss">
<span class="ts1 ts1s" data-type = "0">宝贝</span>
<span class="ts1" data-type = "1">店铺</span>
</div>
<!--搜索框主体-->
<div class="tss1">
<input type="" name="" class="td" onFocus=" if(this.value=='衬衫不是“他”的专属') this.value='' " onBlur=" if(this.value=='') this.value='衬衫不是“他”的专属' " style="color: #666666;" value="衬衫不是“他”的专属" /></input>
<span class="tds"></span>
</div>
<!--搜索框下部-->
<div class="tss2">
<div class="ts">
<a href="">外套</a>
<a href="">衬衫</a>
<a href="" style="color: #FF6699;">套装</a>
<a href="" >连衣裙</a>
<a href="" style="color: #FF6699;">背带裤</a>
<a href="" >运动鞋</a>
<a href="" style="color: #FF6699;">卫衣</a>
<a href="">单鞋</a>
<a href="">背带裙</a>
<a href="">睡衣</a>
</div>
</div>
</div>
</div>
</div>
<!--搜索框结束-->
<!--右侧导航栏开始-->
<div id="wsa">
<div id="adri">
<!--右侧导航栏显示部分-->
<div id="adrs">
<div id="adrc">
<a href="购物车.html" id="adrcc">
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
<a href="" id="right_1">
<em class="red_yh"></em><!--隐藏栏的图片样式-->
<em class="w_yh"></em><!--隐藏栏的鼠标悬浮图片样式-->
<span class="stip">我的优惠券<em class="blck_s"></em></span></a>
<a href="" id="right_2">
<em class="red_like"></em>
<em class="w_like"></em>
<span class="stip">喜欢的商品<em class="blck_s"></em></span></a>
<a href="问卷调查.html" id="right_3">
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
<!--右侧导航栏结束-->
<!--导航开始-->
<div id="nav">
<div id="dh">
<div id="ds">
<ul>
<li><a href="美丽说首页.html" class="ds1">首页</a></li>
<li><a href="" class="ds2">最热</a></li>
<li><a href="" class="ds3">上衣</a></li>
<li><a href="" class="ds4">裙子</a></li>
<li><a href="" class="ds5">裤子</a></li>
<li><a href="" class="ds6">鞋子</a></li>
<li><a href="" class="ds7">包包</a></li>
<li><a href="" class="ds8">配饰</a></li>
<li style="position: relative;">
<a href="" class="ds9">更多<em class="dssss"></em></a>
<ul id="sews">
<li><a href="">内衣</a></li>
<li><a href="">美装</a></li>
<li><a href="">男装</a></li>
<li><a href="">童装</a></li>
<li><a href="">家居</a></li>
<li><a href="">小家电</a></li>
<li><a href="">食品</a></li>
</ul>
</li>
<li><span class="dssp"></span></li>
<li><a href="Hi范儿.html" class="ds10">Hi范儿</a></li>
<li><a href="韩国馆.html" class="ds11">韩国馆</a></li>
<li><a href="团购.html" class="ds12">团购</a></li>
</ul>
</div>
</div>
</div>
<!--导航区域结束-->
<!--center区域开始-->
<div id="center">
<!--------分类导航开始----->
<div id="fl">
<!--每日推荐菜单-->
<div class="fls">
<!--每日推荐主体部分-->
<div class="flx">
<h2>每日推荐</h2>
<p style="margin-top: 10px;">
<a href="" id="fp">春季新品</a>
<a href="" id="fp">甜美韩系</a>
<a href="" id="fp">毛呢外套</a>
<a href="">大衣</a>
<a href="">T恤</a>
<a href="">时尚套装</a>
</p>
<!--每日推荐的小三角形-->
<samp class="corner">&gt;</samp>
</div>
<!--每日推荐的二级菜单-->
<ul class="nav_ul">
<!--流行风格菜单-->
<li>
<h4><a href="" target="_blank">流行风格</a></h4>
<p>
<a href="" target="_blank">复古风</a>
<a href="" target="_blank">运动风</a>
<a class="red_f" href="" target="_blank">新浪漫主义</a>
<a href="" target="_blank">街头混搭</a>
<a href="" target="_blank">中性风</a>
<a href="" target="_blank">嬉皮风</a>
<a href="" target="_blank">波西米亚</a>
<a href="8" target="_blank">民族风</a>
</p>						
</li>
<!--流行款式菜单-->
<li>
<h4><a href="" target="_blank">流行款式</a></h4>
<p>
<a href="" target="_blank">宽松白衬衫</a>
<a href="" target="_blank">长款毛衣</a>
<a href="" target="_blank">短外套</a>
<a href="" target="_blank">宽松直筒裙</a>
<a class="red_f" href="" target="_blank">中长款外套</a>
<a href="" target="_blank">短款卫衣</a>
<a class="red_f" href="" target="_blank">流苏针织衫</a>
<a href="" target="_blank">短款皮衣</a>
</p>
</li>
<!--流行材质菜单-->	
<li>		
<h4><a href="" target="_blank">流行材质</a></h4>
<p>											
<a href="" target="_blank">网纱</a>		
<a href="" target="_blank">牛仔</a>
<a href="" target="_blank">蕾丝</a>
<a href="">皮革</a>
<a class="red_f" href="" target="_blank">麂皮</a>
</p>
</li>	
</ul>
</div>
<!--2016流行菜单-->
<div class="fls">
<!--2016流行主菜单-->
<div class="flx">
<h2>2016流行</h2>
<p style="margin-top: 10px;">
<a href="">街头混搭</a>
<a href="" id="fp">极简风</a>
<a href="">宽松直筒裙</a>
<a href="" id="fp">中长款外套</a>
<a href="">皮革</a>
<a href="" id="fp">中长款外套</a>
<a href="">皮革</a>
<a href="" id="fp">麂皮</a>
</p>
<!--2016流行主菜单的小三角形-->
<samp class="corner">&gt;</samp>
</div>
<!--2016流行的二级菜单-->
<ul class="nav_ul">
<!--流行风格菜单-->
<li>
<h4><a href="" target="_blank">流行风格</a></h4>
<p>
<a href="" target="_blank">复古风</a>
<a href="" target="_blank">运动风</a>
<a class="red_f" href="" target="_blank">新浪漫主义</a>
<a href="" target="_blank">街头混搭</a>
<a href="" target="_blank">中性风</a>
<a href="" target="_blank">嬉皮风</a>
<a href="" target="_blank">波西米亚</a>
<a href="8" target="_blank">民族风</a>
</p>						
</li>
<!--流行款式菜单-->
<li>
<h4><a href="" target="_blank">流行款式</a></h4>
<p>
<a href="" target="_blank">宽松白衬衫</a>
<a href="" target="_blank">长款毛衣</a>
<a href="" target="_blank">短外套</a>
<a href="" target="_blank">宽松直筒裙</a>
<a class="red_f" href="" target="_blank">中长款外套</a>
<a href="" target="_blank">短款卫衣</a>
<a class="red_f" href="" target="_blank">流苏针织衫</a>
<a href="" target="_blank">短款皮衣</a>
</p>
</li>	
<!--流行材质菜单-->	
<li>		
<h4><a href="" target="_blank">流行材质</a></h4>
<p>											
<a href="" target="_blank">网纱</a>		
<a href="" target="_blank">牛仔</a>
<a href="" target="_blank">蕾丝</a>
<a href="">皮革</a>
<a class="red_f" href="" target="_blank">麂皮</a>
</p>
</li>
</ul>
</div>
<!--时尚经典菜单-->
<div class="fls">
<!--时尚经典主菜单-->
<div class="flx">
<h2>时尚经典</h2>
<p style="margin-top: 10px;">
<a href="" id="fp">韩系</a>
<a href="" id="fp">小香风</a>
<a href="">学院风</a>
<a href="">条纹</a>
<a href="">千鸟格</a>
<a href="">条纹</a>
<a href="">千鸟格</a>
<a href="">针织</a>
<a href="">针织</a>
</p>
<!--时尚经典主菜单的小三角形-->
<samp class="corner">&gt;</samp>
</div>
<!--时尚经典的二级菜单-->
<ul class="nav_ul">
<!--经典风格菜单-->
<li>							
<h4><a href="" target="_blank">经典风格</a></h4>
<p>
<a href="" target="_blank">欧美风</a>
<a class="red_f" href="" target="_blank">韩系</a>
<a href=" " target="_blank">森女风</a>
<a class="red_f" href="" target="_blank">小香风</a>
<a class="red_f" href="" target="_blank">OL风</a>
</p>
</li>
<li>
<!--经典元素菜单-->
<h4><a href="" target="_blank">经典元素</a></h4>
<p>																
<a href="" target="_blank">条纹</a>
<a href="" target="_blank">做旧</a>
<a class="red_f" href="" target="_blank">迷彩 </a>
<a href="" target="_blank">格子</a>
</p>
</li>
<li>
<!--经典材质菜单-->
<h4><a href="" target="_blank">经典材质</a></h4>
<p>																
<a href="" target="_blank">纯棉</a>
<a href="" target="_blank">雪纺</a>
<a class="red_f" href="" target="_blank">毛呢</a>
<a href="" target="_blank">针织</a>
</p>
</li>
<li>
<!--经典颜色菜单-->
<h4><a href="" target="_blank">经典颜色</a></h4>
<p>																
<a class="red_f" href="" target="_blank">黑色</a>
<a href="" target="_blank">白色</a>
<a href="" target="_blank">灰色</a>
<a href="" target="_blank">驼色</a>
<a class="red_f" href="" target="_blank">蓝色</a>
</p>
</li>
</ul>
</div>
<!--实穿百搭菜单栏-->
<div class="fls">
<!--实穿百搭主菜单栏-->
<div class="flx">
<h2>实穿白搭</h2>
<p style="margin-top: 10px;">
<a href="" id="fp">呢大衣</a>
<a href="" id="fp">收腰棉衣</a>
<a href="">针织开衫</a>
<a href="" id="fp">双排扣外套</a>
<a href="" id="fp">收腰棉衣</a>
<a href="">针织开衫</a>
<a href="" id="fp">双排扣外套</a>
</p>
<!--实穿百搭菜单栏的小三角形-->
<samp class="corner">&gt;</samp>
</div>
<!--实穿百搭的二级菜单栏-->
<ul class="nav_ul">
<!--裙子栏-->
<li>
<h4><a href="" target="_blank">裙子</a></h4>
<p>
<a class="red_f" href="" target="_blank">长款连衣裙</a>
<a href="" target="_blank">运动裙</a>
<a href="" target="_blank">高腰短裙</a>
<a class="red_f" href="" target="_blank">针织半身裙</a>
</p>						
</li>
<!--裤子栏-->
<li>
<h4><a href="" target="_blank">裤子</a></h4>
<p>
<a class="red_f" href="" target="_blank">黑色小脚裤</a>
<a href="" target="_blank">纯色打底裤</a>
<a class="red_f" href="" target="_blank">修身牛仔裤</a>
<a href="" target="_blank">锥形裤</a>	
<a class="red_f" href="" target="_blank">背带牛仔裤</a>	
</p>
</li>	
<li>
<!--鞋包配栏-->
<h4><a href="" target="_blank">鞋包配</a></h4>
<p>		
<a class="red_f" href="" target="_blank">单肩挎包</a>
<a href="" target="_blank">长款钱包</a>
<a class="red_f" href="" target="_blank">双肩包</a>	
<a href="" target="_blank">黑色单肩包</a>
<a href="" target="_blank">极简配饰</a>
<a href="" target="_blank">厚底一脚蹬</a>
</p>
</li>
</ul>
</div>
<!--百变廓形菜单栏-->
<div class="fls" style="border: none;">
<!--百变廓主形菜单栏-->
<div class="flx">
<h2>百变廓形</h2>
<p style="margin-top: 10px;">
<a href="" id="fp">收腰</a>
<a href="">宽松</a>
<a href="">直筒</a>
<a href="">A字</a>
<a href="">H型</a>
<a href="">X型</a>
<a href="" id="fp">S型</a>
<a href="">T型</a>
<a href="">I型</a>
<a href="">A字</a>
<a href="">H型</a>
<a href="">X型</a>
<a href="" id="fp">S型</a>
<a href="">T型</a>
<a href="">I型</a>
</p>
<!--百变廓形菜单栏的小三角形-->
<samp class="corner">&gt;</samp>
</div>
<!--百变廓形的二级菜单栏-->
<ul  class="nav_ul">
<li>
<h4><a href="" target="_blank">百变廓形</a></h4>
<p>
<a class="red_f" href="" target="_blank">收腰</a>
<a href="" target="_blank">宽松</a>
<a class="red_f" href="" target="">紧身</a>
<a href="" target="_blank">直筒</a>	
<a href="" target="_blank">H型</a>															
</p>
</li>
</ul>   	
</div>
</div>
<!--分类导航结束-->
<!--图片导航开始-->
<div class="fl_s">
<!--图片轮播区域-->
<div class="tu">
<img src="<%=basePath%>img/nb1s1.JPG" alt="" style="display:block;" />
<img src="<%=basePath%>img/nb1s2.JPG" alt="" />
<img src="<%=basePath%>img/nb1s3.JPG" alt="" />
<img src="<%=basePath%>img/nb1s4.JPG" alt="" />
</div>
<!--左右箭头-->
<div class="ups" >
<a href="javascript:void(0)" class="btn_left"></a>
<a href="javascript:void(0)" class="btn_right"></a>
</div>
<!--图片下部表示图片序号的圆点	-->			
<div class="dos">
<div class="dor">
<a class="doro"></a>
<a class="doro"></a>
<a class="doro"></a>
<a class="doro"></a>
</div>
</div>
</div>
<!--图片轮播区域结束-->
<!--下部图片区域-->
<div class="fl_s1">
					<c:choose>
					<c:when test="${empty goods1}">没有数据</c:when>
					<c:otherwise>
					<c:forEach items="${goods1}" var="a">					
					<img src="<%=basePath%>image/${a.gimg}" style="height: 145px; width: 182px; float:left; " alt="" />
					</c:forEach>
					</c:otherwise>
					</c:choose>
</div>
<!--下部图片区域结束-->
</div>
<!--图片导航区域结束-->
<!--center区域结束-->
<!-----------------下部开始------------>
<!--第一个区域-->
<div id="di">
<!----------护栏开始---------->
<div class="di_t">

<div class="di_tl"></div>
</div>
<!----------护栏结束---------->
<!-----------图片区域开始--------------->
<!--第一个区域-->

<!--护栏部分-->
<div class="di_l">
<div class="di_t"><h3>正在流行<span class="slink">流行元素 权威榜单</span></h3></div>
</div>
<!--图片部分-->
<div class="tp2_1" style="height: 183px; width: 1220px;float:left">
<c:choose>
					<c:when test="${empty goods2}">没有数据</c:when>
					<c:otherwise>
					<c:forEach items="${goods2	}" var="a">					
					<img src="<%=basePath%>image2/${a.gimg}" style="height: 183px; width: 183px; float:left; " alt="" />
					</c:forEach>
					</c:otherwise>
					</c:choose>
</div>
<!--/*第二个区域*/-->
<!--护栏部分-->
<div class="di_l">
<div class="di_t">
<h3>新品精选<span class="slink">尖货来袭 要你好看</span></h3>
<div class="di_tl"><a href=" ">更多精品<em class="tps"></em></a></div>
</div>
</div>
<!--主体部分-->
<div class="tp3_1">
<!--第一个图片区域-->
<div class="tp3_2" style="height: 474px; width: 1220px;float:left">
					<c:choose>
					<c:when test="${empty goods3}">没有数据</c:when>
					<c:otherwise>
					<c:forEach items="${goods3	}" var="a">	
					<div style="height: 379.2px; width: 242px;float:left">	
					<div class="tp3_3"><img src="<%=basePath%>image2/${a.gimg}" style="height: 340px; width: 224px; float:left; " alt="" /></div>
					<div class="tp3_4"><span class="jg">￥${a.gprice}</span></div>
					<div class="tio">><a href="<%=basePath%>goodController/toGoods.do?id=${a.gid }">${a.gname}</a></div>
					</div>		
					</c:forEach>
					</c:otherwise>
					</c:choose>
</div>

<!--第二个图片区域-->

<!--第三个图片区域-->

<!--第四个图片区域-->

<!--第五个图片区域-->

 </div>
<!-- 第三个区域-->
<!--护栏部分-->
<div class="di_l">
<div class="di_t">
<h3 style="width: 278px;">Desire 明星同款<span class="slink">明星热捧最IN单品</span></h3>
<div class="di_tl"><span href=" ">更多明星同款<em class="tps"></em></a></div>
</div>
</div>
<!--主体部分-->
<div class="tp4_1">
<!--左侧图片区域-->
<div class="top4_2" style="height: 301.6px; width:1220px;float:left">
<!--图片区域-->

	<c:choose>
					<c:when test="${empty goods4}">没有数据</c:when>
					<c:otherwise>
					<c:forEach items="${goods4	}" var="a">	
					<div style="height: 301.6px; width: 400.8px;float:left">	
					<div class="tp4_3" style=" width: 358.8px;float:left""><img src="<%=basePath%>image2/${a.gimg}"  alt="" /></div>
					<div class="yjh"><span class="jg">￥${a.gprice}</span></div>
					<div class="tio2" ><a href="">${a.gname} </a></div>
					<div class="tp4_6" >${a.gjieshao }</div>
					</div>
					</c:forEach>
					</c:otherwise>
					</c:choose>
<!--主体区域-->

</div>
</div>
<!--中间图片区域-->

<!--右侧图片区域-->

<!--第四个区域-->
<div class="di_l">
<div class="di_t">
<h3>为你精选<span class="slink">为您精挑细选的宝贝</span></h3>
<div class="di_tl">
</div>
</div>
</div>
<!--主体部分-->
<div class="tp3_1" style="height: 758.6px; width:1320px;float:left">
	<c:choose>
					<c:when test="${empty goods5}">没有数据</c:when>
					<c:otherwise>
					<c:forEach items="${goods5	}" var="a">	
					<div class="tp3_2"  style="height: 350.6px; width:230px;float:left">	
					<div class="tp3_3"><img src="<%=basePath%>image2/${a.gimg}" style="height: 272px; width: 200px; float:left; " alt="" /></div>
					<div class="tp3_4" style="height: 20px; width:179px;float:left"><span class="jg">￥${a.gprice}</span></div>
					<div class="tio" style="height: 16px; width:179px;float:left"><a href="">${a.gname}</a></div>
					</div>		
					</c:forEach>
					</c:otherwise>
					</c:choose>

<!--上1单元格部分-->

<!--上2单元格部分-->

<!--上3单元格部分-->

<!--上4单元格部分-->

<!--上5单元格部分-->

<!--下1单元格部分-->

<!--下2单元格部分-->

<!--下3单元格部分-->

<!--下4单元格部分-->

<!--下5单元格部分-->

</div>
<!--第七个区域结束-->

<!--主体区域结束-->
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
</div>
</body>
</html>
