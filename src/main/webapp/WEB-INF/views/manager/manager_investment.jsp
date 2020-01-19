<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TREE FUNDING</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/manager_investment.css">
</head>
<body>
	<%@ include file="manager_header.jsp"%>
	<%@ include file="manager_body1.jsp"%>

	<h1>투자 프로젝트 관리</h1>
	<table>
		<%-- 	<caption>
		<form>
			<select name="language">
				<option value="all">프로젝트 전체</option>
				<option value="general">미승인</option>
				<option value="enterprise">승인</option>
			</select>
		</form>
	</caption> --%>
		<th>번호</th>
		<th>회원 ID</th>
		<th>대표자명</th>
		<th>프로젝트명</th>
		<th>승인 상태</th>
		<th>오픈날짜</th>
		<c:if test="${!empty investmentList}">
			<c:forEach var="list" items="${investmentList}">
				<tr style="cursor: pointer;"
					onClick="location.href='${pageContext.request.contextPath}/manager/investmentInfo?investmentTotalProjectNo=${list.investmentTotalProjectNo}'">
					<td>${list.investmentTotalProjectNo}</td>
					<td>${list.id}</td>
					<td>${list.name}</td>
					<td>${list.projectName}</td>
					<td>
						<c:if test="${list.approved eq 0}">미승인</c:if>
						<c:if test="${list.approved eq 1}">승인</c:if>
						<c:if test="${list.approved eq 2}">오픈 예정</c:if>
						<c:if test="${list.approved eq 3}">기간 만료</c:if>
						<c:if test="${list.approved eq 4}">정지된 프로젝트</c:if>
					</td>
					<td>${list.testDatepicker1}</td>
				</tr>
			</c:forEach>
		</c:if>
	</table>
	<!-- 페이징 -->
	<div class="page">
		<c:if test="${page<=1}"> [이전]&nbsp;
 </c:if>
		<c:if test="${page>1}">
			<a href="list?page=${page-1}">[이전]</a>&nbsp;
 </c:if>

		<%--현재 쪽번호 --%>
		<c:forEach var="a" begin="${startPage}" end="${endPage}" step="1">
			<c:if test="${a==page}">
				<%--현재 쪽번호가 선택된경우--%>
<${a}>
</c:if>
			<c:if test="${a != page}">
				<%--현재 쪽번호가 선택안된
경우 --%>
				<a href="list?page=${a}">[${a}]</a>&nbsp;
</c:if>
		</c:forEach>

		<c:if test="${page >= maxPage}">
 [다음]
 </c:if>
		<c:if test="${page<maxPage}">
			<a href="list?page=${page+1}">[다음]</a>
		</c:if>
	</div>
</body>
</html>