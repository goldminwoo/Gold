<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/manager_header.css">
</head>
<body>
<div id="managerheader">
		<div class="h-1">
			<a href="${pageContext.request.contextPath}/manager/index" class="h-a1">TREE FUNDING 관리자</a>
		</div>
		<div class="h-1 h-2">
			<a class="h-a2" id="managerLogout"
			href="${pageContext.request.contextPath}/manager/managerLogout">로그아웃</a>
		</div>
	</div>
</body>
</html>