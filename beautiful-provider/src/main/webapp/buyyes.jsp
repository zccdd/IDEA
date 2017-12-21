<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>支付完成</title>
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/zhifucg.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/model.css" />
<script type="text/javascript" src="<%=basePath%>js/jquery-2.2.3.min.js"></script>
</head>

<body>
<!--顶部部分开始-->
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
<li class="line7"><a href="<%=basePath%>会员中心.html"><em class="hyuan"></em>美丽说会员</a></li>
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
<input type="" name="" class="td" onFocus=" if(this.value=='衬衫不是"他"的专属') this.value='' " onBlur=" if(this.value=='') this.value='衬衫不是"他"的专属' " style="color: #666666;" value="衬衫不是"他"的专属" /></input>
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
<a href="<%=basePath%>购物车.html" id="adrcc">
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
<a href="<%=basePath%>问卷调查.html" id="right_3">
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
<!--包含推荐以及footer-->
<div id="main">
<div id="content">

<div id="body_wrap">
	<div id="shoppingcard" class="wrap">
    	<div class="easybuy_cart_head_v2">
        	<div class="succ_head">
            	
            	<p class="f16b_3"><img src="<%=basePath%>image/lvdui.PNG" />支付成功-><a href="<%=basePath%>goodController/toHome.do">首页</a></p>
                <p class="f12_6">”查看订单状态？“<a class="f12_pink" href="<%=basePath%>dingdan.jsp">查看订单&nbsp;&gt;</a></p>
            </div>
            <div class="safety_Tips">
            	安全提醒：蘑菇街不会以付款异常、卡单、系统升级为由要求您退款，谨防诈骗！
                <br>
                不要将
                <span class="safe_em">银行卡、密码、手机验证码</span>
                提供给他人，遇此情况请终止通话或举报到美丽说
                <a href="#">常见骗术</a>
            </div>
            </div>
            
        </div>
</div>
</div>
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
</html>
<script>
//顶部导航菜单
    
//========菜单下滑结束===============
     $(function(){
     	
//   	=============
//   	色块移入的显示和隐藏
     	$('.tp6_4').hover(function(){
     		
     		$('.get',$(this)).show();
     	},function(){
//回调函数   		
     		$('.get',$(this)).hide();
     	})
//   	===文字替换==
        $('.udt').hover(function(){

        $('.udt').innerHTML,$('.get .udt').html('取消关注')//替换文字
        },function(){
//回调函数
        $('.udt').innerHTML,$('.get .udt').html('已关注')//替换文字
        })
     })

//====按钮切换颜色
$(function(){
//      写一个移入显示、移出已隐藏//导航定位
        $('#wsa #adri').hover(function(){
        	
        	$('#base',$(this)).stop().animate({'right':'0'},300);
        },function(){
        	
        	$('#base',$(this)).stop().animate({'right':'-38px'},300);
        })
//      写一个移入显示、移出已隐藏//左侧定位
        $('#adrc #adrcc a em').hover(function(){
        	
        	$('.red_gwc',$(this)).hide();
        	$('.w_gwc',$(this)).show();
        },function(){
        	
        	$('.w_gwc',$(this)).hide();
        	$('.red_gwc',$(this)).show();
        });
        $('#adrc #adrcg a em').hover(function(){
        	
        	$('.red_xin',$(this)).hide();
        	$('.w_xin',$(this)).show();
        },function(){
        	
        	$('.w_xin',$(this)).hide();
        	$('.red_xin',$(this)).show();
        });
//      写一个移入显示、移出已隐藏//左侧；返回顶部
        $('#fans .top').hover(function(){
        	
        	$('.asda').show();
        	$('.tops').hide();
        },function(){
        	
        	$('.asda').hide();
        	$('.tops').show();
        })
        //写一个下滑显示效果
        $(window).scroll(function(){
//		获得滚动条滚动上去的距离
		var t = $(document).scrollTop();
		if (t>150) {
//			让menu固定定位，通过添加一个f class值来实现
			$('#fans .top').show();
		}else{
			$('#fans .top').hide();
		}
	    })
//结束	
//APP结束
        $('.topz .line8').hover(function(){
        	
        	$('.line8 ul').show();
        },function(){
        	
        	$('.line8 ul').hide();
        });
})
</script>

