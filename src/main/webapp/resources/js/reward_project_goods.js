var count=1;

function addKeywordForm(){
	var addedFormDiv=document.getElementById("add");
	
	var str='<table class="investment_list"><caption>'+count+'번째 상품</caption><tr class="t100"><th>상품명</th><td><input type="text" id="productName" name="productName" /></td><th>수량</th>	<td><input type="number" id="ea" name="ea" /></td></tr><tr class="t100"><th>정가</th><td><input type="number" id="onePrice" name="onePrice" /></td>	<th>SALE(%)</th><td><input type="number" id="sale" name="sale"/></td></tr><tr class="t100"><th>세일가</th><td><input type="text" id="price" name="price" /></td><th>발송 예정일</th><td><input type="date" id="sdate" name="sdate" /></td></tr></table>';
	if(count <= 5){
		var addedDiv=document.createElement("div");//폼 생성
		addedDiv.setAttribute("id","keyword_Frm"+count);
		addedDiv.innerHTML=str;//폼 Div안에 HTML삽입
		addedFormDiv.appendChild(addedDiv);//삽입할 DIV에 생성한 폼 삽입
		
		count++;

		$(function() {
		    $( "#testDatepicker1").datepicker({
		    });
		});
		$(function() {
		    $( "#testDatepicker2").datepicker({
		    });
		});
		$(function() {
		    $( "#testDatepicker3").datepicker({
		    });
		});
		$(function() {
		    $( "#testDatepicker4").datepicker({
		    });
		});
		$(function() {
		    $( "#testDatepicker5").datepicker({
		    });
		});
	}else{
		alert("상품은 5개까지 입력하실수 있습니다.");
	}
}



function delKeywordForm(){
	var addedFormDiv=document.getElementById("add");
	for(var thisCount=1;thisCount<6;thisCount++){
		var thisDiv = document.getElementById("keyword_Frm"+thisCount);
		addedFormDiv.removeChild(thisDiv);
		count--;
	}
}

$.ajax({//$는 jQuery란 뜻. $.ajax 뜻은 jQuery 내의 아작스 실행
	type:"POST",//데이터를 서버로 보내는 방법  
	url:"idCheck", //아작스 서버 주소 파일명
	data: {"id":$id},  //좌측 id 피라미터 이름에 우측 $id변수값을 저장
	success: function (data) {//success는 아작스로 받아오는것이 성공했을경우
		//서버 데이터를 data변수에 저장
		var _$idCheck = $("#idCheck");
		if(data == true){//중복 아이디가 있다면
			$newtext="<font color='red' size='3'><b>중복 아이디입니다.</b></font>";
			_$idCheck.text('');
			_$idCheck.show();
			_$idCheck.append($newtext);          		
			$("#id").val('').focus();
			return false;

		}else{//중복 아이디가 아니면
			_overlap = true;
			$newtext='<font color="blue" size="3"><b>사용가능한 아이디입니다.</b></font>';
			_$idCheck.text('');
			_$idCheck.show();
			_$idCheck.append($newtext);
			$("#id").attr("readonly",true);
			$("#password").focus();
		}  	    	  
	},
	error:function(){//비동기식 아작스로 서버디비 데이터를
		//못가져와서 에러가 발생했을 때 호출되는 함수이다.
		alert("data error");
	}
});//$.ajax

function goods_check(){
	if($.trim($("#productName").val())==""){
		alert("상품명을 입력하세요!");
		$("#productName").val("").focus();
		return false;
	}
	if($.trim($("#ea").val())==""){
		alert("수량을 입력하세요!");
		$("#ea").val("").focus();
		return false;
	}
	if($.trim($("#onePrice").val())==""){
		alert("정가를 입력하세요!");
		$("#price").val("").focus();
		return false;
	}
	if($.trim($("#sale").val())==""){
		alert("SALE을 입력하세요!");
		$("#sale").val("").focus();
		return false;
	}
	if($.trim($("#price").val())==""){
		alert("세일가를 입력하세요!");
		$("#price").val("").focus();
		return false;
	}
	if($.trim($("#sdate").val())==""){
		alert("발송 예정일을 입력하세요!");
		$("#sdate").val("").focus();
		return false;
	}
}
function myFunction(val){
	 var price = document.getElementById("price");
	 var sale = document.getElementById("sale");
	 var salePrice = document.getElementById("salePrice");
	 
	 var v1=Numver (price.value);
	 var v2=Number (sale.value);
	 
	 var v3;
	 if(val == "/"){
		v3 = mul (v1 , v2); 
	 }
	 salePrice.value=String(v3);
}
