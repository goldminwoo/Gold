
//이메일 인증 확인 변수
var _emailCheck = false;

//중복확인 변수
var _overlap = false;

function change(style) {

	if( style == "개인회원" )
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


//회원가입 버튼 눌렀을때 아이디, 비밀번호 등 유효성 검증
function joinCheck(){
	if($.trim($("#name").val())==""){
		alert("회원이름을 입력하세요!");
		$("#name").val("").focus();
		return false;
	}
	if($.trim($("#id").val())==""){
		alert("회원아이디를 입력하세요!");
		$("#id").val("").focus();
		return false;
	}
	$password1=$.trim($("#password").val());
	$passwordCheck=$.trim($("#passwordCheck").val());
	if($password1 == ""){
		alert("비번을 입력하세요!");
		$("#password").val("").focus();
		return false;
	}
	if($passwordCheck == ""){
		alert("비밀번호 확인을 입력하세요!");
		$("#passwordCheck").val("").focus();
		return false;
	}
	if($password1 != $passwordCheck){
		alert("비밀번호가 다릅니다!");
		$("#password").val("");//비번 입력박스를 초기화
		$("#passwordCheck").val("");
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
		$("#address").val("").focus();
		return false;
	}
	if (_overlap === false){
		alert("아이디 중복확인을 해주세요!")
		return false;
	}

	
	if (_emailCheck === false){
		alert("이메일 인증을 확인하세요!");
		return false;
	}
	
	alert("회원가입을 축하합니다!")

}

//중복아이디 검색
function idCheck(){
	/* copy begin */
	$("#idCheck").hide();
	//아이디 영역을 숨김
	var $id=$.trim($("#id").val());
	//1.입력글자 길이 체크
	if($id.length < 4){
		$newtext='<font color="red" size="3"><b>아이디는 4자 이상이어야 합니다.</b></font>';
		$("#idCheck").text('');
		//idCheck 아이디 영역 문자열을 초기화
		$("#idCheck").show();
		//idCheck 아이디 영역을 보이게 함.
		$("#idCheck").append($newtext);
		//idCheck영역에 문자열을 추가
		$("#id").val('').focus();
		return false;
	};
	if($id.length > 12){
		$newtext='<font color="red" size="3"><b>아이디는12자 이하이어야 합니다.</b></font>';
		$("#idCheck").text('');
		//idCheck 아이디 영역 문자열을 초기화
		$("#idCheck").show();
		//idCheck 아이디 영역을 보이게 함.
		$("#idCheck").append($newtext);
		//idCheck영역에 문자열을 추가
		$("#id").val('').focus();
		return false;
	};
	//2.입력글자 확인
	if(!(validate_userid($id))){
		$newtext='<font color="red" size="3"><b>아이디는 영문소문자,숫자,_조합만 가능합니다.</b></font>';
		$("#idCheck").text('');
		$("#idCheck").show();
		$("#idCheck").append($newtext);
		$("#id").val('').focus();
		return false;
	};
	//아이디 중복확인
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
	/* end */	
}

//정규표현식
function validate_userid($id)
{
	var pattern= new RegExp(/^[a-z0-9_]+$/);//아이디를 영문소문
	//자와 숫자 와 _조합으로 처리
	return pattern.test($id);
};

//메일 주소 선택과 직접입력
function domain_list(){
	var num = memberVO.mail_list.selectedIndex;//선택한 목록 항목 번호
	if(num == -1){//목록이 선택되지 않았을때 1실행
		return true;
	}
	if(memberVO.mail_list.value =="직접입력"){
		memberVO.email2.value = "";
		memberVO.email2.readOnly=false;//쓰기 가능
		memberVO.email2.focus();//입력박스로 포커스 이동
	}else{//목록에서 멜주소를 선택한 경우
		memberVO.email2.value=memberVO.mail_list.options[num].value;
		//목록 옵션 value값이 멜도메인 입력박스로 입력
		memberVO.email2.readOnly=true;//읽기만 가능
	}
}//domain_list()

//컨트롤러에 있는 sendEmail() 실행시켜서 인증 메일 발송
function sendEmail(){
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
	/* end */	
}
	function emailCodeCheck(){ //이메일 인증 확인
		var $email1=$.trim($("#email1").val());
		var $email2=$.trim($("#email2").val());
		var $emailCode=$.trim($("#emailCode").val());
		$.ajax({//$는 jQuery란 뜻. $.ajax 뜻은 jQuery 내의 아작스 실행
			type:"POST",//데이터를 서버로 보내는 방법 
			url:"/treeproject/member/emailCodeCheck", //아작스 서버 주소 파일명
			data: {"email1":$email1, "email2":$email2, "emailCode":$emailCode},
			success: function(data){
				if(data == true){
					_emailCheck = true;
					alert("이메일 인증 성공");
				}else{
					alert("이메일 인증 실패")
					_emailChek = false;
				}
			},
			error: function(error){
				console.log(error);
			}
		});//$.ajax
	}

