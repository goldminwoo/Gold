<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>TREE FUNDING</title>

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

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

  </body>