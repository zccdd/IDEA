<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"
+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="">
    
    <title>美丽说-注册</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
 
 
   <script type="text/javascript" src="<%=basePath%>js/jquery-1.7.2.min.js"></script>
   <script type="text/javascript" src="<%=basePath%>js/register.js">
   </script><link rel="stylesheet" href="<%=basePath%>css/register.css" type="text/css"></link>
   </head>
  
  <body>
  <div id="con">
<div id="til"></div>
<div id="b">
</div>
<div id="from">
  <form action="registerServlet" method="post">
       <p class="zhuce"><h3>注册美丽说 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%=basePath%>login.jsp" style="color:#f69">登录</a>
        </h3>
        </p>
       <div class="text_zc">
       <input type="text" size="40" style="height:30px" placeholder="手机号" 
       class="text_zc" onblur="checkphone()" id="uphone" name="uphone"/>
       <span id="uphoneinfo">
          		请输入正确的手机号
       </span>
       </div>
       		<br />
       <div class="text_zc">
             <input type="text" size="40" style="height:30px" placeholder="昵称" 
             class="text_zc" id="uname" name="uname" onblur="checknike()"/>
        <span></span>
       <span id="nikeinfo">
             请输入昵称
       </span>
          </div>
             <br />
       <div class="text_zc">
             <input type="password" size="40" style="height:30px" placeholder="密码"
              class="text_zc" onblur="checkpass()" id="upwd" name="upwd"/>
       <span></span>
       <span id="passinfo">
            请输入六位以上密码
       </span>
         </div>
         <br />
          <div class="text_zc"> 
             <input type="password" size="40" style="height:30px" placeholder="确认密码" 
             class="text_zc" id="repass" name="repass" onblur="checkrepass()"/>
       <span></span>
       <span id="repassinfo">
            确认密码与密码不同
       </span>
         </div>
         <br />
       <div>
           <input type="submit" id="btn_tj" onclick="checkAll()" disabled="disabled" 
           value="立即注册" style="color:#777; onclick="return confirm('为您注册成功?')" />
           
       </div>
       <p style="color:#666;" class="a" >
          <input type="checkbox" onclick="op()" id="check"  />
          同意<a href="#"  style="color:#f69">《美丽说注册条款》《美丽说平台消费者规则》</a>
       </p>
       <p>
       
       </p>
       <p style="font-size:14px; color:#666">
          无需注册，即可登录
       </p>
      <p>
      <div>
        <div id="qq"> </div>
        <div id="wb"> </div>
        <div id="wx"> </div>
        </div>
      </p>
<br />
<br />
<br />
    <p>
    <a id="gd">
    更多登录方法>>
    </a>
    </p>
   </form>
</div>
</div>
<div id="co">
 <img src="<%=basePath%>image/co.png"></img>
</div>

  </body>
</html>

