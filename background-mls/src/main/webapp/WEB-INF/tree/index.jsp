<%--
  Created by IntelliJ IDEA.
  User: java111
  Date: 2017/12/18
  Time: 16:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>美丽说卖家管理</title>
    <jsp:include page="../../comm.jsp"></jsp:include>
    <style type="text/css">
        .content {
            padding: 10px 10px 10px 10px;
        }
    </style>
</head>
<body class="easyui-layout">
<div data-options="region:'north',title:'美丽说',split:true" style="height:100px;">
    <div style="float: left">
        <img src="<%=request.getContextPath()%>/upload/logo.png">
    </div>
</div>
<div data-options="region:'west',title:'菜单',split:true" style="width:180px;">
    <div id="manage-Ztree" class="ztree"> </div>
</div>
<div data-options="region:'center',title:''">
    <div id="tabs" class="easyui-tabs">
        <div title="首页" style="padding:20px;">

        </div>
    </div>
</div>

<script type="text/javascript">
    var setting = {
        data: {
            simpleData: {
                enable: true,
                pIdKey:"pid",
                idKey:"id",
            },key: {
                url: "xUrl"
            }
        },callback: {
            onClick: zTreeOnClick
        }
    };

    $(document).ready(function(){
        $.ajax({
            url:"<%=request.getContextPath()%>/TreeController/queryTree.do",
            type:"post",
            dataType:"json",
            success:function(zNodes){
                $.fn.zTree.init($("#manage-Ztree"), setting, zNodes);
            },
            error:function(){
                alert("查询失败");
            }

        })

    });
    function zTreeOnClick(event, treeId, treeNode) {
        //	alert(treeNode.url);
        //获得树形菜单的所有节点
        //var treeObj = $.fn.zTree.getZTreeObj("treeDemo");
        var tabs =$("#tabs").tabs("getTab",treeNode.name);
        if(tabs==null){
            if(treeNode.url!=null &&treeNode.url!=""){
                $("#tabs").tabs("add",{
                    title:treeNode.name,
                    href:"<%=request.getContextPath()%>/"+treeNode.url,
                    closable:true,
                    tools:[{
                        iconCls:'icon-mini-refresh',
                        handler:function(){

                        }
                    }]

                })
            }
        }else{
            //如果选项卡已激活需要切换选项卡切换到已激活的选项卡上
            $("#tabs").tabs("select",treeNode.name);
            var tabs_selected =$("#tabs").tabs("getSelected");
            tabs_selected.panel("refresh","<%=request.getContextPath()%>/"+treeNode.url);

        }

        //获得父节点

    };
</script>
</body>
</html>
