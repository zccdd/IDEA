<%--
  Created by IntelliJ IDEA.
  User: java111
  Date: 2017/12/18
  Time: 20:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>美丽说</title>
</head>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css" type="text/css"/>
<body>
<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/js/common.js"></script>
<!--背景图片自动更换-->
<script src="<%=request.getContextPath()%>/js/supersized.3.2.7.min.js"></script>
<script src="<%=request.getContextPath()%>/js/supersized-init.js"></script>
<!--表单验证-->
<script src="<%=request.getContextPath()%>/js/jquery.validate.min.js?var1.14.0"></script>

<div class="register-container">
    <h1>美丽说商家注册</h1>

    <div class="connect">
        <p>Link the world. Share to world.</p>
    </div>

    <form action="" method="post" id="registerForm">
        <div>
            <input type="text" name="username" class="username" placeholder="您的用户名" autocomplete="off"/>
        </div>
        <div>
            <input type="password" name="password" class="password" placeholder="输入密码" oncontextmenu="return false" onpaste="return false" />
        </div>
        <div>
            <input type="password" name="confirm_password" class="confirm_password" placeholder="再次输入密码" oncontextmenu="return false" onpaste="return false" />
        </div>


        <button id="submit" type="submit">注 册</button>
    </form>
    <a href="<%=request.getContextPath()%>/login.jsp">
        <button type="button" class="register-tis">已经有账号？</button>
    </a>

</div>



</body>
</html>
