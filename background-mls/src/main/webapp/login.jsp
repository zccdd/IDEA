<%--
  Created by IntelliJ IDEA.
  User: java111
  Date: 2017/12/18
  Time: 16:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>美丽说卖家管理</title>
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
<div class="login-container">
    <h1>美丽说商家登录</h1>

    <div class="connect">
        <p>www.mycodes.net</p>
    </div>

    <form action="" method="post" id="loginForm">
        <div>
            <input type="text" name="username" class="username" placeholder="用户名" autocomplete="off"/>
        </div>
        <div>
            <input type="password" name="password" class="password" placeholder="密码" oncontextmenu="return false" onpaste="return false" />
        </div>
        <button id="submit" type="submit">登 录</button>
    </form>

    <a href="<%=request.getContextPath()%>/register.jsp">
        <button type="button" class="register-tis">还有没有账号？</button>
    </a>

</div>

    <a href="<%=request.getContextPath()%>/TreeController/skipTree.do">点击进入首页</a>
</body>
</html>
