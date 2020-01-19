<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TREE FUNDING</title>
<link href="${pageContext.request.contextPath}/css/funding_payment_cont.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/investment_payment.js"></script>

</head>
<body>
	<%@ include file="studio_main_header.jsp"%>
	<%@ include file="studio_main_category.jsp"%>
	
	<div class="paymentBody">
		<table border="1" class="paymentCont">
			<tr>

				<th>번호</th>
				<th>회원ID</th>
				<th>회원명</th>
				<th>구매한상품명</th>
				<th>구매수량</th>
				<th>총결제금액</th>
				<th>환불내역</th>
				<th>발송상태</th>
			</tr>
			<tr>

				<td>1</td>
				<td>speed</td>
				<td>금민우</td>
				<td>키가 쑥쑥</td>
				<td>2EA</td>
				<td>190,000원</td>
				<td>x</td>
				<td>발송대기</td>
				<td><input type="button" value="발송처리"  onclick="button_event();" id="shippingProcess"></td>
			</tr>
			
		</table>
	</div>
</body>
</html>