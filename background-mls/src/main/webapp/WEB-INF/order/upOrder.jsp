
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path;
    application.setAttribute("basePath", basePath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <jsp:include page="/comm.jsp" flush="true" />
</head>
<body>

<form id="tgl-form2" method="post" data-options="novalidate:true">

    <input type="hidden" name="oid" value="${oid}"/>
    买家: ${uphone}</br></br>
    订单编号:${oid}</br></br>
    应付金额:<input type="text" name="total" value="${total}"></br></br>


</form>
</body>
</html>
