<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ page import="com.dao.*,com.dao.impl.*,com.entity.*,com.util.*,com.web.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'dingdan.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <a href="<%=basePath%>goodController/toHome.do">返回首页</a>
		我的订单
   <table border="1" align="center">
  	<tr>
		<td>订单编号</td>
  		<td>地址</td>
  		<td>下单时间</td>
  		<td>总价</td>
  	</tr>
	<c:forEach items="${orderss}" var="ods">
  		<tr>
			<td>${ods.oid}</td>
  			<td><span>${ods.address}</span></td>
  			<td><span>${ods.creatime }</span></td>
  			<td>${ods.total}</td>
  		</tr>
	</c:forEach>
   </table>
  </body>
</html>
