<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <title>评论设置</title>
</head>
<body>
<div id="tblsx">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-no',plain:true" onclick="deleteByid()">批量删除</a>

</div>

<div data-options="region:'center',title:''" style="background:#eee;">

    <table class="easyui-datagrid" id="lusx"></table>
    <div id="lsx-div1" style="display: none">
    </div>
</div>
    <script type="text/javascript">

        //评论分页
        $(function(){
            $('#lusx').datagrid({
                url:'<%=request.getContextPath()%>/commentController/queryComment.do',
                title:"商品评价信息",
                //显示斑马线效果
                striped:true,
                //在datagrid数据表格 只能选择一行
                singleSelect:false,
                //checkbox:true, //开启复选框

                //按住ctrl选择多行
                ctrlSelect:false,
                loadMsg:"数据加载中",
                //字段列自适应
                fitColumns:true,
                nowrap:false,
                //设置分页显示的属性
                pagination:true,
                //在设置分页属性的时候初始化页面大小
                pageSize:2,
                //在设置分页属性的时候 初始化页面大小选择列表
                pageList:[2,5,8],
                //当前页第几页
                pageNumber:1,
                toolbar: '#tb',
                columns:[[
                    {field:'checked',width:80,align:'center',checkbox:true },
                    {
                        field: 'commenttype', title: '评论状态', width: 80, align: 'center',
                        formatter: function (value, row, index) {
                            return value == 1?'好评':'差评';
                        }
                    },
                    {field:'commentcont',title:'评论内容',width:80,align:'center'},
                    {field:'uname',title:'评论人',width:80,align:'center'},
                    {field:'gjieshao',title:'宝贝信息',width:80,align:'center'},
                    {field:'reply',title:'回复内容',width:80,align:'center'},

                    {field:'cz',title:'操作',width:80,align:'center',
                        styler: function(value,row,index){
                            if (index%2==1) {
                                return 'background-color:#eeeeee;color:black;';
                            }
                        },
                        /**/
                        formatter:function(value,row,index) {
                            return "<input type='button' value='回复' onclick='dian(\"" + row.commentcont+ "\",\"" + row.uname+ "\",\"" + row.reply+ "\"," + row.commentid+ ")'><a id='btn2' href='javascript:deleteAs(" + row.commentid + ")' class='asyui-linkbutton' ><img  src='<%=request.getContextPath()%>/EasyUI/themes/icons/no.png'/></a>"
                        }

                    },
                ]]
            });
        });
        //删除单个
        function deleteAs(id){

            var selRow = $('#lusx').datagrid("getSelections");

            if(selRow.length==0){
                alert("请至少选择一条数据");
            }else{
                $.messager.confirm('删除','确定要删除吗？',function(r){
                    if (r){
                        $.ajax({
                            url:"<%=request.getContextPath()%>/commentController/deleteOne.do",
                            data:"id="+id,

                            success:function(){

                                $.messager.show({
                                    title:'提示',
                                    msg:'删除成功',
                                    timeout:1000,
                                    showType:'slide'
                                });
                                $('#lusx').datagrid("reload");
                            },
                            error:function(){
                                alert("删除失败");
                            }
                        })


                    }else{
                        $.messager.show({
                            title:'提示',
                            msg:'取消删除',
                            timeout:1000,
                            showType:'slide'
                        });
                    }
                });
            }
        }
        /* 批量删除 */
        function deleteByid(){
            var selRow = $('#lusx').datagrid("getSelections");
            if(selRow.length==0){
                alert("请至少选择一条数据");
            }else{
                $.messager.confirm('删除','确定要删除吗？',function(r){
                    if (r){
                        var ids=[];
                        for (var i = 0; i < selRow.length; i++) {
                            var id = selRow[i].commentid;
                            ids.push(id);
                        }
                        alert(id)
                        $.ajax({
                            url:"<%=request.getContextPath()%>/commentController/deleteByid.do",
                            data:"ids="+ids,
                            success:function(){
                                $.messager.show({
                                    title:'提示',
                                    msg:'删除成功',
                                    timeout:1000,
                                    showType:'slide'
                                });
                                $('#lusx').datagrid("reload");
                            },
                            error:function(){
                                alert("删除失败");
                            }
                        })
                    }else{
                        $.messager.show({
                            title:'提示',
                            msg:'取消删除',
                            timeout:1000,
                            showType:'slide'
                        });
                    }
                });
            }
        }

        //评论弹框
        function dian(commentcont,uname,reply,commentid){

            $('#lsx-div1').dialog({
                title: '评论人${uname}',
                width: 900,
                height: 400,
                closed: false,
                href: "<%=request.getContextPath()%>/commentController/queryUpdateComment.do?commentcont="+commentcont+"&uname="+uname+"&reply="+reply+"&commentid="+commentid,
            });
        }


    </script>
</body>
</html>