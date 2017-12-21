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
<table id="tgl-table5" style="height: 500px"></table>
<script type="text/javascript">
    $(function(){

        $('#tgl-table5').datagrid({
            url:'<%=request.getContextPath()%>/orderController/queryOrder5.do',
            pagination:true,
            fitColumns:true,
            pageNumber:1,
            pageSize:3,
            pageList:[3,5,8,10],
            columns:[[
                {field:'gimg',title:'图片展示',
                    formatter:function(value,row,index){
                        var img=row.gimg;
                        return '<img src="<%=request.getContextPath()%>/image2/'+img+'" style="width:60px">';}
                },
                {field:'gjieshao',title:'商品详情',width:220},
                {field:'gprice',title:'单价',width:150},
                {field:'gsales',title:'数量',width:150},
                {field:'uname',title:'买家',width:200},
                {field:'total',title:'订单总价',width:200},
                {field:'status',title:'状态',width:200,
                    formatter:function(value,row,index){

                        if(value==5){
                            return "<h3>交易完成<h3>";
                        }

                    }

                }
            ]]
        });
    })

</script>
</body>
</html>
