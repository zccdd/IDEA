	//��������
$(function(){
	$(".d").each(function(){//ѭ��ÿ�������µĸ�ѡ��
		$(this).click(function(){//�������
			var sum =parseInt($("#sum").html());//��ȡ���ܽ��
			if($(this).get(0).checked){//����ӵ�0 ��checked��ʼ
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

//sum�������ܽ��
function sum(){
	var sum1=0;
	var money1=$(".money");
	for(var i=0;i<money1.length;i++){
		sum1+=parseInt($(money1[i]).html());
	}
	$("#sum").html(sum1);
}
//�ĸ�ѡ������һ��
function jisuan(){
	var sum = 0;
	$(".d").each(function(){//ѭ�������µ�����classΪd����Ʒ
		if($(this).get(0).checked){
			sum+=parseInt($(this).parent().parent().find(".money").html());
		}
		$("#sum").html(sum);
	});
};
// ��������
function  jian(a){
	if($(a).next().val()==1){//���a����һ��Ԫ�ص�Ĭ��ֵΪ1��a����һ��Ԫ�����ı����ڵ�ֵ��
		$(a).next().val(1);
	}else{
		$(a).next().val($(a).next().val()-1);//����a����һ��Ԫ�ص�ֵ�ǵ�ǰ��ֵ��1
	}
	var t=parseInt($(a).next().val());//�ѱ��ı����ֵ��������t 
	var price = $(a).parent().prev().find("span").html();//���۾��Ǳ�Ԫ�صĸ���Ԫ�ص���һ��ƽ��Ԫ�����span��ֵ
	$(a).parent().next().find("span").html(t*price);//�ܼ۾��Ǳ�Ԫ�صĸ����ص���һ��ƽ��Ԫ�����span��ֵ
	jisuan();
}

//�ӷ�����
function  jia(b){
	$(b).prev().val(parseInt($(b).prev().val())+1);//��ǰƽ��Ԫ�ص���һ��Ԫ��(���ı���)��valֵ���ı���ǰ��valֵ��1
	var ts=parseInt($(b).prev().val());//���ı����ֵ��������ts
	var price = $(b).parent().prev().find("span").html();//���۾��Ǳ�Ԫ�صĸ���Ԫ�ص���һ��ƽ��Ԫ�����span��ֵ
	$(b).parent().next().find("span").html(ts*price);//�ܼ۾��Ǳ�Ԫ�صĸ����ص���һ��ƽ��Ԫ�����span��ֵ
	jisuan();
}

/*ȫѡȫ��ѡ*/
$(".all").click(function(){
	$(":checkbox").each(function(){
		$(this).get(0).checked=$("#all").get(0).checked;
	});
	//���ȫѡ����ܽ��
	if($(":checkbox").get(0).checked=$("#all").get(0).checked){
		sum();
	}else{
		$("#sum").html(0)                                                                                                    
	}
		
});

/*����������ת��ҳ*/
$("#btn1").click(function(){
  	location.href="ShopServlet";
});

/*�ж��Ƿ��ж�ѡ��ѡ��*/
$("#suan").click(function(){
	var i=0;
	$("input:checked").each(function(){
		i++;		
	});
	if(i>0){
		return true;
	}else{
		alert("����δѡ���κ���Ʒ����ѡ��")
		return false;
	}
	
});
