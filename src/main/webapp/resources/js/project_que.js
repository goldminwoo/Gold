/**
 * project_que.js
 */
function que_ok(){
	if($.trim($("#queEmail").val())==""){
		alert("문의 이메일을 입력하세요!");
		$("#queEmail").val("").focus();
		return false;
	}
	if($.trim($("#quePhone1").val())==""){
		alert("문의 전화번호를 입력하세요!");
		$("#quePhone1").val("").focus();
		return false;
	}
	if($.trim($("#quePhone2").val())==""){
		alert("문의 전화번호를 입력하세요!");
		$("#quePhone2").val("").focus();
		return false;
	}
	if($.trim($("#quePhone2").val())==""){
		alert("문의 전화번호를 입력하세요!");
		$("#quePhone2").val("").focus();
		return false;
	}
	if($.trim($("#quePhone3").val())==""){
		alert("문의 전화번호를 입력하세요!");
		$("#quePhone3").val("").focus();
		return false;
	}
	if($.trim($("#queUrl").val())==""){
		alert("홈페이지를 입력하세요!");
		$("#queUrl").val("").focus();
		return false;
	}
	if($.trim($("#queSns").val())==""){
		alert("SNS를 입력하세요!");
		$("#queSns").val("").focus();
		return false;
	}
}