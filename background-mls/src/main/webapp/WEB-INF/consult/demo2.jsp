<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/20
  Time: 14:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div data-options="region:'center',title:''" style="background:#eee;">

    <table class="easyui-datagrid" id="lusx1"></table>
    <div id="lsx-div1" style="display: none">
    </div>
</div>
<div id="lsx-div2" style="display: none">


</div>
<script type="text/javascript">

    //评论分页
    $(function(){
        $('#lusx1').datagrid({
            url:'<%=request.getContextPath()%>/consult/queryConsultNo.do',
            title:"<input type='button' value='删除' onclick='deleteByid()'>",
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
                {field: 'consultcon', title: '咨询内容', width: 21, align: 'center'},
                {
                    field: 'consultstate', title: '回复状态', width: 80, align: 'center',
                    formatter: function (value, row, index) {
                        if(value==1){
                            return "已回复";
                        }else if(value==2){
                            return "未回复";
                        }
                    }
                },
                {field:'consult2',title:'回复内容',width:33,align:'center'},
                {field:'uname',title:'咨询人',width:23,align:'center'},
                {field:'aname',title:'商家',width:22,align:'center'},
                {field:'cz',title:'操作',width:22,align:'center',
                    styler: function(value,row,index){
                        if (index%2==1) {
                            return 'background-color:#eeeeee;color:black;';
                        }
                    },
                    /**/
                    formatter:function(value,row,index) {
                        return "<input type='button' value='回复' onclick='dian(" + row.consultid+ ",\"" + row.uname+ "\",\"" + row.aname+ "\",\"" + row.consult2+ "\")'>"
                    }

                },
            ]]
        });
    });
    /**
     * 点击咨询
     * @param id
     */
    function dian(consultid,uname,aname,consult2){
        alert(consult2)
        $('#lsx-div2').dialog({
            title: '咨询回复',
            width:  400,
            height: 400,
            closed: false,
            href: '<%=request.getContextPath()%>/consult/queryUpdateConsult.do?consultid='+consultid+"&uname="+uname+"&aname="+aname+"&consult2="+consult2,

        });
    }
    /* 批量删除 */
    function deleteByid(){
        var selRow = $('#lusx1').datagrid("getSelections");
        if(selRow.length==0){
            alert("请至少选择一条数据");
        }else{
            $.messager.confirm('删除','确定要删除吗？',function(r){
                if (r){
                    var ids=[];
                    for (var i = 0; i < selRow.length; i++) {
                        var id = selRow[i].consultid;
                        ids.push(id);
                    }
                    alert(id)
                    $.ajax({
                        url:"<%=request.getContextPath()%>/consult/deleteByids.do",
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
</script>

</body>
</html>
