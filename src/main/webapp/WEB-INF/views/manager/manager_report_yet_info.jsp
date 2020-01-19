<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TREE FUNDING</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/manager_report_yet_info.css">
</head>
<body>
<%@ include file="manager_header.jsp" %>
<%@ include file="manager_body1.jsp" %>

<h1>신고 상세 내용</h1>
<table class="mainTable">
	<tr>
		<th class="mainTh">게시판 종류</th>
		<td class="mainTd">자유게시판</td>
	</tr>
	<tr>
		<th class="mainTh">아이디</th>
		<td class="mainTd">AAA</td>
	</tr>
	<tr>
		<th class="mainTh">총 신고횟수</th>
		<td class="mainTd">30회</td>
	</tr>
	<tr>
		<th class="mainTh">홍보물</th>
		<td class="mainTd">10회</td>
	</tr>
	<tr>
		<th class="mainTh">음란물</th>
		<td class="mainTd">10회</td>
	</tr>
	<tr>
		<th class="mainTh">욕설</th>
		<td class="mainTd">10회</td>
	</tr>
	<tr>
		<th class="mainTh">제목</th>
		<td class="mainTd">홍보물입니다.</td>
	</tr>
	<tr>
		<th class="mainTh">내용</th>
		<td class="mainTd">홍보내용홍보내용홍보내용홍보내용홍보내용홍보내용홍보내용홍보내용
		홍보내용홍보내용홍보내용홍보내용홍보내용홍보내용홍보내용홍보내용홍보내용
		홍보내용홍보내용홍보내용홍보내용홍보내용홍보내용홍보내용홍보내용홍보내용
		홍보내용홍보내용홍보내용홍보내용홍보내용홍보내용홍보내용홍보내용홍보내용
		</td>
	</tr>
	
</table>

<br/>
<br/>

<div class="blockContainer">
	<form action="#" method="post">
		<strong>누적정지기간:</strong> 0일 <br /> 
			<strong>게시물관리: 
				<select name="boardBlockPeriod">
					<option value="#">선택하세요</option>
					<option value="blindOn">블라인드처리</option>
					<option value="blindOff">블라인드해제</option>
				</select> <br/>
		<strong>아이디관리: 
				<select name="userBlockPeriod">
					<option value="#">선택하세요</option>
					<option value="15days">15일</option>
					<option value="30days">30일</option>
					<option value="blockForever">영구정지</option>
					<option value="blockOff">정지해제</option>
				</select> <br/>
				
		<strong>정지사유:</strong> <br/>
				<textarea name="blockReason"rows="3" cols="50"></textarea>
				<br/>
		<input type="button" class="btn" value="확인">
		<input type="button" class="btn" value="취소">					
	</form>
</div>
<br/>
<br/>
<br/>
<div class="blockContainer">
	<form action="#" method="post">
		<table border="1">
			<tr>
				<th>누적정지기간:</th>
				<td>0일</td>
			</tr>
			<tr>
				<th>게시물관리:</th>
				<td>
				<select name="boardBlockPeriod">
					<option value="#">선택하세요</option>
					<option value="blindOn">블라인드처리</option>
					<option value="blindOff">블라인드해제</option>
				</select>
				</td>
			</tr>
			<tr>
				<th>아이디관리:</th>
				<td>
				<select name="userBlockPeriod">
					<option value="#">선택하세요</option>
					<option value="15days">15일</option>
					<option value="30days">30일</option>
					<option value="blockForever">영구정지</option>
					<option value="blockOff">정지해제</option>
				</select>
				</td>
			</tr>
			<tr>
				<th>정지사유:</th>
				<td>
					<textarea name="blockReason"rows="3" cols="50"></textarea>
				</td>
			</tr>
			<tr>
				<th>누적정지기간:</th>
				<td>0일</td>
			</tr>
			
		</table>
		<input type="button" class="btn" value="확인">
		<input type="button" class="btn" value="취소">					
	</form>
</div>
</body>
</html>