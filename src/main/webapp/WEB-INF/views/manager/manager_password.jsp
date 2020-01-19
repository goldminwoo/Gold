<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="manager_header.jsp"%>
<%@ include file="manager_body1.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TREE FUNDING</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/manager_password.css">
</head>
<body>
	<h1>관리자 비밀번호 변경</h1>

	<div id=passwordDiv>
		<form method="post"
			action="${pageContext.request.contextPath}/manager/updateAdminPasswordOk">
			<input type="hidden" name="id" value="${id}"> <input
				type="password" name="password">현재 비밀번호<br> <input type="password"
				name="newPassword1">새로운 비밀번호<br> <input type="password"
				name="newPassword2">새로운 비밀번호 확인<br><br> <input type="submit"
				id="submitButton" value="비밀번호변경">
		</form>
	</div>
</body>
</html>