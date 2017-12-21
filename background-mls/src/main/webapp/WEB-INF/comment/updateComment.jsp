<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
	function updateTypeSave(){

		$.ajax({
			type:"post",
			url:"<%=request.getContextPath()%>/commentController/addComment.do",
			data:$("#showTypes").serialize(),
			dataType:"json",
			success:function(){

			},
			error:function(){

				location.reload();
			}
		})

	}

</script>
<form id="showTypes">
	<input type="hidden" name="commentid" value="${commentid}">
	<table border="1">
		<tr>
			评论内容"${commentcont}"<br>
			评论人"${uname}"<br>
			回复内容:<textarea name="reply" rows="10" cols="20">${reply}</textarea>
		</tr>
	</table>
	<a href="javascript:updateTypeSave()">回复</a>
	</form>

</body>
</html>