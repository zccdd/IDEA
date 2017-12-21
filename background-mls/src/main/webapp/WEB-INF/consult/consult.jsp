<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
    application.setAttribute("basePath", basePath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<div id="lsxtt" class="easyui-tabs" data-options="fit:true">


</div>

<script type="text/javascript">

    function changeTabs(titleStr,url){

        var flag = $('#lsxtt').tabs('exists',titleStr);
// 		alert(flag);
        if(flag){//true
// 			alert("已经打开次选项卡面板");
            $('#lsxtt').tabs('select',titleStr);
        }else{

            // 添加一个未选中状态的选项卡面板
            $('#lsxtt').tabs('add',{
                //title 选项卡面板的身份标识
                title:titleStr,
                selected: true,
                href:"<%=request.getContextPath()%>/"+url,
                closable:true,
                iconCls:"icon-ok"
                //...
            });


        }

    }


    $.ajax({
        success:function(){

            changeTabs("全部咨询","consult/tiao1.do");
            changeTabs("未回复咨询","consult/tiao2.do");
            changeTabs("已回复咨询","consult/tiao3.do");
        }
    })

</script>
</body>
</html>