<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TREE FUNDING</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/investment_item1_news.css" />
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<%@include file="../header.jsp"%>
	<%@include file="investment_header.jsp"%>
	<div id="item1_body">
		<div class="item1_body_left">
		<div>새소식페이지입니다.</div>
		</div>
		<div class="item1_body_right">
			
			<div class="investment_item_rightmenu1">
            <%--오른쪽 사이드 메뉴 첫번째입니다. --%>
            <p class="dayLeft">12일 남음</p>
            <hr />
            <%--몇일남았는지 알려줍니다 --%>
            <p class="attainment">2209% 달성</p>
            <%--펀딩이 몇%달성했는지 알려줍니다. 리워드는 100%초과가능,투자는 100%달성하면 종료 --%>
            <p class="attainment">2209% 달성</p>
            <p class="attainment">2209% 달성</p>
            <button type="button"
               onclick="location.href='${pageContext.request.contextPath}/investment/investmentFunding'"
               class="fundingBtn">펀딩하기</button>
            <%--펀딩하기를 누르면 펀딩양식페이지로 이동합니다. --%>
         </div><!-- rightmenu1 -->
         
<p class="investChoice">▼투자 목록▼</p>         <%-- 투자 선택 안내 문구 --%>
   <div class="investment_item_rightmenu2">   <%-- 펀딩 안내 큰틀--%>
      <table border="0" class="investList">   <%-- 펀딩 안내 테이블 --%>
         <tr><%--펀딩가격 --%>
            <td><p class="fundingMoney">34,500원펀딩</td>
         </tr>
         <tr><%--기업명과 상품명을 안내 --%>
            <td><p class="enterpriseName">[기업명]</p>
               <p class="goodsName">[상품명]</p></td>
         </tr>
         <tr><%--정가,상품가격,세일 --%>
            <td><p class="fullPrice">정가:</p>
               <p class="goodsMoney">86,000</p>
               <p class="sale">(SALE60%)</p></td>
         </tr>
         <tr><%--발송시작일 안내 --%>
            <td><p class="investStart">투자상품 발송 시작일</p>
               <p class="investStartDay">2020년 1월 30일 예정</p>
            </td>
         </tr>
         <tr><%--총수량,재고,판매량 --%>
            <td><p class="totalQuantity">총수량 100개</p>
               <p class="currentAmount">현재량 50개</p>
               <p class="salesRate">판매량 50개</p>
         </tr>
      </table>
   </div><!-- rightmenu2 -->
		</div>
		
	</div>
</body>
</html>