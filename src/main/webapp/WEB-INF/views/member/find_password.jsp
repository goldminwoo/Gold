<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="find_header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/find_password.css">
<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/js/find_password.js"></script>
</head>
<body>
	<h2 class="display1">비밀번호 찾기</h2>
	<div class="tab-list">
		<a href="${pageContext.request.contextPath}/member/findId">아이디 찾기</a>
		<a href="${pageContext.request.contextPath}/member/findPassword">비밀번호
			찾기</a>
	</div>

	<div class="page-body">
		<div class="pw-check" style="min-height: calc(100vh - 187px);">
			<p class="body1">
				"가입하셨던 이메일 계정을 입력하시면," <br> "비밀번호를 새로 만들 수 있는 임시비밀번호를." <br />
				발송해드립니다.
			</p>
			<div class="tree input">
				<input id="id" class="input-text" type="text" name="id"
					placeholder="아이디"> <br> <input id="email" class="input-text"
					type="text" name="email" placeholder="이메일 계정">
			</div>
			<input id="findPassword" class="block button" type="button"
				onclick="findPassword();" value="임시비밀번호 발송">
		</div>
	</div>
</body>
</html>