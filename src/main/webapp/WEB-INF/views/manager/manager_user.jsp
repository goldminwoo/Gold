<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TREE FUNDING</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/manager_user.css">
<script language="javascript">
	function showPopup() {
		window.open("userBlockPopup", "a",
				"width=400, height=300, left=800, top=300");
	}
</script>
</head>
<body>
	<%@ include file="manager_header.jsp"%>
	<%@ include file="manager_body1.jsp"%>

	<h1>회원 관리</h1>
	<table>
		<%-- <caption>
			<form>
				<select name="userSelect">
					<option value="all">회원 전체</option>
					<option value="general">개인 회원</option>
					<option value="enterprise">기업 회원</option>
				</select>
			</form>
		</caption> --%>
		<th>번호</th>
		<th>회원 ID</th>
		<th>회원명</th>
		<th>핸드폰 번호</th>
		<th>회원 구분</th>
		<th>회원 가입일</th>
		<th>마지막 로그인</th>
		<th>회원 상태</th>
		<!-- <th>상태 변경</th> -->
		<c:forEach var="list" items="${memberList}">
			<tr>
				<td>${list.no}</td>
				<td>${list.id}</td>
				<td>${list.name}</td>
				<td>${list.phone1}-${list.phone2}-${list.phone3}</td>
				<td>${list.businessType}</td>
				<td>${list.joinDate}</td>
				<td>${list.loginDate}</td>
				<td>${list.activeStatus}</td>
				<!-- <td> <input type="button" value="회원상태변경" onclick="showPopup();" /></td> -->
			</tr>
		</c:forEach>
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
	<!-- <div class="find">
		<input type="text" />
		<button>찾기</button>
	</div> -->
</body>
</html>