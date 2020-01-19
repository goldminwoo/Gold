function change(style) {

	if( style == "o1" )
	{
		view1.style.display = "none"
			view2.style.display = "none"
				view3.style.display = "none"
	}
	if( style == "o2" )
	{
		view1.style.display = ""
			view2.style.display = ""
				view3.style.display = "none"
	}
	if( style == "o3" )
	{
		view1.style.display = ""
			view2.style.display = ""
				view3.style.display = ""
	}
}

/**
 * member.js
 */
function join_check(){
	if($.trim($("#projectName").val())==""){
		alert("프로젝트명을 입력하세요!");
		$("#projectName").val("").focus();
		return false;
	}
	if($.trim($("#name").val())==""){
		alert("대표자 이름을 입력하세요!");
		$("#name").val("").focus();
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
	if($.trim($("#pay").val())==""){
		alert("목표 금액을 입력하세요!");
		$("#pay").val("").focus();
		return false;
	}
	if($.trim($("#businessNumber").val())==""){
		alert("사업자 번호를 입력하세요!");
		$("#businessNumber").val("").focus();
		return false;
	}
	if($.trim($("#address2").val())==""){
		alert("기업 주소를 입력하세요!");
		$("#adress").val("").focus();
		return false;
	}
	if($.trim($("#testDatepicker1").val())==""){
		alert("프로젝트 시작기간을 입력하세요!");
		$("#testDatepicker1").val("").focus();
		return false;
	}
	if($.trim($("#testDatepicker2").val())==""){
		alert("프로젝트 종료기간을 입력하세요!");
		$("#testDatepicker2").val("").focus();
		return false;
	}
/*	if($.trim($("#searchTag").val())==""){
		alert("검색용 태그를 입력하세요!");
		$("#searchTag").val("").focus();
		return false;
	}
	if($.trim($("#cate").val())==""){
		alert("카테고리를 선택해주세요!");
		$("#category").val("").focus();
		return false;
	}*/
}

//중복아이디 검색
function id_check(){
 /* copy begin */
	$("#idcheck").hide();
	//아이디 영역을 숨김
	$id=$.trim($("#id").val());
	//1.입력글자 길이 체크
	if($id.length < 4){
		$newtext='<font color="red" size="3"><b>아이디는 4자 이상이어야 합니다.</b></font>';
		$("#idcheck").text('');
		//idcheck 아이디 영역 문자열을 초기화
		$("#idcheck").show();
		//idcheck 아이디 영역을 보이게 함.
		$("#idcheck").append($newtext);
		//idcheck영역에 문자열을 추가
		$("#id").val('').focus();
		return false;
	};
	if($id.length > 12){
		$newtext='<font color="red" size="3"><b>아이디는12자 이하이어야 합니다.</b></font>';
		$("#idcheck").text('');
		//idcheck 아이디 영역 문자열을 초기화
		$("#idcheck").show();
		//idcheck 아이디 영역을 보이게 함.
		$("#idcheck").append($newtext);
		//idcheck영역에 문자열을 추가
		$("#id").val('').focus();
		return false;
	};
	//2.입력글자 확인
	if(!(validate_userid($id))){
		$newtext='<font color="red" size="3"><b>아이디는 영문소문자,숫자,_조합만 가능합니다.</b></font>';
		$("#idcheck").text('');
		$("#idcheck").show();
		$("#idcheck").append($newtext);
		$("#id").val('').focus();
		return false;
	};
	//아이디 중복확인
    $.ajax({//$는 jQuery란 뜻. $.ajax 뜻은 jQuery 내의 아작스 실행
        type:"POST",//데이터를 서버로 보내는 방법
       //url:"./member/member_idcheck.jsp",    
        url:"member_idcheck", //아작스 서버 주소 파일명
        data: {"id":$id},  //좌측 id 피라미터 이름에 우측 $id변수값을 저장
        datatype:"int",//서버의 실행된 결과값을 사용자로 받아오는 방법
        success: function (data) {//success는 아작스로 받아오는것이 성공했을경우
        	//서버 데이터를 data변수에 저장
      	  if(data==1){//중복 아이디가 있다면
      		$newtext='<font color="red" size="3"><b>중복 아이디입니다.</b></font>';
      		$("#idcheck").text('');
        	$("#idcheck").show();
        	$("#idcheck").append($newtext);          		
          	$("#id").val('').focus();
          	return false;
	     
      	  }else{//중복 아이디가 아니면
      		$newtext='<font color="blue" size="3"><b>사용가능한 아이디입니다.</b></font>';
      		$("#idcheck").text('');
      		$("#idcheck").show();
      		$("#idcheck").append($newtext);
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
	  var num=m.mail_list.selectedIndex;//선택한 목록 항목 번호
	  if(num == -1){//목록이 선택되지 않았을때 실행
		  return true;
	  }
	  if(m.mail_list.value =="직접입력"){
		  m.email2.value = "";
		  m.email2.readOnly=false;//쓰기 가능
		  m.email2.focus();//입력박스로 포커스 이동
	  }else{//목록에서 멜주소를 선택한 경우
		 m.email2.value=m.mail_list.options[num].value;
		 //목록 옵션 value값이 멜도메인 입력박스로 입력
		 m.email2.readOnly=true;//읽기만 가능
	  }
	}//domain_list()