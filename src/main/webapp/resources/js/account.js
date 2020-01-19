/**
 *  account.js
 */

function inCheck(){
	if($.trim($("#bankIn").val())==""){
		alert("은행명을 입력하세요!");
		$("#bankIn").val("").focus();
		return false;
	}
	if($.trim($("#nameIn").val())==""){
		alert("예금주명을 입력하세요!");
		$("#nameIn").val("").focus();
		return false;
	}
	if($.trim($("#bankNoIn").val())==""){
		alert("계좌번호을 입력하세요!");
		$("#bankNoIn").val("").focus();
		return false;
	}
	if($.trim($("#priceIn").val())==""){
		alert("입금액을 입력하세요!");
		$("#priceIn").val("").focus();
		return false;
	}
}

function creditChargeCheck(){
	if($.trim($("#bankOut").val())==""){
		alert("은행명을 입력하세요!");
		$("#bankOut").val("").focus();
		return false;
	}
	if($.trim($("#nameOut").val())==""){
		alert("예금주명을 입력하세요!");
		$("#namOute").val("").focus();
		return false;
	}
	if($.trim($("#bankNoOut").val())==""){
		alert("계좌번호을 입력하세요!");
		$("#bankNoOut").val("").focus();
		return false;
	}
	if($.trim($("#pwdOut").val())==""){
		alert("비밀번호를 입력하세요!");
		$("#pwdOut").val("").focus();
		return false;
	}
	if($.trim($("#priceOut").val())==""){
		alert("충전금액을 입력하세요!");
		$("#bankNoOut").val("").focus();
		return false;
	}
}