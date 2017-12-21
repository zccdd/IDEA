<%@ page language="java" import="java.util.*,java.lang.Integer" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.entity.*,com.dao.*,com.dao.impl.*,com.service.*,com.web.*,com.util.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>美丽说</title>
<script type="text/javascript" src="<%=basePath%>js/jquery-1.7.2.min.js"></script>
<link rel="stylesheet" href="<%=basePath%>css/jqzoom.css" type="text/css" />
<link rel="stylesheet" href="<%=basePath%>css/Index - xiangxi.css" type="text/css"></head>
<body>
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
<a href="<%=basePath%>shopping.jsp" id="adrcc">
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
<!--顶部图片部分-->
<div class="tupian" style="width:100%">
<img src="<%=basePath%>image/shangpinxingqing2.c5.jpg" width="1200" height="120" />
<div class="tab" id="tab">
  <ul class="tab-top">
<li>
<a href="">店铺首页</a>
</li>
<li class="js1" style="display:inline-block">
<a class="js1-1">新品到货
<span class="js1-2">1</span>
<i class="icon-tr">▾</i>
</a>
<ul class="js2-2">
<li><a href="">2016-05-23新品<span class="js1-2">1</span></a></li>
<li><a href="">2016-05-22新品</a></li>
<li><a href="">2016-05-21新品</a></li>
<li><a href="">2016-05-20新品</a></li>
</ul>
</li>
<li>
<a href="">missmo新品</a>
</li>
<li>
<a href="">凉鞋范</a>
</li>
<li>
<a href="">单鞋范</a>
</li>
<li>
<a href="">运动范</a>
</li>
<li>
<a href="">欧美潮牌范</a>
</li>
<li>
<a href="">靴子范</a>
</li>
<li>
<a href="">missmo特卖团购</a>
</li>
</ul>
</div>
</div>
<form action="BuyServlet">
    <div id="xiangxi">
    
    	<div id="remaituijian">
        <div id="xiangxi_youce">
        <p class="remai">热卖推荐</p>
        	<div class="remaituijian_yangshi">
        	<a href="#"><img src="<%=basePath%>image/1.jpg" width="130" height="180" /></a>
            <p>￥36.68</p>
            </div>
        
        	<div class="remaituijian_yangshi">
        	<a href="#"><img src="<%=basePath%>image/2.jpg" width="130" height="180"/></a>
            <p>￥39.90</p>
            </div>
        
        	<div class="remaituijian_yangshi">
        		<a href="#"><img src="<%=basePath%>image/3.jpg" width="130" height="180"/></a>
            </div>
        </div>
        <div id="xiangxi_zuoce">
        	<div id="zuoce_datupian">
        <img src="<%=basePath%>image2/${good.gimg }" width="320px" height="550px" id="zuoce_datu" style="border:1px solid #666;"/>
             </div>
            
        </div>
        <div id="xiangxi_zhongjian">
        	<div id="biaoti">${good.gname}</div>
             <div id="xianjia"> 
                <span class="span">价格：</span>
                <span class="jiage">￥${good.gprice }</span>
                   <span class="kucun" ></span>
                <span class="pingjia"></span>
                <span class="pingjia_shuliang"></span>
            </div>
            <div id="kefu">
            	<span class="span">客服：</span>
                <span id="kefu_maijia"><img src="<%=basePath%>image/xijie20.png" /></span>
                <br />
            </div>
            <div id="chima">
            	<div class="span">尺码：</div>
				<c:forEach items="${slist}" var="s" >
              	<div id="${s.pid }" style="float: left;margin-left: 5px">${s.value}</div>
				</c:forEach>
				<div class="span" style="margin-left: 10px">颜色：</div>
				<c:forEach items="${clist}" var="c" >
					<div id="${c.pid }" style="float: left;margin-left: 5px">${c.value}</div>
				</c:forEach>
				<div class="span" style="margin-left: 10px">材质：</div>
				<c:forEach items="${mlist}" var="m" >
					<div id="${m.pid }" style="float: left;margin-left: 5px">${m.value}</div>
				</c:forEach>
            </div>
			<div id="shuliang">
				<span class="span">数量：</span>
				<span><input type="text" class="text_box" id="shuliang_wenbenkuang" name="count" value="1"  size="3" readonly="readonly"/></span>
				<span>库存：${good.gcount }</span>
			</div>
            <div id="goumai">
               	<a href="<%=basePath%>shopController/toShopping.do?spid=${good.gid}">放入购物车</a></div>
               	</span>     
            </div>
            <div id="fuwu">
            	<span ><img class="fuwu_img" src="<%=basePath%>image/11.png"  /></span>
                <span class="fuwu_liebiao"><a href="#">退货补运费</a></span>
                <span><img class="fuwu_img" src="<%=basePath%>image/33.png" /></span>
                <span class="fuwu_liebiao"><a href="#">7天无理由退货</a></span>
                <span><img class="fuwu_img" src="<%=basePath%>image/22.png" /></span>
                <span class="fuwu_liebiao"><a href="#">全国包邮</a></span>
                <span><img class="fuwu_img" src="<%=basePath%>image/44.png" /></span>
                <span class="fuwu_liebiao"><a href="#">72小时发货</a></span>
            </div>
        </div>
    </div>
    </div>
    </form>
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
// JavaScript Document
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
})
$(function(){
	//APP结束
        $('.topz .line8').hover(function(){
        	
        	$('.line8 ul').show();
        },function(){
        	
        	$('.line8 ul').hide();
        });
	})
	//========菜单下滑开始===============
         $(function(){
         	 $(window).scroll(function(){
//		获得滚动条滚动上去的距离
		var t = $(document).scrollTop();
		if (t>275) {
//			让menu固定定位，通过添加一个f class值来实现
			$("#tab").addClass('lalss');
		}else{
			$("#tab").removeClass('lalss');
		}
	    })
/*		if(t>200){
			$("#tab").css("top",-30);
			$("#tab2").addClass("lalss");
			}
		else{
			$("#tab").css("top",0);
			}*/
    })
 
//=====================全局函数========================
//Tab控制函数
function tabs(tabId, tabNum){
	//设置点击后的切换样式
	$(tabId + " .tab li").removeClass("curr");
	$(tabId + " .tab li").eq(tabNum).addClass("curr");
	//根据参数决定显示内容
	$(tabId + " .tabcon").hide();
	$(tabId + " .tabcon").eq(tabNum).show();
}
	$(".p").hover(
		function(){
			$("#"+$(this).get(0).id+"1").get(0).style.display="block";
			},
			function(){
				$("#"+$(this).get(0).id+"1").get(0).style.display="none";
				}
			)
    $("#jia").click(function(){ 
     var i=parseInt($("#shuliang_wenbenkuang").val());
     i++;
	 $("#shuliang_wenbenkuang").val(i);
          }) 
$("#jian").click(function(){
	var i=parseInt($("#shuliang_wenbenkuang").val());
	if(i>1)i--;
	$("#shuliang_wenbenkuang").val(i);
})//加减数量
$("#xiaotu_left").click(function(){
	$("#xiaotu_left img").css("border","1px solid #ff8066");
	$("#xiaotu_right img").css("border","none");
	$("#zuoce_datu").attr("src","images/粉嫩嫩V领系绳荷叶边喇叭袖衬衫/001.jpg");
	$(".jqzoom").attr("href","images/粉嫩嫩V领系绳荷叶边喇叭袖衬衫/001.jpg");
})
$("#xiaotu_right").click(function(){
	$("#xiaotu_right img").css("border","1px solid #ff8066");
	$("#xiaotu_left img").css("border","none");
	$("#zuoce_datu").attr("src","images/粉嫩嫩V领系绳荷叶边喇叭袖衬衫/002.jpg");
	$(".jqzoom").attr("href","images/粉嫩嫩V领系绳荷叶边喇叭袖衬衫/002.jpg");
})
$("#kuanshi_1").click(function(){
	$(this).css("border","2px solid #ff8860");
	$("#kuanshi_2").css("border","none");
})
$("#kuanshi_2").click(function(){
	$(this).css("border","2px solid #ff8860");
	$("#kuanshi_1").css("border","none");
})
//图片轮换
$("#chima1").click(function(){
	$(this).css("border","2px solid #ff8860");
	$("#chima2").css("border","1px solid #333");
	})
$("#chima2").click(function(){
	$(this).css("border","2px solid #ff8860");
	$("#chima1").css("border","1px solid #333");
	})//尺码选择
$(document).ready(
function(){
	var options={zoomWidth:335,
				zoomHeight:251,
				xOffset:10,
				yOffset:0,
				position:"right"};
	$('.jqzoom').jqzoom(options);
	})
//顶部导航菜单
$('#sub_menu li').hover(function() {
$(this).find(".tabmenu").css('display', 'inline-block');
}, function() {
$(this).find(".tabmenu").css('display', 'none');
});
//单击链接
/*
 * JQZoom Evolution 1.0.1 - Javascript Image magnifier
 *
 * Copyright (c) Engineer Renzi Marco(www.mind-projects.it)
 *
 * $Date: 12-12-2008
 *
 *	ChangeLog:
 *  
 * $License : GPL,so any change to the code you should copy and paste this section,and would be nice to report this to me(renzi.mrc@gmail.com).
 */
eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('(6($){$.30.31=6(G){I H={17:\'32\',18:2l,19:2l,1a:10,1b:0,Q:"2m",2n:1s,2o:12,2p:0.3,14:1s,1p:12,2q:\'1g\',2r:\'23\',2s:\'24\',2t:\'33\',2u:12,2v:1s,2w:\'34 35\',2x:\'1t\'};G=G||{};$.36(H,G);R 4.37(6(){I a=$(4);I d=a.1q(\'14\');$(a).1Q(\'14\');$(a).J(\'38-K\',\'1r\');$(a).J(\'39-3a\',\'1r\');I f=$(a).1q(\'3b\');I g=$("1H",4);I j=g.1q(\'14\');g.1Q(\'14\');I k=U 25(g);I l={};I m=0;I n=0;I p=1u;p=U 1R();I q=(26(d).Y>0)?d:(26(j).Y>0)?j:1u;I r=U 27();I s=U 1v(a[0].2y);I t=U 1c();I u={};I v=12;I y={};I z=1u;I A=12;I B={};I C=0;I D=12;I E=12;I F=12;k.1I();$(4).3c(6(){R 12});$(4).3d(6(e){B.x=e.1w;B.y=e.1x;k.1S();1d()},6(){k.1S();2z()});8(H.1p){2A(6(){1d()},3e)}6 1d(){8(!A){k.28();A=1s;j=g.1q(\'14\');g.1Q(\'14\');d=a.1q(\'14\');$(a).1Q(\'14\');s=U 1v(a[0].2y);8(!v||$.1e.2B){s.1I()}V{8(H.17!=\'1j\'){z=U 1J();z.1d()}t=U 1c;t.1d()}a[0].3f();R 12}};6 2z(){8(H.17==\'1K\'&&!H.1p){g.J({\'1T\':1})}8(!H.1p){A=12;v=12;$(t.5).29(\'1L\');t.Z();8($(\'P.1M\').Y>0){z.Z()}8($(\'P.2a\').Y>0){r.Z()}g.1q(\'14\',j);a.1q(\'14\',d);$().29();a.29(\'1L\');C=0;8(1y(\'.2b\').Y>0){1y(\'.2b\').Z()}}V{8(H.2o){1k(H.17){11\'1j\':s.2c();N;1l:t.1t();N}}}8(H.1p){1d()}};6 25(c){4.5=c[0];4.1I=6(){4.5.1m=c[0].1m};4.28=6(){I a=\'\';a=$(g).J(\'2C-L-W\');m=\'\';I b=\'\';b=$(g).J(\'2C-M-W\');n=\'\';8(a){1U(i=0;i<3;i++){I x=[];x=a.1n(i,1);8(1V(x)==12){m=m+\'\'+a.1n(i,1)}V{N}}}8(b){1U(i=0;i<3;i++){8(!1V(b.1n(i,1))){n=n+b.1n(i,1)}V{N}}}m=(m.Y>0)?1W(m):0;n=(n.Y>0)?1W(n):0};4.5.2D=6(){a.J({\'2E\':\'2F\',\'1h\':\'1X\'});8(a.J(\'Q\')!=\'15\'&&a.2d().J(\'Q\')){a.J({\'2E\':\'2F\',\'Q\':\'2G\',\'1h\':\'1X\'})}8(a.2d().J(\'Q\')!=\'15\'){a.2d().J(\'Q\',\'2G\')}V{}8($.1e.2B||$.1e.3g){$(g).J({Q:\'15\',L:\'2H\',M:\'2H\'})}l.w=$(4).W();l.h=$(4).1f();l.9=$(4).1i();l.9.l=$(4).1i().M;l.9.t=$(4).1i().L;l.9.r=l.w+l.9.l;l.9.b=l.h+l.9.t;a.1f(l.h);a.W(l.w);8(H.2u){k.1S();s.1I()}};R 4};25.13.1S=6(){l.9=$(g).1i();l.9.l=$(g).1i().M;l.9.t=$(g).1i().L;l.9.r=l.w+l.9.l;l.9.b=l.h+l.9.t};6 1c(){4.5=16.2e("P");$(4.5).1Y(\'X\');4.5.3h=6(){$(t.5).Z();t=U 1c();t.1d()};4.2I=6(){1k(H.17){11\'1K\':4.1z=U 1Z();4.1z.1m=k.5.1m;4.5.1N(4.1z);$(4.5).J({\'1T\':1});N;11\'1j\':4.1z=U 1Z();4.1z.1m=s.5.1m;4.5.1N(4.1z);$(4.5).J({\'1T\':1});N;1l:N}1k(H.17){11\'1j\':u.w=l.w;u.h=l.h;N;1l:u.w=(H.18)/y.x;u.h=(H.19)/y.y;N}$(4.5).J({W:u.w+\'S\',1f:u.h+\'S\',Q:\'15\',1h:\'1r\',3i:1+\'S\'});a.3j(4.5)};R 4};1c.13.1d=6(){4.2I();1k(H.17){11\'1K\':g.J({\'1T\':H.2p});(H.1p)?t.1t():t.1o(1u);a.2f(\'1L\',6(e){B.x=e.1w;B.y=e.1x;t.1o(e)});N;11\'1j\':$(4.5).J({L:0,M:0});8(H.14){r.2g()}s.2c();a.2f(\'1L\',6(e){B.x=e.1w;B.y=e.1x;s.2J(e)});N;1l:(H.1p)?t.1t():t.1o(1u);$(a).2f(\'1L\',6(e){B.x=e.1w;B.y=e.1x;t.1o(e)});N}R 4};1c.13.1o=6(e){8(e){B.x=e.1w;B.y=e.1x}8(C==0){I b=(l.w)/2-(u.w)/2;I c=(l.h)/2-(u.h)/2;$(\'P.X\').1g();8(H.2n){4.5.K.20=\'2K\'}V{4.5.K.20=\'2h\';$(\'P.X\').23()}C=1}V{I b=B.x-l.9.l-(u.w)/2;I c=B.y-l.9.t-(u.h)/2}8(2L()){b=0+n}V 8(2M()){8($.1e.1O&&$.1e.2i<7){b=l.w-u.w+n-1}V{b=l.w-u.w+n-1}}8(2N()){c=0+m}V 8(2O()){8($.1e.1O&&$.1e.2i<7){c=l.h-u.h+m-1}V{c=l.h-u.h-1+m}}b=1A(b);c=1A(c);$(\'P.X\',a).J({L:c,M:b});8(H.17==\'1K\'){$(\'P.X 1H\',a).J({\'Q\':\'15\',\'L\':-(c-m+1),\'M\':-(b-n+1)})}4.5.K.M=b+\'S\';4.5.K.L=c+\'S\';s.1o();6 2L(){R B.x-(u.w+2*1)/2-n<l.9.l}6 2M(){R B.x+(u.w+2*1)/2>l.9.r+n}6 2N(){R B.y-(u.h+2*1)/2-m<l.9.t}6 2O(){R B.y+(u.h+2*1)/2>l.9.b+m}R 4};1c.13.1t=6(){$(\'P.X\',a).J(\'1h\',\'1r\');I b=(l.w)/2-(u.w)/2;I c=(l.h)/2-(u.h)/2;4.5.K.M=b+\'S\';4.5.K.L=c+\'S\';$(\'P.X\',a).J({L:c,M:b});8(H.17==\'1K\'){$(\'P.X 1H\',a).J({\'Q\':\'15\',\'L\':-(c-m+1),\'M\':-(b-n+1)})}s.1o();8($.1e.1O){$(\'P.X\',a).1g()}V{2A(6(){$(\'P.X\').2P(\'24\')},10)}};1c.13.1P=6(){I o={};o.M=1A(4.5.K.M);o.L=1A(4.5.K.L);R o};1c.13.Z=6(){8(H.17==\'1j\'){$(\'P.X\',a).2Q(\'24\',6(){$(4).Z()})}V{$(\'P.X\',a).Z()}};1c.13.28=6(){I a=\'\';a=$(\'P.X\').J(\'3k\');1B=\'\';I b=\'\';b=$(\'P.X\').J(\'3l\');1C=\'\';8($.1e.1O){I c=a.2R(\' \');a=c[1];I c=b.2R(\' \');b=c[1]}8(a){1U(i=0;i<3;i++){I x=[];x=a.1n(i,1);8(1V(x)==12){1B=1B+\'\'+a.1n(i,1)}V{N}}}8(b){1U(i=0;i<3;i++){8(!1V(b.1n(i,1))){1C=1C+b.1n(i,1)}V{N}}}1B=(1B.Y>0)?1W(1B):0;1C=(1C.Y>0)?1W(1C):0};6 1v(a){4.2S=a;4.5=U 1Z();4.1I=6(){8(!4.5)4.5=U 1Z();4.5.K.Q=\'15\';4.5.K.1h=\'1r\';4.5.K.M=\'-3m\';4.5.K.L=\'3n\';p=U 1R();8(H.2v&&!D){p.1g();D=1s}16.2j.1N(4.5);4.5.1m=4.2S};4.5.2D=6(){4.K.1h=\'1X\';I w=O.21($(4).W());I h=O.21($(4).1f());4.K.1h=\'1r\';y.x=(w/l.w);y.y=(h/l.h);8($(\'P.1D\').Y>0){$(\'P.1D\').Z()}v=1s;8(H.17!=\'1j\'&&A){z=U 1J();z.1d()}8(A){t=U 1c();t.1d()}8($(\'P.1D\').Y>0){$(\'P.1D\').Z()}};R 4};1v.13.1o=6(){4.5.K.M=O.1E(-y.x*1A(t.1P().M)+n)+\'S\';4.5.K.L=O.1E(-y.y*1A(t.1P().L)+m)+\'S\'};1v.13.2J=6(e){4.5.K.M=O.1E(-y.x*O.T(e.1w-l.9.l))+\'S\';4.5.K.L=O.1E(-y.y*O.T(e.1x-l.9.t))+\'S\';$(\'P.X 1H\',a).J({\'Q\':\'15\',\'L\':4.5.K.L,\'M\':4.5.K.M})};1v.13.2c=6(){4.5.K.M=O.1E(-y.x*O.T((l.w)/2))+\'S\';4.5.K.L=O.1E(-y.y*O.T((l.h)/2))+\'S\';$(\'P.X 1H\',a).J({\'Q\':\'15\',\'L\':4.5.K.L,\'M\':4.5.K.M})};6 1J(){I a=1y(g).1i().M;I b=1y(g).1i().L;4.5=16.2e("P");$(4.5).1Y(\'1M\');$(4.5).J({Q:\'15\',W:O.21(H.18)+\'S\',1f:O.21(H.19)+\'S\',1h:\'1r\',2T:3o,3p:\'2h\'});1k(H.Q){11"2m":a=(a+$(g).W()+O.T(H.1a)+H.18<$(16).W())?(a+$(g).W()+O.T(H.1a)):(a-H.18-10);1F=b+H.1b+H.19;b=(1F<$(16).1f()&&1F>0)?b+H.1b:b;N;11"M":a=(l.9.l-O.T(H.1a)-H.18>0)?(l.9.l-O.T(H.1a)-H.18):(l.9.l+l.w+10);1F=l.9.t+H.1b+H.19;b=(1F<$(16).1f()&&1F>0)?l.9.t+H.1b:l.9.t;N;11"L":b=(l.9.t-O.T(H.1b)-H.19>0)?(l.9.t-O.T(H.1b)-H.19):(l.9.t+l.h+10);1G=l.9.l+H.1a+H.18;a=(1G<$(16).W()&&1G>0)?l.9.l+H.1a:l.9.l;N;11"3q":b=(l.9.b+O.T(H.1b)+H.19<$(16).1f())?(l.9.b+O.T(H.1b)):(l.9.t-H.19-10);1G=l.9.l+H.1a+H.18;a=(1G<$(16).W()&&1G>0)?l.9.l+H.1a:l.9.l;N;1l:a=(l.9.l+l.w+H.1a+H.18<$(16).W())?(l.9.l+l.w+O.T(H.1a)):(l.9.l-H.18-O.T(H.1a));b=(l.9.b+O.T(H.1b)+H.19<$(16).1f())?(l.9.b+O.T(H.1b)):(l.9.t-H.19-O.T(H.1b));N}4.5.K.M=a+\'S\';4.5.K.L=b+\'S\';R 4};1J.13.1d=6(){8(!4.5.3r)4.5.1N(s.5);8(H.14){r.2g()}16.2j.1N(4.5);1k(H.2q){11\'1g\':$(4.5).1g();N;11\'3s\':$(4.5).2P(H.2s);N;1l:$(4.5).1g();N}$(4.5).1g();8($.1e.1O&&$.1e.2i<7){4.3t=$(\'<2U 3u="2b" 3v="3w" 3x="0"  1m="#"  K="3y-3z: 2V" 3A="2V"></2U>\').J({Q:"15",M:4.5.K.M,L:4.5.K.L,2T:3B,W:(H.18+2),1f:(H.19)}).3C(4.5)};s.5.K.1h=\'1X\'};1J.13.Z=6(){1k(H.2r){11\'23\':$(\'.1M\').Z();N;11\'3D\':$(\'.1M\').2Q(H.2t);N;1l:$(\'.1M\').Z();N}};6 27(){4.5=1y(\'<P />\').1Y(\'2a\').2W(\'\'+q+\'\');4.2g=6(){8(H.17==\'1j\'){$(4.5).J({Q:\'15\',L:l.9.b+3,M:(l.9.l+1),W:l.w}).2k(\'2j\')}V{$(4.5).2k(z.5)}}};27.13.Z=6(){$(\'.2a\').Z()};6 1R(){4.5=16.2e("P");$(4.5).1Y(\'1D\');$(4.5).2W(H.2w);$(4.5).2k(a).J(\'20\',\'2h\');4.1g=6(){1k(H.2x){11\'1t\':2X=(l.h-$(4.5).1f())/2;2Y=(l.w-$(4.5).W())/2;$(4.5).J({L:2X,M:2Y});N;1l:I a=4.1P();N}$(4.5).J({Q:\'15\',20:\'2K\'})};R 4};1R.13.1P=6(){I o=1u;o=$(\'P.1D\').1i();R o}})}})(1y);6 26(a){2Z(a.22(0,1)==\' \'){a=a.22(1,a.Y)}2Z(a.22(a.Y-1,a.Y)==\' \'){a=a.22(0,a.Y-1)}R a};',62,226,'||||this|node|function||if|pos|||||||||||||||||||||||||||||||||||var|css|style|top|left|break|Math|div|position|return|px|abs|new|else|width|jqZoomPup|length|remove||case|false|prototype|title|absolute|document|zoomType|zoomWidth|zoomHeight|xOffset|yOffset|Lens|activate|browser|height|show|display|offset|innerzoom|switch|default|src|substr|setposition|alwaysOn|attr|none|true|center|null|Largeimage|pageX|pageY|jQuery|image|parseInt|lensbtop|lensbleft|preload|ceil|topwindow|leftwindow|img|loadimage|Stage|reverse|mousemove|jqZoomWindow|appendChild|msie|getoffset|removeAttr|Loader|setpos|opacity|for|isNaN|eval|block|addClass|Image|visibility|round|substring|hide|fast|Smallimage|trim|zoomTitle|findborder|unbind|jqZoomTitle|zoom_ieframe|setcenter|parent|createElement|bind|loadtitle|hidden|version|body|appendTo|200|right|lens|lensReset|imageOpacity|showEffect|hideEffect|fadeinSpeed|fadeoutSpeed|preloadImages|showPreload|preloadText|preloadPosition|href|deactivate|setTimeout|safari|border|onload|cursor|crosshair|relative|0px|loadlens|setinner|visible|overleft|overright|overtop|overbottom|fadeIn|fadeOut|split|url|zIndex|iframe|transparent|html|loadertop|loaderleft|while|fn|jqzoom|standard|slow|Loading|zoom|extend|each|outline|text|decoration|rel|click|hover|150|blur|opera|onerror|borderWidth|append|borderTop|borderLeft|5000px|10px|10000|overflow|bottom|firstChild|fadein|ieframe|class|name|content|frameborder|background|color|bgcolor|99|insertBefore|fadeout'.split('|'),0,{}))	
</script>