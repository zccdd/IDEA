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
	$("#zuoce_datu").attr("src","image/粉嫩嫩V领系绳荷叶边喇叭袖衬衫/001.jpg");
	$(".jqzoom").attr("href","image/粉嫩嫩V领系绳荷叶边喇叭袖衬衫/001.jpg");
})
$("#xiaotu_right").click(function(){
	$("#xiaotu_right img").css("border","1px solid #ff8066");
	$("#xiaotu_left img").css("border","none");
	$("#zuoce_datu").attr("src","image/粉嫩嫩V领系绳荷叶边喇叭袖衬衫/002.jpg");
	$(".jqzoom").attr("href","image/粉嫩嫩V领系绳荷叶边喇叭袖衬衫/002.jpg");
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
$("#pay").click(function(){
	document.location.href='支付.html';
})
$("#jiaru").click(function(){
	alert("加入购物车成功！");
})
