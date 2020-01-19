<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TREE FUNDING</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/manager_report_yet.css">
</head>
<body>
<%@ include file="manager_header.jsp" %>
<%@ include file="manager_body1.jsp" %>

<h1>신고처리 전</h1>
	<table>
		<caption>
			<form>
				<select name="boardType">
					<option value="boardAll">전체게시판</option>
					<option value="board">자유게시판</option>
					<option value="boardYet">아직안정함</option>
				</select>
			</form>
		</caption>
		<th>번호</th> <th>게시판 종류</th> <th>제목</th> <th>아이디</th> <th>작성일</th>
		<th>신고횟수</th> <th>처리상태</th>
		<tr style = "cursor:pointer;" 
	onClick = "location.href='${pageContext.request.contextPath}/managerReportYetInfo'">
			<td>번호</td>
			<td>자유게시판</td>
			<td>광고입니다.</td>
			<td>AAA</td>
			<td>2019/12/12</td>
			<td>30회</td>
			<td>미처리</td>
		</tr>
	</table>
	<div class="page">
		<button>&lt;&lt;</button>
		<button>&lt;</button>
		<button>1</button>
		<button>&gt;</button>
		<button>&gt;&gt;</button>
	</div>
	<div class="find">
		<input type="text" />
		<button>찾기</button>
	</div>
</body>
</html>