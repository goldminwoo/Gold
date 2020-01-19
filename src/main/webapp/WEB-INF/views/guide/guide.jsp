<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TREE FUNDING</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/guide.css" />
<!-- css외부 포함파일 불러오기, ./는 상대경로로 현재경로를 뜻함. -->
</head>
<body>
	<div id="wrap">
		<div class="guide1">TreeFunding Guide</div>
		<div class="guide1_img">
			<a class="aaaa" href="${pageContext.request.contextPath}/"> <img src="${pageContext.request.contextPath}/images/guide/guide06.png"></a>
		</div>
		<input type="text" autocomplete="off" class="search12"
			placeholder=" 키워드 검색" tabindex="1" name="q" value="">
		<!-- 가이드 메뉴1 Div -->
		<div class="guide2">
			<div class="guide2a">
				<a href="intro.jsp" class="aaaa">크라우드펀딩(트리펀딩)에 관하여</a>
			</div>
			<div class="guide2_img"></div>
			<div class="guide2b">
				<a href="#" class="aaaa">궁금하신분 클릭!</a>
			</div>
		</div>
		<!-- 가이드 메뉴2 Div -->
		<div class="guide3">
			<div class="guide3a">
				<a href="#" class="aaaa">트리펀딩을 사용할려면</a>
			</div>
			<div class="guide3_img"></div>
			<div class="guide3b">
				<a href="#" class="aaaa">처음 사용하는분들 클릭!</a>
			</div>
		</div>
		<!-- 가이드 메뉴3 Div -->
		<div class="guide4">
			<div class="guide4a">
				<a href="#" class="aaaa">투자 / 리워드 무엇인가?</a>
			</div>
			<div class="guide4_img"></div>
			<div class="guide4b">
				<a href="#" class="aaaa">투자와 리워드가 궁금하면 클릭!</a>
			</div>
		</div>
		<!-- 가이드 메뉴4 Div -->
		<div class="guide5">
			<div class="guide5a">
				<a href="#" class="aaaa">트리펀딩에서 자주 물어보는 질문은?</a>
			</div>
			<div class="guide2_img"></div>
			<div class="guide5b">
				<a href="#" class="aaaa">질문이 있다면 클릭!</a>
			</div>
		</div>

	</div>
	<%@include file="../footer.jsp"%>
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
</body>
</html>