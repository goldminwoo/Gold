<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/studio_main.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/studio_funding_status_cont.css" />
<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/wel.jpg">
<script src="${pageContext.request.contextPath}/js/jqbar.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/like.js"></script>
<head>

<meta charset="UTF-8">
<title>TREE FUNDING</title>
</head>
<body>
	<%@ include file="studio_main_header.jsp"%>
	<%@ include file="studio_main_category.jsp"%>
 <div class="investment">
	<p class="invest">무슨현황입니까</p>
	<div class="one-graph"></div>
</div>
<div class="investment">
	<p class="reward">무슨현황입니까</p>
	<div class="two-graph"></div>
</div>
<div class="zt-span6">
<h3><strong>목표달성 바</strong></h3>
<div class="zt-skill-bar"><div data-width="50" >쇼핑몰<span>50%</span></div></div>
<div class="zt-skill-bar"><div data-width="80" >웹사이트/모바일<span>80%</span></div></div>
<div class="zt-skill-bar"><div data-width="70" >패키지<span>70%</span></div></div>
<div class="zt-skill-bar"><div data-width="10" >C.I/B.I/네이밍<span>10%</span></div></div>
<div class="zt-skill-bar"><div data-width="60" >HTML5/CSS3<span>60%</span></div></div></div>

<script src="https://d3js.org/d3.v4.min.js"></script>
<script src="${pageContext.request.contextPath}/js/status.js"></script>
<script src="${pageContext.request.contextPath}/js/status2.js"></script>

</body>
</html>