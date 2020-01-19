<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TREE FUNDING</title>
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/modern-business.css"
	rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/mainHeader.js"
	type="text/javascript"></script>
<link href="${pageContext.request.contextPath}/js/jquery.js"
	rel="stylesheet" type="text/css">
</head>
<body>
	<nav
		class="navbar fixed-top navbar-expand-lg navbar-dark bg-cus fixed-top">
		<div class="container">
			<a href="${pageContext.request.contextPath}/"><img
				src="${pageContext.request.contextPath}/images/header/logo2.PNG"
				class="bg-ss" width="250" height="80"></a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link nav-white"
						href="${pageContext.request.contextPath}/investment/main">투자</a></li>
					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/reward/main">리워드</a></li>
					<%-- <li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							펀딩오픈 신청하기</a>
						<div class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownBlog">
							<a class="dropdown-item"
								href="${pageContext.request.contextPath}/investment/open">투자
								오픈 신청하기</a> <a class="dropdown-item"
								href="${pageContext.request.contextPath}/reward/open">리워드 오픈
								신청하기</a>
						</div></li> --%>
						<li class="nav-item"><a class="nav-link nav-white"
						href="${pageContext.request.contextPath}/board/list">자유게시판</a></li>
					<%-- <li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#"
						id="navbarDropdownPortfolio" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">더보기</a>
						<div class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownPortfolio">
							<a class="dropdown-item"
								href="${pageContext.request.contextPath}/board/list">자유 게시판</a>
						</div></li> --%>
					<c:if test="${!empty id }">
						<%-- 로그인 후 --%>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#"
							id="navbarDropdownPortfolio" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false">마이페이지</a>
							<div class="dropdown-menu dropdown-menu-right"
								aria-labelledby="navbarDropdownPortfolio">
								<a class="dropdown-item"
									href="${pageContext.request.contextPath}/mypage/mypage">내정보
									관리</a>
								<%-- <a class="dropdown-item"
                        href="${pageContext.request.contextPath}/message/message">메시지</a>
                     <a class="dropdown-item"
                        href="${pageContext.request.contextPath}/mypage/calculate">정산
                        관리</a> --%>
							</div></li>
					</c:if>
					<%-- <li class="nav-item"><a class="nav-link"
                  href="${pageContext.request.contextPath}/guide/guide">이용가이드</a></li> --%>
					<c:if test="${empty id }">
						<%-- 로그인 전 --%>
						<li class="nav-item"><a class="nav-link" id="login"
							href="${pageContext.request.contextPath}/member/login">로그인</a></li>
						<li class="nav-item"><a class="nav-link" id="join"
							href="${pageContext.request.contextPath}/member/join">회원가입</a></li>
					</c:if>
					<c:if test="${!empty id }">
						<%-- 로그인 후 --%>
						<li class="nav-item"><a class="nav-link" id="logout"
							href="${pageContext.request.contextPath}/member/logout">로그아웃</a></li>
					</c:if>
				</ul>
			</div>
		</div>
	</nav>

</body>
</html>