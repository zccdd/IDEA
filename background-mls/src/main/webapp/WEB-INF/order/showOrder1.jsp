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
<table id="tgl-table2" style="height: 500px" ></table>
<script type="text/javascript">
    $(function(){

        $('#tgl-table2').datagrid({
            url:'<%=request.getContextPath()%>/orderController/queryOrder2.do',
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

                         if(value==2){
                            return "<h3>卖家已付款<h3></br><h3>待商家发货<h3></br><input type='button' value='发货' onclick='updateOrder3("+row.oid+")'/>";
                        }

                    }

                }
            ]]
        });
    })
    function updateOrder3(id) {
        $.messager.confirm('发货', '您确定要发货么？', function (r) {
            if (r) {
                $.ajax({
                    url: "<%=request.getContextPath()%>/orderController/updateOrder3.do",
                    data: 'oid=' + id,
                    dataType: "json",
                    type: "post",
                    success: function (sucess2) {
                        $.messager.show({
                            title: '提示',
                            msg: '发货成功',
                           timeout: 1000,
                            showType: 'slide'
                        });
                        $('#tgl-table2').datagrid("reload");
                    }, error: function () {
                        alert("发货失败");
                    }
                })

            }
            else {
                $.messager.show({
                    title: '提示',
                    msg: '取消发货',
                    timeout: 1000,
                    showType: 'slide'
                });
            }
        });
    }

</script>
</body>
</html>
