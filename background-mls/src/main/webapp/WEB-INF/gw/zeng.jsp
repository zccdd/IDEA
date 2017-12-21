<%--
  Created by IntelliJ IDEA.
  User: k偏执`
  Date: 2017/12/20
  Time: 20:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="/comm.jsp"></jsp:include>
<head>
    <title>Title</title>
</head>
<body>
<form id="MyCouponstable">

<h3>满送活动基本信息</h3>
    * 满送活动标题 <input type="text" name="couponsName"  ><br/>
    *  满送活动图片<input type="file" name="couponsLmg"accept=""/><br/>

    * 开始时间：<input type="text" name="startedTime"  ><br/>
    * 结束时间：<input type="text" name="comeTime" ><br/>
    * 活动描述：<input type="text" name="description"  ><br/>
    * 优  先级：<input type="text"><br/>
    <h3>会员限制条件</h3>
    * 会员等级:<select name="grade"  ><br/>
        <option value="4">所有会员等级</option>
        <option value="1">1会员等级</option>
        <option value="2">2会员等级</option>
        <option value="3">3会员等级</option>
</select></br>
        <input type="button" value="提交" onblur="tijiao()">
    </form>
<script>
    function tijiao(){
        $.ajax({
            url:'<%=request.getContextPath()%>/Coupons/saveCoupons.do',
            type:"post",
            data:$("#MyCouponstable").serialize(),
//         data:couponsName='das',
            dataType:"json",
            success:function(data){
                if(data!=1){

                    alert("不可有空值.")


                }else{
                    $.messager.alert('消息','地区添加成功欢迎查看');
                    $.messager.confirm('窗口','您确认要添加地区吗？',function(r){

                        location.href='<%=request.getContextPath()%>/Coupons/queryCoco.do';

                    });
                }
            }
        });
    }





</script>
</body>

</html>
