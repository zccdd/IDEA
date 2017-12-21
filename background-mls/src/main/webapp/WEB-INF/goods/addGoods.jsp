<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/19
  Time: 11:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>选择商品发布</title>
</head>
<body>
<script>
</script>

    <form  id="fff" action="<%=request.getContextPath()%>/goods/upImg.do" method="post" enctype="multipart/form-data">
        <table align="center">
        商品名称:<input type="text" name="gname" /><br>
        商品图片:<input type="file" name="artImg" id="artImg"><br>
        商品类型:<select name="gtype">
        <option value="">--请选择--</option>
        <option value="流行">流行</option>
        <option value="新品">新品</option>
        <option value="精选">精选</option>
    </select><br>
        商品价格:<input type="text" name="gprice" ><br>
        详细信息:<textarea  name="gjieshao"></textarea><br>
        库存:<input type="text" name="gcount" ><br>
        尺码:<input type="radio" name="gsize" value="1"/>M<input type="radio" name="gsize" value="2"/>L<br>
        颜色:<input type="radio" name="gcolor" value="3"/>白<input type="radio" name="gcolor" value="4"/>黑<br>
        材质:<input type="radio" value="6" name="gmaterial"/>纤维<input type="radio" name="gmaterial" value="5"/>亚麻<br>
        <input type="submit" value="发布 "/>
        </table>
    </form>

</body>
</html>
