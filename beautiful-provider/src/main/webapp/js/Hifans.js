
//====按钮切换颜色
     $(function(){
//   	点击事件
     	$('.tss .ts1').click(function(){
     		
     		$(this).addClass('ts1s').siblings().removeClass('ts1s')
     	})
//回调函数   		
     		$('.get',$(this)).hide();
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
//========轮播图开始================
			$(function(){
				
				var c = 0
				
			   	function timer(){
					c++;
					c=(c==4)?0:c;
				//获得序号
				$('.fl_s .tu img').eq(c).stop().show().siblings().hide();
                $('.fl_s .dos .dor a').eq(c).stop().addClass('dors').siblings().removeClass('dors');
		    }
			   	
			time = setInterval(timer,1000);
			$('.fl_s').hover(function(){
//   		 		 清除定时器//显示图片
   		           clearInterval(time);
   		    $('.ups').css({'display':'block'});
        	},function(){
//      		回调函数//恢复定时器//隐藏图片
        		$('.fl_s .ups').css({'display':'none'});
        		time = setInterval(timer,1000);
        	})

//				点击变形
				$('.fl_s .dos .dor a').click(function(){
//					获得序号
					var n = $(this).index();
					
					$('.fl_s .tu img').eq(n).stop().show().siblings().hide();

                $('.fl_s .dos .dor a').eq(n).stop().addClass('dors').siblings().removeClass('dors');
				})
				
            })
			
		var index=1;
		function show(id){
			var tab=document.getElementById("tab"+id);
			var shopWrap =document.getElementById("scrollDom"+id);
			tab.style.backgroundColor="#f9cd00";
			tab.style.borderBottom="1px solid lightblue";
			tab.style.fontWeight="bold";
			tab.style.color="#fff";
			tab.style.zIndex="10";
			
			for(var i=1;i<=4;i++){
				if(i!=id){
					var t=document.getElementById("tab"+i);
					t.style.backgroundColor="#f0f5f9";
					t.style.borderBottom="1px solid white";
					t.style.color="#4FCC00";
					}
				}
				
				for(var i=1; i<=4; i++){
					if(i!=id){
						var c=document.getElementById("scrollDom"+i);
						c.style.display="none";
						}
					}
					shopWrap.style.display="block";
					index=id;
			}
			function a(){
				if(index==5){
					index=1;
					}
					show(index);
					index++;
					setTimeout('a()',2000);
				}
			window.onload=a;
			
			