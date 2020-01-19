<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@include file="../header.jsp"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>TREE FUNDING</title>
<link href="${pageContext.request.contextPath}/css/all.min.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/board_list.css"
	rel="stylesheet" type="text/css" />
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script>
	$(function() {
		var responseMessage = "<c:out value="${message}" />";
		if (responseMessage != "") {
			alert(responseMessage)
		}
	})
</script>
</head>
<body>
	<div id="board_area">
		<form method="get"
			action="${pageContext.request.contextPath}/board/list">
			<table class="list-table">
				<tr>
					<!-- <td align="center" colspan="2"><ul>
							<li>total=[?]&nbsp;&nbsp;</li>
							<li>[1/8]&nbsp;page</li>
						</ul></td> -->

					<td colspan="4"><select name="searchCondition">
							<option value="#">검색내용 선택</option>
							<option value="id"
								<c:if test="${searchCondition == 'id'}">
						${'selected'}</c:if>>글쓴이</option>
							<option value="title"
								<c:if test = "${searchCondition == 'title'}">
						${'selected'}</c:if>>글제목</option>
							<option value="editor"
								<c:if test = "${searchCondition == 'editor'}">
						${'selectd'}</c:if>>글내용</option>
					</select> <input type="text" name="searchKeyword" placeholder="검색어 입력"
						value="${searchKeyword}"> <input type="submit" value="검색" /></td>
				</tr>
				<tr>
					<th align="center" width="70">번호</th>
					<th align="center" width="500">제목</th>
					<th align="center" width="110">글쓴이</th>
					<th align="center" width="100">작성일</th>
					<th align="center" width="100">조회수</th>

				</tr>
				<c:if test="${!empty boardList}">
					<c:forEach var="list" items="${boardList}">
						<tr>
							<td width="70">${list.no}</td>
							<td width="500"><a
								href="detail?no=${list.no}&page=${page}&state=content">
									${list.title}</a></td>
							<td width="110">${list.id}</td>
							<td width="100">${list.writeDate}</td>
							<td width="100">${list.hitCount}</td>
						</tr>
					</c:forEach>
				</c:if>
			</table>
			<div id="page_control">
				<c:if test="${(empty searchConditon) && (empty searchKeyword)}">
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
				</c:if>

				<%--검색후 페이징 --%>
				<c:if test="${(!empty searchCondition) || 
(!empty searchKeyword)}">
					<c:if test="${page<=1}">
 [이전]&nbsp;
 </c:if>
					<c:if test="${page>1}">
						<a
							href="list?page=${page-1}&find_field=${searchCondition}&find_name=${searchKeyword}">[이전]</a>&nbsp;
 </c:if>

					<%--현재 쪽번호 --%>
					<c:forEach var="a" begin="${startPage}" end="${endPage}" step="1">
						<c:if test="${a==page}">
							<%--현재 쪽번호가 선택된경우--%>
<${a}>
</c:if>
						<c:if test="${a != page}">
							<%--현재 쪽번호가 선택안된 경우 --%>
							<a
								href="list?page=${a}&find_field=${searchCondition}&find_name=${searchKeyword}">[${a}]</a>&nbsp;
</c:if>
					</c:forEach>

					<c:if test="${page >= maxPage}">
 [다음]
 </c:if>
					<c:if test="${page<maxPage}">
						<a
							href="list?page=${page+1}&find_field=${searchCondition}&find_name=${searchKeyword}">[다음]</a>
					</c:if>
				</c:if>
				<%--검색후 페이징 --%>
				<a href="${pageContext.request.contextPath}/board/write">글작성</a>
				<pre>                                                                          
                                                                                                                                                                                     
</pre>
			</div>
		</form>
	</div>

	<%@include file="../footer.jsp"%>
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
</body>
</html>