function change(style) {

	if( style == "개인" )
	{
		view1.style.display = "none"
			view2.style.display = "none"
				view3.style.display = "none"
	}
	if( style == "개인사업자" )
	{
		view1.style.display = ""
			view2.style.display = ""
				view3.style.display = "none"
	}
	if( style == "법인사업자" )
	{
		view1.style.display = ""
			view2.style.display = ""
				view3.style.display = ""
	}
}


function edit_check(){
	if($.trim($("#name").val())==""){
		alert("회원이름을 입력하세요!");
		$("#name").val("").focus();
		return false;
	}
	$password=$.trim($("#password").val());
	$password2=$.trim($("#password2").val());
	if($password == ""){
		alert("비번을 입력하세요!");
		$("#password").val("").focus();
		return false;
	}
	if($password2 == ""){
		alert("비번확인을 입력하세요!");
		$("#password2").val("").focus();
		return false;
	}
	if($password != $password2){
		alert("비번이 다릅니다!");
		$("#password").val("");//비번 입력박스를 초기화
		$("#password2").val("");
		$("#password").focus();
		return false;
	}
	if($.trim($("#phone2").val())==""){
		alert("전화번호를 입력하세요!");
		$("#phone2").val("").focus();
		return false;
	}
	if($.trim($("#phone3").val())==""){
		alert("전화번호를 입력하세요!");
		$("#phone3").val("").focus();
		return false;
	}
	if($.trim($("#address2").val())==""){
		alert("주소를 입력하세요!");
		$("#address2").val("").focus();
		return false;
	}
}

function goBack() {
    window.history.back();
}


function withdraw (){ //회원탈퇴
	
	var withdrawConfirm = confirm("탈퇴하시겠습니까?");
	if (withdrawConfirm == true){
		var $id=$.trim($("#id").val());
		$.ajax({//$는 jQuery란 뜻. $.ajax 뜻은 jQuery 내의 아작스 실행
			type:"POST",//데이터를 서버로 보내는 방법 
			url:"/treeproject/mypage/withdraw", //아작스 서버 주소 파일명
			data: {"id":$id},
			success: function(data){
				if(data == true){
					alert("회원탈퇴 완료");
					location.href = "/treeproject";
				}else{
					alert("회원탈퇴 실패");
				}
			},
			error: function(error){
				console.log(error);
			}
		});//$.ajax
	}
	else if(withdrawConfirm == false){
	
	}
	
	
	
}