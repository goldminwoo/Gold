<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="find_header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TREE FUNDING</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/find_id.css">
<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/js/find_id.js"></script>
</head>
<body>

	<h2 class="display1">아이디 찾기</h2>
	<div class="tab-list">
		<a href="${pageContext.request.contextPath}/member/findId">아이디 찾기</a>
		<a href="${pageContext.request.contextPath}/member/findPassword">비밀번호
			찾기</a>
	</div>

	<div class="page-body">
		<div class="pw-check" style="min-height: calc(100vh - 187px);">
			<p class="body1">
				"이름과 이메일을 입력해주세요." <br> "가입여부를 확인해드립니다."
			</p>
			<div class="tree input">
				<input id="name" class="input-text" type="text" name="name"
					placeholder="이름"> <br> <input id="email"
					class="input-text" type="text" name="email" placeholder="이메일 계정">
			</div>
			<input id="findId" class="block button" type="button" value="아이디찾기"
				onclick="findId();">
		</div>
	</div>
</body>
</html>