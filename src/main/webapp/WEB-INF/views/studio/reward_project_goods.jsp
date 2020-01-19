<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TREE FUNDING</title>
<link
	href="${pageContext.request.contextPath}/css/reward_project_goods.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/js/jquery.js"
	rel="stylesheet" type="text/css">
<script
	src="${pageContext.request.contextPath}/js/reward_project_goods.js"
	type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
</head>
<body>
	<%@include file="studio_main_header.jsp"%>
	<%@include file="studio_main_category.jsp"%>
	<div id="open_wrap">
		<h1 class="pr">리워드 상품 등록</h1>
		<form name="RewardItemVO" method="post"
			action="${pageContext.request.contextPath}/studio/reward_project_goods_ok"
			onsubmit="return join_check();">

			<b>등록된 리워드는 변경이 불가하오니 신중히 선택하시기 바랍니다. 단,추가는 가능합니다.<br /></b>
			<div class="page">
				<input type="button" value="항목추가" class="bt"
					onclick="addKeywordForm();" /> <input type="button" value="항목초기화"
					class="bt" onclick="delKeywordForm();" />
			</div>
			<div id="add"></div>
			<div class="investment_sub">
				<input type="submit" value="다음" /> <input type="reset" value="취소"
					onclick="location='studio_main';" />
			</div>
		</form>
	</div>
</body>
</html>

