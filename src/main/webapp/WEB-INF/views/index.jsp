<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>TREE FUNDING</title>
<link href="${pageContext.request.contextPath}/css/reward_main_header.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/reward_main_header_style.css" rel="stylesheet">
</head>
<body>
	<header>
		<div id="carouselExampleIndicators" class="carousel slide"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
			<c:forEach var="app" items="${approvedInvestment}" varStatus="status">
			<c:set var="mi" value="${InvestmentMainImage[status.index]}" />
				<div class="carousel-item <c:if test="${status.first }">active</c:if>">
					<img src="${pageContext.request.contextPath}/resources/upload/${mi}" width="100%" height="100%">
					<div class="carousel-caption1 d-none d-md-block">
					<a href="#" class="btn-cus2">더 알아보기></a><br/><br/>
						<p class="abv">${app.projectName }</p>
						<p class="abv">${app.companyName }</p>
					</div>
				</div>
			</c:forEach>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</header>
	
	<div class="container">
		<h2 class="my-4">추천 펀딩</h2>
		<div class="row">
			<c:forEach var="app" items="${approvedInvestment}" begin="0" end="2" step="1" varStatus="status">
			<c:set var="mi" value="${InvestmentMainImage[status.index]}" />
			<c:set var="ii" value="${investmentItem[status.index]}" />
			<div class="col-lg-4 mb-4">
				<div class="card h-100">
					<h5 class="card-header"><b>${app.projectName }</b></h5>
					<div class="card-body">
						<a href="#"><img src="${pageContext.request.contextPath}/resources/upload/${mi}" width="100%" height="70%" ></a>						
						<p><b>${ii }</b></p>
						<p>${app.companyName }</p>
					</div>
					<div class="card-footer">
						<a href="#" class="btn-cus2">더 알아보기!</a>
					</div>
				</div>
			</div>
			</c:forEach>
		</div>
		<div class="row">
			<c:forEach var="app" items="${approvedReward}" begin="0" end="2" step="1" varStatus="status">
			<c:set var="mi" value="${RewardMainImage[status.index]}" />
			<c:set var="ri" value="${rewardItem[status.index]}" />
			<div class="col-lg-4 mb-4">
				<div class="card h-100">
					<h5 class="card-header"><b>${app.projectName }</b></h5>
					<div class="card-body">
						<a href="#"><img src="${pageContext.request.contextPath}/resources/upload/${mi}" width="100%" height="70%" ></a>						
						<p><b>${ri }</b></p>
						<p>${app.companyName }</p>
					</div>
					<div class="card-footer">
						<a href="#" class="btn-cus2">더 알아보기!</a>
					</div>
				</div>
			</div>
			</c:forEach>
		</div>
		
		<%-- <h2>실시간 랭킹</h2>
		<div class="row">
			<div class="col-lg-4 col-sm-6 portfolio-item">
				<div class="card h-100">
					<a href="#"><img class="card-img-top"
						src="${pageContext.request.contextPath}/images/index/rank1.jpg" alt=""></a>
					<div class="card-body">
						<h4 class="card-title">
							<a href="#">1. 4500루멘</a>
						</h4>
						<p class="card-text">꿈꿔왔던 나만의 공간이 시네마가 된다.</p>
					</div>
				</div>
			</div>
			<div class="col-lg-4 col-sm-6 portfolio-item">
				<div class="card h-100">
					<a href="#"><img class="card-img-top"
						src="${pageContext.request.contextPath}/images/index/rank2.jpg" alt=""></a>
					<div class="card-body">
						<h4 class="card-title">
							<a href="#">2. 실리프</a>
						</h4>
						<p class="card-text">인생퍼프! 화장품 먹는 퍼프는 가라! 완벽밀착 실리콘 퍼프</p>
					</div>
				</div>
			</div>
			<div class="col-lg-4 col-sm-6 portfolio-item">
				<div class="card h-100">
					<a href="#"><img class="card-img-top"
						src="${pageContext.request.contextPath}/images/index/rank3.png" alt=""></a>
					<div class="card-body">
						<h4 class="card-title">
							<a href="#">3. 구스다운 혁신</a>
						</h4>
						<p class="card-text">언제까지 뚱뚱한 패딩만 입을텐가?</p>
					</div>
				</div>
			</div>
		</div> --%>
		
		<div class="row">
			<div class="col-lg-6">
				<h2>크라우드 펀딩이란?</h2>
				<p>자금을 필요로 하는 수요자가 온라인 플랫폼 등을 통해 불특정 다수 대중에게 자금을 모으는 방식으로
				종류에 따라 1.후원형 2.기부형 3.대출형 4.지분투자형(증권형) 등 네 가지 형태로 나뉜다.</p>
				<ul>
					<li>후원형</li>
					<ul>
						<li>예술분야나 사회공익활동 등에 자금을 지원하는 방식</li>
						<li>금전적인 보상 이외에 시제품이나 기념품 등을 받음</li>
					</ul>
					<li>기부형</li>
					<ul>
						<li>순수한 공익의 목적으로 자금을 지원하는 방식</li>
						<li>금전적인 이윤을 추구하지 않음</li>
					</ul>
					<li>대출형</li>
					<ul>
						<li>투자자들은 내용을 파악하고 본인의 판단에 의해 투자를 결정</li>
						<li>자금이 필요한 사유와 상환방식에 대하여 구체적으로 기술</li>
					</ul>
					<li>지분투자형(증권형)</li>
					<ul>
						<li>창업초기 기업이나 벤처기업, 프로젝트 등에 투자하는 방식</li>
						<li>금융기관을 거치지 않고 자금을 조달</li>
					</ul>
				</ul>
			</div>
			<div class="col-lg-6">
				<video width="100%" height="100%"
				src="${pageContext.request.contextPath}/images/index/video1.mp4" 
				poster="${pageContext.request.contextPath}/images/index/post.jpg" controls>
				</video>
			</div>
		</div>
		<!-- /.row -->

		<hr>

		<!-- Call to Action Section -->
		<div class="row mb-4">
			<div class="col-md-8">
				<h4>당신의 이야기를 소개하고 투자자와 서포터를 만나보세요</h4>
			</div>
			<div class="col-md-4">
				<a class="btn btn-lg btn-secondary btn-block" href="#">바로 펀딩하러 가기</a>
			</div>
		</div>

	</div>
	<%@include file="footer.jsp"%>
		<!-- Bootstrap core JavaScript -->
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="${pageContext.request.contextPath}/js/jquery.easing.min.js"></script>

	<!-- Contact Form JavaScript -->
	<script src="${pageContext.request.contextPath}/js/jqBootstrapValidation.js"></script>
	<script src="${pageContext.request.contextPath}/js/contact_me.js"></script>

	<!-- Custom scripts for this template -->
	<script src="${pageContext.request.contextPath}/js/freelancer.min.js"></script>

</body>

</html>