<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/20
  Time: 20:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table id="sss">
<c:forEach items="${list}" var="li">

商品名称:<input type="text" name="gname" value="${li.gname}"/><br>
商品图片:<input type="file" name="artImg" value="${li.gimg}" id="artImg"><br>
商品类型:
    <select name="gtype" onclick="qwe()">
    <option value="${li.gtype}">${li.gtype}</option>
</select><br>
商品价格:<input type="text" name="gprice" value="${li.gprice}"><br>
详细信息:<textarea  name="gjieshao" value="${li.gjieshao}"></textarea><br>
库存:<input type="text" name="gcount" value="${li.gcount}"><br>
尺码:<input type="radio" name="gsize" value="1"
    <c:if test="${li.gsize==1}">checked="checked"</c:if>/>M
    <input type="radio" name="gsize" value="2"
           <c:if test="${li.gsize==2}">checked="checked"</c:if>/>L<br>
颜色:<input type="radio" name="gcolor" value="3"
    <c:if test="${li.gcolor==3}">checked="checked"</c:if>/>白
    <input type="radio" name="gcolor" value="4"
           <c:if test="${li.gcolor==4}">checked="checked"</c:if>/>黑<br>
材质:<input type="radio" value="6" name="gmaterial"
    <c:if test="${li.gmaterial==6}">checked="checked"</c:if>/>纤维
    <input type="radio" name="gmaterial" value="5"
           <c:if test="${li.gmaterial==5}">checked="checked"</c:if>/>亚麻<br>
    </c:forEach>
    <table>
<script>
    function qwe(){
        var tou = "<select  name='gtype'>" +
                "<option value=''>--请选择--</option>"+
                "<option value='流行'>流行</option>"+
                "<option value='新品'>新品</option>"+
                "<option value='精选'>精选</option>"+
                "</select>";
        $("#sss").pop(tou)

    }
</script>
</body>
</html>
