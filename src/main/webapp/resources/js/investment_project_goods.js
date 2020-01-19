var count=1;

function addKeywordForm(){
	var addedFormDiv=document.getElementById("add");
	
	var str='<table class="investment_list"><caption>'+count+'번째 투자 상품</caption><tr class="t100"><th>상품명</th><td><input type="text" id="productName" name="productName" /></td><th>수량</th>	<td><input type="number" id="ea" name="ea" /></td></tr><tr class="t100"><th>주당 가격</th><td><input type="number" id="price" name="price" /></td>	<th>초기 구매주</th><td><input type="number" id="one" name="one"/></td></tr><tr class="t100"><th>총 가격</th><td><input type="number" id="totalPrice" name="totalPrice" /></td><th>혜택</th><td><input type="text" id="benefits" name="benefits" /></td></tr></table>';
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
	if($.trim($("#price").val())==""){
		alert("주당가격을 입력하세요!");
		$("#price").val("").focus();
		return false;
	}
	if($.trim($("#one").val())==""){
		alert("초기 구매 주를 입력하세요!");
		$("#one").val("").focus();
		return false;
	}
	if($.trim($("#benefits").val())==""){
		alert("혜택을 입력하세요!");
		$("#benefits").val("").focus();
		return false;
	}
}
//function myFunction(val){
//	 var price = document.getElementById("price");
//	 var one = document.getElementById("one");
//	 var onePrice = document.getElementById("onePrice");
//	 
//	 var v1=Numver (price.value);
//	 var v2=Number (one.value);
//	 
//	 var v3;
//	 if(val == "/"){
//		v3 = mul (v1 , v2); 
//	 }
//	 onePrice.value=String(v3);
//}
