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
<table id="tgl-table3" style="height: 500px" ></table>
<script type="text/javascript">
    $(function(){

        $('#tgl-table3').datagrid({
            url:'<%=request.getContextPath()%>/orderController/queryOrder3.do',
            pagination:true,
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

                        if(value==3){
                            return "<h3>商家已经发货<h3></br><h3>待买家收货<h3></br><input type='button' value='收货' onclick='updateOrder4("+row.oid+")'/>";
                        }

                    }

                }
            ]]
        });
    })
    function updateOrder4(id){
        $.messager.confirm('收货', '您确定要收货么？', function (r) {
            if (r) {
                $.ajax({
                    url: "<%=request.getContextPath()%>/orderController/updateOrder4.do",
                    data: 'oid=' + id,
                    dataType: "json",
                    type: "post",
                    success: function (sucess3) {
                        $.messager.show({
                            title: '提示',
                            msg: '收货成功',
                            timeout: 1000,
                            showType: 'slide'
                        });
                        $('#tgl-table3').datagrid("reload");
                    }, error: function () {
                        alert("收货失败");
                    }
                })

            }
            else {
                $.messager.show({
                    title: '提示',
                    msg: '取消收货',
                    timeout: 1000,
                    showType: 'slide'
                });
            }
        });

    }
</script>
</body>
</html>
