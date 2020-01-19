<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="../header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TREE FUNDING</title>
<link href="${pageContext.request.contextPath}/css/join.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/js/jquery.js"
	rel="stylesheet" type="text/css">
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="${pageContext.request.contextPath}/js/join.js"
	type="text/javascript"></script>
		<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>	
</head>

<body>
	<div id="open_wrap">
		<h2 class="pr">회원가입</h2>
		<form name="memberVO" method="post"
			action="${pageContext.request.contextPath}/member/joinOk"
			onsubmit="return joinCheck();">
			<table class="join_list">
				<colgroup>
					<col style="width: 200px">
				</colgroup>
				<tbody>
					<tr class="t100">
						<th>회원명</th>
						<td><input type="text" id="name" name="name"></td>
					</tr>
					<tr class="t72">
						<th>아이디</th>
						<td><input type="text" id="id" name="id">
							<input type="button" onclick="idCheck();" value="중복확인" /> <br /> <span
							id="idCheck"></span></td>
					</tr>
					<tr class="t100">
						<th>비밀번호</th>
						<td><input type="password" id="password" name="password"></td>
					</tr>
					<tr class="t100">
						<th>비밀번호확인</th>
						<td><input type="password" id="passwordCheck"></td>
					</tr>
					<tr class="t25">
						<th>이메일</th>
						<td><input id="email1" name="email1" size="10" /> @ <input
							id="email2" name="email2" size="10" readonly /> 
							<select name="mail_list" onchange="domain_list();">
								<option value="직접입력">직접입력</option>
								<option value="naver.com">naver.com</option>
								<option value="nate.com">nate.com</option>
								<option value="gmail.com">gmail.com</option>
						</select>
							<input type="button" onclick="sendEmail();" value="인증요청" /></td>
					</tr>
					<tr class="t72">
						<th>인증번호</th>
						<td><input type="text" id = "emailCode" name="emailCode">
							<input type="button" onclick="emailCodeCheck();" value="확인"></td>
					</tr>
					<tr class="t30">
						<th>전화번호</th>
						<td><select class="n_b" id="phone1" name="phone1">
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="017">017</option>
								<option value="018">018</option>
								<option value="019">019</option>
						</select>&nbsp;-&nbsp;<input type="text" id="phone2" name="phone2">
							<input type="text" id="phone3" name="phone3"></td>
					</tr>
					<tr class="t72">
						<th>주소</th>
						<td><select class="n_b" id="address1" name="address1">
								<option value="서울특별시">서울특별시</option>
								<option value="경기도">경기도</option>
								<option value="인천광역시">인천광역시</option>
								<option value="강원도">강원도</option>
								<option value="대전광역시">대전광역시</option>
								<option value="충청도">충청도</option>
								<option value="광주광역시">광주광역시</option>
								<option value="전라도">전라도</option>
								<option value="부산광역시">부산광역시</option>
								<option value="대구광역시">대구광역시</option>
								<option value="울산광역시">울산광역시</option>
								<option value="경상도">경상도</option>
								<option value="제주도">제주도</option>
						</select> <input type="text" id="address2" name="address2"></td>
					</tr>
					<tr class="t59">
						<th>사업자구분</th>
						<td><select name="businessType"
							onChange="change(this.options[this.selectedIndex].value)">
								<option class="n_b" id="businessChoose" 
									selected>사업자 선택</option>
								<option value="개인회원">개인회원</option>
								<option value="개인사업자">개인사업자</option>
								<option value="법인사업자">법인사업자</option>
						</select></td>
					</tr>
				</tbody>
			</table>
			<hr />
			<table class="join_list">
				<colgroup>
					<col style="width: 200px">
				</colgroup>
				<tbody>
					<tr class="t100" id="view1" style="display: none;">
						<th>대표자명</th>
						<td><input type="text" id="onerName" name="onerName"></td>
					</tr>
					<tr class="t100" id="view2" style="display: none;">
						<th>사업자 번호</th>
						<td><input type="text" id="businessLicense"
							name="businessLicense"></td>
					</tr>
					<tr class="t100" id="view3" style="display: none;">
						<th>기업명</th>
						<td><input type="text" id="companyName" name="companyName"></td>
					</tr>
				</tbody>
			</table>
			<div class="join_sub">
				<input type="submit" value="회원가입" /> <input type="reset" value="취소"/>
			</div>
		</form>
	</div>

	<%@include file="../footer.jsp"%>
</body>
</html>