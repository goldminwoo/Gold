<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TREE FUNDING</title>
<link href="${pageContext.request.contextPath}/css/account.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/js/jquery.js" rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath}/js/account.js"></script>
</head>
<body>
<div class="table2">
<h2 class="pr">크레딧 관리</h2>
	<form method="post" action="${pageContext.request.contextPath}/mypage/creditWithdraw" onsubmit="return inCheck();">
		<table class="cen1">
			<caption>출금</caption>
			<tr>
				<th>은행명</th>
				<td><select id="bankIn" class="t-2" >
						<option selected>::선택::</option>
						<option>국민은행</option>
						<option>신한은행</option>
						<option>농협</option>
						<option>기업은행</option>
						<option>외환은행</option>
						<option>수협</option>
						<option>우리은행</option>
						<option>제일은행</option>
						<option>씨티은행</option>
						<option>신협</option>
						<option>새마을금고</option>
						<option>우체국</option>
						<option>카카오뱅크</option>
						<option>하나은행</option>
				</select></td>
			</tr>
			<tr>
				<th>예금주명</th>
				<td><input type="text" id="nameIn" class="t-2" /></td>
			</tr>
			<tr>
				<th>계좌번호</th>
				<td><input type="text" id="bankNoIn" class="t-2" /></td>
			</tr>
			<tr>
				<th>입금액</th>
				<td><input type="text" id="priceIn" name="priceIn" class="t-2" /></td>
			</tr>
		</table>
		
		<input type="submit" value="계좌로 입금" class="t-1" />
		<input type="reset" value="취소" class="t-1" onclick="window.close();"/>
	</form>
	
	<form action="${pageContext.request.contextPath}/mypage/creditCharge" onsubmit="return creditChargeCheck();">
		<table class="cen1">
			<caption>충전</caption>
			<tr>
				<th>은행명</th>
				<td><select class="t-2" id="bankOut">
						<option selected>::선택::</option>
						<option>국민은행</option>
						<option>신한은행</option>
						<option>농협</option>
						<option>기업은행</option>
						<option>외환은행</option>
						<option>수협</option>
						<option>우리은행</option>
						<option>제일은행</option>
						<option>씨티은행</option>
						<option>신협</option>
						<option>새마을금고</option>
						<option>우체국</option>
						<option>카카오뱅크</option>
						<option>하나은행</option>
				</select></td>
			</tr>
			<tr>
				<th>예금주명</th>
				<td><input type="text" id="nameOut" class="t-2" /></td>
			</tr>
			<tr>
				<th>계좌번호</th>
				<td><input type="text" id="bankNoOut" class="t-2" /></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" id="pwdOut" class="t-2" /></td>
			</tr>
			<tr>
				<th>충전금액</th>
				<td><input type="text" id="priceOut" name="priceOut" class="t-2" /></td>
			</tr>
		</table>
		<h4 class="pr">크레딧:${credit }</h4>
		
		<input type="submit" value="크레딧 충전" class="t-1"/>
		<input type="reset" value="취소" class="t-1" onclick="window.close();"/>
	</form>
	</div>
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
	
</body>
</html>