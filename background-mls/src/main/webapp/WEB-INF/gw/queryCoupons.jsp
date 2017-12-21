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


        满送活动名称<input type="text" name="couponsName" id="diqu" />
        审核状态<select name="state" id="shenhe">
                <option value="">全部</option>
                <option value="1">未提交审核</option>
                <option value="2">审核中</option>
                <option value="3">审核未通过</option>
                </select>
        活动状态<select name="active" id="huodong">
                 <option value="">全部</option>
                 <option value="1">未开始</option>
                 <option value="2">活动中</option>
                 <option value="3">已结束</option>
                </select>

                <input type="button" value="搜索" onclick="search()"/>



<a id="btn" href="javascript:delDq()" class="easyui-linkbutton" data-options="iconCls:'icon-cancel'">批量删除</a>
        <input type="button" onblur="zhuan()" value="开启新优惠">

<table  id="car-table" ></table>

<div id="cccxiugai" ></div>


<!-- 对话框--双击显框 -->

        <script type="text/javascript">

            $(function(){
                search();

            })

            function zhuan(){

                location.href='<%=request.getContextPath()%>/Coupons/zhuanzeng.do'
            }






            function search(){

                //分页需要向后台传递 两个参数：当前页 ：page  每页条数 ： rows

                $('#car-table').datagrid({
                    url:'<%=basePath%>/Coupons/querycoupons.do',
                    pagination:true,
                    pageNumber:1,
                    pageSize:10,
                    pageList:[8,5,3,10],
                    queryParams:{
                        couponsName:$("#diqu").val(),
                        state:$("#shenhe").val(),
                        active:$("#huodong").val(),
                    },
                    columns:[[

                        {field:'couponsLmg',title:'活动图片',width:200},
                        {field:'couponsName',title:'活动名称',width:200},
                        {field:'startedTime',title:'开始时间',width:200},
                        {field:'comeTime',title:'结束时间',width:200,},
                        {field:'state',title:'审核状态',width:200,
                            formatter: function(value,row,index){
//	 				alert(row.sex);
                                console.info(row);
                                var json=null;
                                if(row.state==1){
                                    json="未提交审核";
                                }
                                if(row.state==2){
                                    json="审核中";
                                }
                                if(row.state==3){
                                    json="审核未通过";
                                }
                                return json;
                            }
                        },
                        {field:'active',title:'活动状态',width:200,
                            formatter: function(value,row,index){
//	 				alert(row.sex);
                                console.info(row);
                                var json=null;
                                if(row.active==1){
                                    json="未开始";
                                }
                                if(row.active==2){
                                    json="活动中";
                                }
                                if(row.active==3){
                                    json="已结束";
                                }
                                return json;
                            }
                        },


                        {field:'status',title:'操作',width:100,
                            formatter:function(value,row,index){
                                return "<input type='button' name='opera'   class='easyui-linkbutton' data-toggle='modal'  onclick=querydan('"+row.couponsId+"') value='查看'/>"
//                        return "<input type='button' name='opera'   class='easyui-linkbutton' data-toggle='modal'  onclick=xiugai('"+row.couponsid+"') value='查看'/> <input type='button' name='opera2'   class='btn btn-primary btn-sm' data-toggle='modal'  onclick=shanchu('"+row.dqid+"') value='删除'/>";
                            }
                        },
                    ]],
                    onLoadSuccess:function(data){
                        $("a[name='opera']").linkbutton({text:'',plain:true,iconCls:'icon-edit'});

                        $("a[name='opera2']").linkbutton({text:'',plain:true,iconCls:'icon-cancel'});
                    }
                });

            }
            function querydan(id){

                location.href='<%=request.getContextPath()%>/Coupons/querdan.do?couponsId='+id;

            }
            function shanchu(id){
                $.ajax({
                    url:"<%=request.getContextPath()%>/Dq/deletshan.do",
                    type:"post",
                    data:{"dqid":id},
                    dataType:"json",
                    success:function(data){
                        if(data==1){

                            $.messager.alert('消息','删除成功');
                            $.messager.confirm('窗口','您确认要删除本条地区数据吗？',function(r){
                                search();
                            });
                        }
                    }
                });
            }
            function xiugai(id){

                $('#cccxiugai').dialog({
                    title: '地区修改',
                    width: 500,
                    height: 400,
                    closed: false,
                    cache: false,
                    href: '<%=request.getContextPath()%>/Dq/selectdqById.do?dqid='+id,
                    modal: true,


                });
                search();
            }

            //批量删除,单个删除
            function delDq(){
                var  row  =  $("#car-table").datagrid("getSelections");
                console.info(row);
                var id="";
                for (var i = 0; i < row.length; i++) {
                    id+= row[i].couponsId+",";
                }if(id!=""){

                    $.ajax({
                        url:"<%=request.getContextPath()%>/Coupons/delCoupons.do",
                        type:"post",
                        dataType:"text",
                        data:{"couponsid":id},
                        success:function(data){
                            $.messager.alert('消息','删除成功');
                            $.messager.confirm('窗口','您确认要删除数据吗？',function(r){

                            });
                            search();


                        }
                    })




                }else(

                        alert("至少选择一项")

                )


            }

        </script>
</body>

</html>