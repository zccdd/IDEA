
//====��ť�л���ɫ
     $(function(){
//   	����¼�
     	$('.tss .ts1').click(function(){
     		
     		$(this).addClass('ts1s').siblings().removeClass('ts1s')
     	})
//�ص�����   		
     		$('.get',$(this)).hide();
     	})
//====��ť�л���ɫ
$(function(){
//      дһ��������ʾ���Ƴ�������//������λ
        $('#wsa #adri').hover(function(){
        	
        	$('#base',$(this)).stop().animate({'right':'0'},300);
        },function(){
        	
        	$('#base',$(this)).stop().animate({'right':'-38px'},300);
        })
//      дһ��������ʾ���Ƴ�������//��ඨλ
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
//      дһ��������ʾ���Ƴ�������//��ࣻ���ض���
        $('#fans .top').hover(function(){
        	
        	$('.asda').show();
        	$('.tops').hide();
        },function(){
        	
        	$('.asda').hide();
        	$('.tops').show();
        })
        //дһ���»���ʾЧ��
        $(window).scroll(function(){
//		��ù�����������ȥ�ľ���
		var t = $(document).scrollTop();
		if (t>150) {
//			��menu�̶���λ��ͨ�����һ��f classֵ��ʵ��
			$('#fans .top').show();
		}else{
			$('#fans .top').hide();
		}
	    })
//����	
//APP����
        $('.topz .line8').hover(function(){
        	
        	$('.line8 ul').show();
        },function(){
        	
        	$('.line8 ul').hide();
        });
})
//========�ֲ�ͼ��ʼ================
			$(function(){
				
				var c = 0
				
			   	function timer(){
					c++;
					c=(c==4)?0:c;
				//������
				$('.fl_s .tu img').eq(c).stop().show().siblings().hide();
                $('.fl_s .dos .dor a').eq(c).stop().addClass('dors').siblings().removeClass('dors');
		    }
			   	
			time = setInterval(timer,1000);
			$('.fl_s').hover(function(){
//   		 		 �����ʱ��//��ʾͼƬ
   		           clearInterval(time);
   		    $('.ups').css({'display':'block'});
        	},function(){
//      		�ص�����//�ָ���ʱ��//����ͼƬ
        		$('.fl_s .ups').css({'display':'none'});
        		time = setInterval(timer,1000);
        	})

//				�������
				$('.fl_s .dos .dor a').click(function(){
//					������
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
			
			