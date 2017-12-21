<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>美丽说仿站  -登录</title>



<script type="text/javascript" src="<%=basePath%>js/land.js"></script>
<script type="text/javascript" src="<%=basePath%>js/jquery-1.7.2.min.js"></script>
 
 <link rel="stylesheet" href="<%=basePath%>css/entry.css" type="text/css"></link></head>

<body>

<div id="con">
<div id="til">
 <!--<img src="../image/logo.png"></img>
 
-->
</div>
<div id="b">
 <img src="<%=basePath%>image/ad_img.jpg">
</div>
<div id="from">
   <form action="<%=basePath%>accountController/login.do" method="post">
       <p class="zhuce"><h3>登录美丽说 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <a href="<%=basePath%>register.jsp" style="color:#f69">注册</a></h3></p>
        <div class="text_zc">
            <input type="text" size="40" style="height:30px" placeholder="手机号" name="username" class="text_zc" onblur="checkphone()" id="uphone"/>
       <span id="phoneinfo">
          请输入正确的手机号
       </span>
       </div>
       <div class="text_zc">
            <input placeholder="密码" type="password" size="46" name="password" style="height:30px" id="upwd" onblur="checkpass()" />
             <br />
           <span id="passinfo">请输入正确密码</span>
          </div>
             <br />
       <div class="pic_auth">

  
         </div>
       <div>
           <input type="submit" id="btn_dl" value="立即登录" onclick="checkAll()"/>
       </div>
       </form>
      <br />
<br />
<br />
    <div class="notice">公告：淘宝互联已失效，点此进行 <a href="<%=basePath%>https://account.meilishuo.com/user/appeal_tb/">账号申诉</a>
</div>
  
</div>
</div>
<div id="co">
 <img src="<%=basePath%>image/co.png">
</div>
</body>
</html>
<script>
   $(function(){
      $("#btn_dl").click(function(){
      
        uname
      });
   });


    function checkphone(){
		 var uphone = $("#uphone").val();
		 var reg =/^[a-z0-9_-]{11}$/;
		 if(reg.test(uphone)){
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
	 

	/*	 var m=1;
		 $("#t1").on("click",function(){
			 m++;
			 if(m>4)
			 m=1;
			 $("#t1").attr("src","image/p1"+m+".jpg");
			 })
		var n=1
	     $("#t2").on("click",function(){
			 n++;	
			 if(n>4)
			 n=1;
			 $("#t2").attr("src","image/p2"+n+".jpg")
			 
			 
			 })
	    var z=1
		$("#t3").on("click",function(){
			 z++;	
			 if(z>4)
			 z=1;
			 $("#t3").attr("src","image/p3"+z+".jpg")
			 
			 
			 })
			var x=1 
	  $("#t4").on("click",function(){
			 x++;	
			 if(x>4)
			 x=1;
			 $("#t4").attr("src","image/p4"+x+".jpg")
			 
			 
			 })*/
	//总
	 function checkAll(){
		   var uphone = $("#uphone").val();
		    var upwd = $("#upwd").val();
			if(checkphone(uphone) && checkpass(upwd) ){
				      return true;
					 }
					 else{
						 return false;
					 
					
							 }
				} 
				
	
				
</script>