<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TREE FUNDING</title>
</head>
<body>
<div class="userBlockContainer">
	<form action="#" method="post">
		<strong>아이디:</strong> AAA <br /> 
		<strong>신고횟수:</strong> 30회 <br /> 
		<strong>누적정지기간:</strong> 0일 <br /> 
		<strong>정지기간: 
				<select name="userBlockPeriod">
					<option value="#">선택하세요</option>
					<option value="15days">15일</option>
					<option value="30days">30일</option>
					<option value="blockForever">영구정지</option>
					<option value="blockOff">정지해제</option>
				</select> <br/>
				
		<strong>정지사유:</strong> <br/>
				<textarea name="blockReason"rows="3" cols="30"></textarea>
				<br/>
		<input type="button" class="btn" value="확인">
		<input type="button" class="btn" value="취소">					
	</form>
</div>
</body>
</html>