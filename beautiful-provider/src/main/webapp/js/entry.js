 function checkphone(){
		 var phone = $("#phone").val();
		 var reg =/^[a-z0-9_-]{11}$/;
		 if(reg.test(phone)){
			 $("#phoneinfo").css("display","none");
			 return true;
			 }
		else{
			 $("#phoneinfo").css("display","block");
			 return false;
			}
		}
		//密码
		 function checkpass(){
		 var pass = $("#pass").val();
		 var reg =/^\w{6,20}$/;
		 if(reg.test(pass)){
			 $("#passinfo").css("display","none");
			  return true;
			 }
		else{
			 $("#passinfo").css("display","block");
			  return false;
			}
		}
	 


	//总
	function checkAll(){
		   var phone = $("#phone").val();
		    var pass = $("#pass").val();
			if(checkphone(phone) && checkpass(pass) && m==2&&n==2&&z==2&&x==2){
				 if(confirm("确认登录么？")){
					  window.open("美丽说首页.html");
					  window.close("购物车.html");
					  return true;
					 }
					else{
						alert("您取消了登录")
						}
					 }
					 else{
						 
					alert("没有提交成功，小主核查一下再输入哦");
					return false;
							 }
				}