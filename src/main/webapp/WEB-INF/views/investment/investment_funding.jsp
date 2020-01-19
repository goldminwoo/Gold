<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TREE FUNDING</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/investment_item1_funding.css" />
<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/js/investment_funding.js"></script>
<script
	src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">

	window.history.forward();

	function noBack() {

		window.history.forward();

	}
</script>
</head>
<body>
	<%@include file="../header.jsp"%>
	<div class="funding">
		<div class="fundingMaindoor">
			<div class="investPick">투자 목록</div>
			<div class="mid">---------</div>
			<div class="billingReservation">결제 예약</div>
		</div>
		<div class="fundingBody">
			<div class="fundingGuide">
				<p class="fundingGuideLeft">투자 목록</p>
				<p class="fundingGuideRight">&nbsp;&nbsp;&nbsp;&nbsp;펀딩해주시는 금액에
					따라 감사의 의미로 투자상품을 제공해 드립니다.</p>
			</div>
			<form name="MemberInvestmentFunding" method="post" action="${pageContext.request.contextPath}/investment/investmentBillingReservation">
			<input type="hidden" name="no" value="${no }" />
			<input type="hidden" name="benefits" value="${investmentItemVO.benefits }" />
			<div class="investBox">
				<div class="investCheckBox">
					<input type="checkbox" name="chk_info" value="investCheckBox"
						class="checkbox">
				</div>
				<table border="0" class="investBoxTable">
					<tr>
						<td colspan="4" class="fundingMoney">
						<input type="number" readonly style="text-align:right" id="fundingPrice" name="fundingPrice"
						value="${investmentItemVO.price }">원 펀딩합니다
						<input type="hidden" id="fundingPrice2" value="${investmentItemVO.price}">
						</td>
					</tr>
					<tr>
						<td colspan="2" class="goodsName">
						<input type="text" readonly style="text-align:right" name="productName"
						value="${investmentItemVO.productName}" >
						</td>
						<td colspan="2" class="stock">(${investmentItemVO.ea-investmentItemVO.soldEa }개남음)</td>
					</tr>
					<tr>
						<td colspan="4" class="component">혜택</td>
					</tr>
					<tr>
						<td colspan="4" class="components">${investmentItemVO.benefits }</td>
					</tr>
					<tr>
						<td colspan="4" class="fundingOption"><input type="button"
							value="+" class="bt_up">
							&nbsp;&nbsp;수량&nbsp;&nbsp;<input type="text" name="ea"
							value="1" class="num">&nbsp;&nbsp; 
							<input type="button" value="-" class="bt_down"> &nbsp;&nbsp;
							옵션:<input type="text" name="options" placeholder="옵션을 적어주세요"></td> 
					</tr>
					<tr>
					<tr>
						<td class="investSpend">초기구매주</td>
						<td class="investSpend">${investmentItemVO.one }</td>
					</tr>
				</table>
			</div>
			<%--리워드 1번째 목록 끝 --%>

<%-- 		<div class="donation">
				<div class="donationLeft">
					<h3 class="donationFont">
						후원금&nbsp;더하기<span>(선택)</span>
					</h3>
				</div>
				<div class="donationRight">
					<p class="donationCont">후원금을 더하여 펀딩할 수 있습니다. 추가 후원금을 입력하시겠습니까?</p>
					<div class="inlineBlockInput">
						<input type="number" id="addDonationTmp" name="addDonationTmp"
							class="donationText" maxlength="8" placeholder="0"></input>
						<p class="plusDonation">원을 추가로 후원합니다.
					</div>
				</div>
			</div>
			후원하기 끝 --%>

			<div class="nextButton">
				<input type="submit" class="nextBtn" value="다음 단계로 >">
			</div>
			</form>
		</div>
	</div>
	<%@include file="../footer.jsp"%>
</body>
</html>