var count=1;
//count 초기화값을 db에서 가져온 리워드 ()번째값+1로 초기화 해야함.

function addKeywordForm(){
	var addedFormDiv=document.getElementById("add");
	
	var str='<table class="investment_list"><caption>'+count+'번째 상품</caption><tr class="t100"><th>상품명</th><td><input type="text" /></td><th>수량</th><td><input type="text" /></td></tr><tr class="t100"><th>정가</th><td><input type="text" /></td><th>SALE(%)</th><td><input type="text" /></td></tr><tr class="t100"><th>세일가</th><td><input type="text" readonly /></td><th>발송 예정일</th><td><input type="text" id="testDatepicker'+count+'" /></td></tr></table>';
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
