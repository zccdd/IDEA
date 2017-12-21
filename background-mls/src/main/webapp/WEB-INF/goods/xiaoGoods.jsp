<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/19
  Time: 19:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<div data-options="region:'center',title:'欢迎来到坤哥Java开发软件'" style="padding:5px;background:#eee;">

    <table id="teaTable232" style="height: 500px"></table>
    <div id="dialogDiv"></div>
</div>
<script type="text/javascript">

    function zxc(){
        if($("#persex2").val()!=0){

            $("#qweq").val($("#persex2").val());
        }
    }

    $(function(){
        search();
    })

    function search(cknodes2){
        //分页需要向后台传递 两个参数：当前页 ：page  每页条数 ： rows
        //alert($("#d43113").val());
        $('#teaTable232').datagrid({
            url:'<%=request.getContextPath()%>/goods/queryxiaGoods.do?',
            pagination:true,
            pageNumber:1,
            pageSize:3,
            pageList:[3,5,8,10],
            queryParams:{

            },
//		    toolbar:"#tb",
            singleSelect:true,
            fitColumns:true,
            selectOnCheck:false,
            checkOnSelect:false,
            toolbar: [{
                iconCls: 'icon-add',
                handler: function(){
                    changeTabsZcc('新增地区','gwp/totiao.do')
                }
            },'-',{
                iconCls: 'icon-remove',
                handler: function(){
//					getSelections
//					var arrs = $('#dg').datagrid('getSelections');
                    var arrs = $('#teaTable232').datagrid('getChecked');
                    var gwpid="";
                    for (var  i = 0;  i < arrs.length;  i++) {
                        gwpid += arrs[i].gwpid+",";
                    }
                    if(gwpid!=null && gwpid!=""){
                        alert(gwpid);
                        deleteGwpByid(gwpid);
                        $.messager.show({
                            title:'消息提示',
                            msg:'删除成功',
                            timeout:2000,
                            showType:'slide'
                        });
                    }else{
                        alert("请选择要删除的数据!")
                    }

                }
            }],
            columns:[[
                {field:'che',title:'',width:'',checkbox:true},
                {field:'gname',title:'商品名称',width:''},
                {field:'img',title:'商品图片',width:'',
                    formatter:function(value,row,index){

                        var img = row.gimg;

                        return "<img style='height:50px' src='<%=request.getContextPath()%>\\image2/"+img+"'/>";
                    }
                },
                {field:'gprice',title:'价格',width:'18%'},
                {field:'gcount',title:'库存',width:'18%'},
                {field:'gjieshao',title:'商品简介',width:'20%',align:'right'},
                {field: 'str', title: '操作', width: 125, align: 'right',
                    formatter: function (value, row, index) {

                        return "<input type='button' value='上架' onclick='aaa2("+row.gid+")'/>"
                    },
                }
            ]]
        });
    }


         function aaa2(gid){
                    $('#dialogDiv').dialog({
                        title: '请选择',
                        width: 400,
                        height: 200,
                        closed: false,
                        cache: false,
                        href: '<%=request.getContextPath()%>/goods/queryByid.do?gid='+gid,
                        modal: true,
                        buttons:[{
                            text:'确定',
                            handler:function(){

                                $('#dialogDiv').dialog("close");
                            }
                        }]
                    });
    }
    function deleteGwpByid(gwpid){
        alert(gwpid);
        $.ajax({
            url:"<%=request.getContextPath()%>/gwp/deleteGwpByid.do",
            data:"gwpid2="+gwpid,
            type:"post",
            dataType:"json",
            success:function(gwpid2){

                search()
            },
            error:function(){
                alert("新增失败");
            }
        })
    }
</script>
</body>
</html>
