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
		//����
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
	 


	//��
	function checkAll(){
		   var phone = $("#phone").val();
		    var pass = $("#pass").val();
			if(checkphone(phone) && checkpass(pass) && m==2&&n==2&&z==2&&x==2){
				 if(confirm("ȷ�ϵ�¼ô��")){
					  window.open("����˵��ҳ.html");
					  window.close("���ﳵ.html");
					  return true;
					 }
					else{
						alert("��ȡ���˵�¼")
						}
					 }
					 else{
						 
					alert("û���ύ�ɹ���С���˲�һ��������Ŷ");
					return false;
							 }
				}