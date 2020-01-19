<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TREE FUNDING</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/investment_item1_header.css"/>
</head>
<body>

<div id="fund_main">
<div class="fund_maindoor">
<%-- <p class="fund_maindoor_menu">${investmentVO.cate }</p> --%>
<p class="fund_maindoor_title">${investmentVO.companyName }</p>
</div>
<div class="fund_menu">
	<ul class="fund_sub">
		<%-- <li><a href="${pageContext.request.contextPath}/investment/investmentStory">스토리</a></li>
		<li><a href="${pageContext.request.contextPath}/investment/investmentNews">새&nbsp;소식</a></li>
		<li><a href="${pageContext.request.contextPath}/investment/investmentCommunity">커뮤니티</a></li> --%>
	</ul>
	</div>
</div>
</body>
</html>