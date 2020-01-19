
function deleteBoardConfirm(){
	var withdrawConfirm = confirm("게시물을 삭제하시겠습니까?");
	if (withdrawConfirm === true){
		return true;
	}else{
		return false;
	}
}

function deleteReplyConfirm(){
	var withdrawConfirm = confirm("댓글을 삭제하시겠습니까?");
	if (withdrawConfirm === true){
		return true;
	}else{
		return false;
	}
}

/*function deleteReplyOne(){
	var $email1=$.trim($("#email1").val());
	var $email2=$.trim($("#email2").val());
	$.ajax({//$는 jQuery란 뜻. $.ajax 뜻은 jQuery 내의 아작스 실행
		type:"POST",//데이터를 서버로 보내는 방법 
		url:"/treeproject/member/sendEmail", //아작스 서버 주소 파일명
		data:{"email1":$email1, "email2":$email2},  //좌측 피라미터 이름에 우측  변수값을 저장
		success: function(data){
			console.log(data);
			alert("이메일 발송 완료");
		},
		error: function(error){
			console.log(error);
			alert("이메일 발송 실패")
		}
	});//$.ajax
	 end 	
}*/