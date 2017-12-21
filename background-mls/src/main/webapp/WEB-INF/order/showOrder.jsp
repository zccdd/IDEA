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

</head>
<body>
    <div id="tgl-divs" >
        订单:<input type="text" name="oid"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        买家:<input type="text" name="uphone"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="button" value="搜索" onclick="search(1)">
    </div>
    <table id="tgl-table" style="height: 500px" >

        <div id="tgl_div2"></div>
    </table>

    <script type="text/javascript">

        $(function(){

            $('#tgl-table').datagrid({
                url:'<%=request.getContextPath()%>/orderController/queryOrder.do',
                pagination:true,
                pageNumber:1,
                pageSize:3,
                pageList:[3,5,8,10],
                columns:[[
                    {field:'gimg',title:'图片展示',
                        formatter:function(value,row,index){
                            var img=row.gimg;
                            return '<img  src="<%=request.getContextPath()%>/image2/'+img+'"  style="width:60px" >';}
                    },
                    {field:'gjieshao',title:'商品详情',width:220},
                    {field:'gprice',title:'单价',width:150},
                    {field:'gsales',title:'数量',width:150},
                    {field:'uname',title:'买家',width:200},
                    {field:'total',title:'订单总价',width:200},
                    {field:'status',title:'状态',width:200,
                        formatter:function(value,row,index){
                            if(value==1){
                                return "<h3>待卖家付款<h3></br><input type='button' value='调整费用' onclick='updateOrder("+row.oid+","+row.total+","+row.uphone+")'/>";
                            }

                        }

                    }
                ]]
            });
        })
        function updateOrder(id,total,uphone){
            $('#tgl_div2').dialog({
                title: '调整订单费用',
                width: 500,
                height: 300,
                closed: false,
                href: '<%=request.getContextPath()%>/orderController/upOrder.do?oid='+id+"&total="+total+"&uphone="+uphone,
                buttons:[{
                    text:'保存',
                    handler:function(){

                        $.ajax({
                            url:"<%=request.getContextPath()%>/orderController/updateOrder2.do",
                            data:$("#tgl-form2").serialize(),
                            dataType:"json",
                            type:"post",
                            success:function(sucess){

                                $.messager.show({
                                    title: '提示',
                                    msg: '修改成功',
                                    timeout: 1000,
                                    showType: 'slide'
                                });
                                $("#tgl_div2").dialog("close");
                                $('#tgl-table').datagrid("reload");
                            },error:function(){
                                alert("修改失败");
                            }
                        })
                    }

                },{
                    text:'关闭',
                    handler:function(){

                        $("#tgl_div2").dialog("close");
                    }
                }]
            });
        }
    </script>
</body>
</html>
