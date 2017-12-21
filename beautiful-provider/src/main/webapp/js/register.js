  
	   function checknike(){
		 var uname = $("#uname").val();
		 var reg =/^[\u4e00-\u9fa5]/;
		 if(reg.test(uname)){
			 $("#nikeinfo").css("display","none");
			  return true;
			 }
		else{
			 $("#nikeinfo").css("display","block");
			 return false;
			}
		}
		
		//����
		 function checkpass(){
		 var upwd = $("#upwd").val();
		 var reg =/^\w{6,20}$/;
		 if(reg.test(upwd)){
			 $("#passinfo").css("display","none");
			  return true;
			 }
		else{
			 $("#passinfo").css("display","block");
			 return false;
			}
		}
		
		//ȷ������
		function checkrepass(){
			var upwd = $("#upwd").val();
		 var repass = $("#repass").val();
		 if(upwd!=repass){
			 $("#repassinfo").css("display","block");
			 return false;
			 }
		else{
			 $("#repassinfo").css("display","none");
			  return true;
			}
		}
		//�ֻ���
		function checkphone(){
		 var uphone = $("#uphone").val();
		  
	 		var reg =/^[+]{0,1}(\d){1,3}[ ]?([-]?((\d)|[ ]){1,12})+$/; 
		 if(reg.test(uphone)){
			 $("#uphoneinfo").css("display","none");
			  return true;
			 }
		else{
			 $("#uphoneinfo").css("display","block");
			 return false;
			}
		}
		
		//��
		function checkAll(){
		   var phone = $("#uphone").val();
		    var pass = $("#upwd").val();
			 var repass = $("#repass").val();
			  var nike = $("#uname").val();
		if(checkphone(uphone) && checkpass(upwd) && checkrepass(repass) && checknike(uname)){
				// if(confirm("������Ҿ�Ҫ�ύ����")){
					  
					  //alert("ע��ɹ���!��ȥ������");
					   window.open("login.jsp");
					  return true;
					 }
					 	//}
					 else{
						 
						//alert("û��ע��ɹ���С���˲�һ��������Ŷ");
					return false;
					 
							 } 

				}
			function op(){
				if(document.getElementById("check").checked==true)
				{
				document.getElementById("btn_tj").disabled="";//��BUTTON��ť��disabled���Ը�ֵ
				document.getElementById("btn_tj").style.color="#fff"
				}else
				{
				document.getElementById("btn_tj").disabled="disabled";
				document.getElementById("btn_tj").style.color="#777"
				}
					}
 