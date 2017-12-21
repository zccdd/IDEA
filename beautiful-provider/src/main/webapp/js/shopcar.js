	//单个结算
$(function(){
	$(".d").each(function(){//循环每个店铺下的复选框
		$(this).click(function(){//单个点击
			var sum =parseInt($("#sum").html());//获取到总金额
			if($(this).get(0).checked){//如果从第0 个checked开始
				sum+=parseInt($(this).parent().parent().find(".money").html());
			}else{
				sum-=parseInt($(this).parent().parent().find(".money").html());
			}
			$("#sum").html(sum);
		})
	});
	$(".price").each(function(){
		var price = parseInt($(this).html());
		var num = parseInt($(this).parent().next().find("#numaa").val());
		$(this).parent().parent().find(".money").html(price*num);
	});
	
});

//sum方法，总金额
function sum(){
	var sum1=0;
	var money1=$(".money");
	for(var i=0;i<money1.length;i++){
		sum1+=parseInt($(money1[i]).html());
	}
	$("#sum").html(sum1);
}
//哪个选中算哪一个
function jisuan(){
	var sum = 0;
	$(".d").each(function(){//循环店铺下的所有class为d的商品
		if($(this).get(0).checked){
			sum+=parseInt($(this).parent().parent().find(".money").html());
		}
		$("#sum").html(sum);
	});
};
// 减法运算
function  jian(a){
	if($(a).next().val()==1){//如果a的下一级元素的默认值为1（a的下一级元素是文本框内的值）
		$(a).next().val(1);
	}else{
		$(a).next().val($(a).next().val()-1);//否则a的下一级元素的值是当前的值减1
	}
	var t=parseInt($(a).next().val());//把本文本框的值赋给变量t 
	var price = $(a).parent().prev().find("span").html();//单价就是本元素的父级元素的上一个平级元素里的span的值
	$(a).parent().next().find("span").html(t*price);//总价就是本元素的父级素的下一个平级元素里的span的值
	jisuan();
}

//加法运算
function  jia(b){
	$(b).prev().val(parseInt($(b).prev().val())+1);//当前平级元素的上一个元素(即文本框)的val值是文本框当前的val值加1
	var ts=parseInt($(b).prev().val());//本文本框的值赋给变量ts
	var price = $(b).parent().prev().find("span").html();//单价就是本元素的父级元素的上一个平级元素里的span的值
	$(b).parent().next().find("span").html(ts*price);//总价就是本元素的父级素的下一个平级元素里的span的值
	jisuan();
}

/*全选全不选*/
$(".all").click(function(){
	$(":checkbox").each(function(){
		$(this).get(0).checked=$("#all").get(0).checked;
	});
	//点击全选后的总金额
	if($(":checkbox").get(0).checked=$("#all").get(0).checked){
		sum();
	}else{
		$("#sum").html(0)                                                                                                    
	}
		
});

/*继续购物跳转首页*/
$("#btn1").click(function(){
  	location.href="ShopServlet";
});

/*判断是否有多选框被选中*/
$("#suan").click(function(){
	var i=0;
	$("input:checked").each(function(){
		i++;		
	});
	if(i>0){
		return true;
	}else{
		alert("您还未选中任何商品，请选择")
		return false;
	}
	
});
