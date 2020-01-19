/**
 *  investment_payment.js
 */
function openZipSearch(){
	new daum.Postcode({
		oncomplete: function(data){
			$('[name=addr1]').val(data.address);
		}
	}).open();
}

function paymentBtn(){
	alert('펀딩결제가 완료되었습니다.'); 
	location='/treeproject/investment/main';
}

/*$("paymentCont tr")*/

//발송처리
function button_event(){
	/*var dd=td.eq(0).text();
	dd*=1;*/
	if(confirm("발송처리 하시겠습니까?")==true){//확인
		btn = document.getElementById('shippingProcess');//클릭된 버튼값을 가져와서 btn 변수에 저장
		btn.disabled = 'disabled'; //btn변수를 비활성화처리
	}else{
		alert("생각하세요");

	}
}



