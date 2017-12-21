<%--
  Created by IntelliJ IDEA.
  User: k偏执`
  Date: 2017/12/20
  Time: 16:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="/comm.jsp"></jsp:include>
<head>
    <title>Title</title>
</head>
<body>

<h2>活动基本信息</h2>

<h3>活动标题：${list.couponsName}</h3>
<h3>活动图片：${list.couponsLmg}</h3>
<h3>开始时间：${list.startedTime}</h3>
<h3>结束时间：${list.comeTime}</h3>
<h3>活动描述：${list.couponsName}</h3>
<h3>优先级：${list.couponsPriority}</h3>
<h3>活动审核状态：${list.state}</h3>
<h3>活动状态：${list.active}</h3>
<h2>会员限制条件</h2>
<h3>会员等级：${list.grade}</h3>
<h2>活动规则信息</h2>
<textarea  name="beizhu" id="bei"  rows="8px" cols="80px"></textarea>



</body>
</html>
