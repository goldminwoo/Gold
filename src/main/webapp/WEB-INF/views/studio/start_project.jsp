<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TREE FUNDING</title>
<link
	href="${pageContext.request.contextPath}/resources/css/start_project.css"
	rel="stylesheet">
</head>
<body>
	<div class="out">
		<p>
			<a href="${pageContext.request.contextPath}/studio/fms">나가기<img
				src="${pageContext.request.contextPath}/images/next.png/" width="30"
				height="30"></a>
		</p>
	</div>

	<h2 class="treeproject">프로젝트 시작하기</h2>

	<div class="registration">
		<input type="button" class="btn-5" value="투자 등록"
			onclick="location='investment_project_join'" /> <input type="button"
			class="btn-6" value="리워드 등록" onclick="location='reward_project_join'" />

	</div>

	<div class="learn">
		<!-- <button class="b_bu5">투자 이용가이드 알아보기</button>
		<button class="b_bu5">리워드 이용가이드 알아보기</button> -->
	</div>
</body>
</html>