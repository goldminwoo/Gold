
function findPassword(){ 
	
	if($.trim($("#id").val())==""){
		alert("회원아이디를 입력하세요!");
		$("#id").val("").focus();
		return false;
	}
	if($.trim($("#email").val())==""){
		alert("이메일을 입력하세요!");
		$("#email").val("").focus();
		return false;
	}
	
	var $id=$.trim($("#id").val());
	var $email=$.trim($("#email").val());
	$.ajax({//$는 jQuery란 뜻. $.ajax 뜻은 jQuery 내의 아작스 실행
		type:"POST",//데이터를 서버로 보내는 방법 
		url:"/treeproject/member/findPasswordOk", //아작스 서버 주소 파일명
		data: {"id":$id, "email":$email},
		success: function(result){
			alert(result);		
		},
		error: function(error){
			console.log(error);
		}
	});//$.ajax
}