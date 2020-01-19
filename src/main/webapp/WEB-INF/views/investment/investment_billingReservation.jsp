<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TREE FUNDING</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/investment_item1_billingReservation.css" />
<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<script src="${pageContext.request.contextPath}/js/investment_payment.js"></script>

</head>
<body>
	<%@include file="../header.jsp"%>
	<form name="investmentFunding" method="post" action="${pageContext.request.contextPath}/investment/investmentBillingReservationOk" >
	<input type="hidden" name="productName" value="${productName }" />
	<input type="hidden" name="ea" value="${ea }" />
	<input type="hidden" name="options" value="${options }" />
	<input type="hidden" name="no" value="${no }" />
	<input type="hidden" name="fundingPrice" value="${fundingPrice }" />
	<%-- <input type="hidden" name="donation" value="${donation }" /> --%>
	<div class="billingReservation">
		<div class="billingReservationMaindoor">
			<div class="investPick">투자 목록</div>
			<div class="mid">---------</div>
			<div class="billingReservations">결제 예약</div>
		</div>
		<div class="billingReservationBody">
			<div class="orderList">
				<p class="ordergoods">${productName }</p>
				<p class="orderConfiguration">${benefits }</p>
				<p class="sum">
					<em class="orderEm">수량 ${ea }개</em>${fundingPrice }원
				</p>
			</div>
			<table border="0" class="orderTable">
<!-- 			<tr>
					<td class="tdL">추가 후원금</td>
					<td class="tdR">0원</td>
				</tr> -->
			</table>
			<table border="0" class="finalOrderTable">
				<tr>
					<td class="tdL">펀딩금액</td>
					<td class="tdR">${fundingPrice }원</td>
				</tr>
				<!-- <tr>
					<td class="tdL">추가후원금</td>
					<td class="tdR">0원</td>
				</tr> -->
				<tr>
					<td class="FtdL">최종결제 금액</td>
					<td class="FtdR">${fundingPrice }원</td>
				</tr>
			</table>
			<!-- <div class="investDelivery">
				<table border="0" class="deliveryTable">
					<caption>투자상품 배송지</caption>
					<tr>
						<td>이름</td>
					</tr>
					<tr>
						<td><input type="text" placeholder="이름입력하세요" class="name"></td>
					</tr>
					<tr>
						<td>휴대폰 번호</td>
					</tr>
					<tr>
						<td><input type="text" placeholder="휴대폰 번호입력하세요"
							class="phone"></td>
					</tr>
					<tr>
						<td>주소</td>
					</tr>
					<tr>
						<td><input type="button" value="우편번호 검색"
							class="searchAddress" onclick="openZipSearch()"></td>
					</tr>
					<tr>
						<td><input type="text" name="addr1" class="addressShow"></td>
					</tr>
					<tr>
						<td><input type="text" placeholder="상세정보를 입력하세요"
							class="plusAddress"></td>
					</tr>
				</table>
			</div> -->
			<div class="paymentBtn">
			<input type="submit" value="결제 하기"	class="payment" >
			<input type="reset" value="취소" class="payment" onclick="location='main';">
			</div>
		</div>
	</div>
</form>
</body>
</html>