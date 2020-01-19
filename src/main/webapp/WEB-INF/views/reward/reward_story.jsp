<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TREE FUNDING</title>
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/css/investment_item1_story.css" />
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script
   src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
</head>
<body>
   <%@include file="../header.jsp"%>
   <%@include file="reward_header.jsp"%>
   <div id="item1_body">
      <div class="item1_body_left">
         <div class="investment_item1_story_explanation">
		${rewardStoryVO.storyCont }
	</div>
      </div>
      <div class="item1_body_right">

         <div class="investment_item_rightmenu1">
         <form name="rewardVO" method="post" action="${pageContext.request.contextPath}/reward/rewardFunding">
            <%--오른쪽 사이드 메뉴 첫번째입니다. --%>
            <fmt:parseDate value="${rewardVO.testDatepicker1 }" var="strPlanDate" pattern="yyyy-MM-dd"/>
			<fmt:parseNumber value="${strPlanDate.time / (1000*60*60*24)}" integerOnly="true" var="strDate">
			</fmt:parseNumber>
			<fmt:parseDate value="${rewardVO.testDatepicker2 }" var="endPlanDate" pattern="yyyy-MM-dd"/>
			<fmt:parseNumber value="${endPlanDate.time / (1000*60*60*24)}" integerOnly="true" var="endDate">
			</fmt:parseNumber>
            <p class="dayLeft">${endDate - strDate }일 남음</p>
            <hr />
            <%--몇일남았는지 알려줍니다 --%>
            <p class="attainment"><fmt:formatNumber value="${rewardVO.pay/(rewardItemVO.soldEa*rewardItemVO.price) }" type="percent" pattern="#,###.##%"/> 달성</p>
            <%--펀딩이 몇%달성했는지 알려줍니다. 리워드는 100%초과가능,리워드는 100%달성하면 종료 --%>
            <p class="attainment">${totalFundingPrice }원 펀딩</p>
            <input type="hidden" name="rewardTotalProjectNo" value="${rewardVO.rewardTotalProjectNo }"/>
            <button type="submit" class="fundingBtn">펀딩하기</button>
              </form>
            <%--펀딩하기를 누르면 펀딩양식페이지로 이동합니다. --%>
         </div><!-- rightmenu1 -->
         
<p class="investChoice">▼리워드 목록▼</p>         <%-- 리워드 선택 안내 문구 --%>
   <div class="investment_item_rightmenu2">   <%-- 펀딩 안내 큰틀--%>
      <table border="0" class="investList">   <%-- 펀딩 안내 테이블 --%>
         <tr><%--펀딩가격 --%>
         	<td><p class="fundingMoney"><fmt:parseNumber integerOnly="true" value="${rewardItemVO.price }" /> 원펀딩</p></td>
         </tr>
         <tr><%--기업명과 상품명을 안내 --%>
            <td><p class="enterpriseName">${rewardVO.companyName }</p>
               <p class="goodsName">${rewardItemVO.productName }</p></td>
         </tr>
         <tr><%--정가,상품가격,세일 --%>
            <td><p class="fullPrice">리워드 정가:</p>
               <p class="goodsMoney">${rewardItemVO.price*2 }원</p><br/>
               <p class="sale">(SALE${rewardItemVO.sale }%)</p>
            </td>
         </tr>
         <tr><%--발송시작일 안내 --%>
            <td><p class="investStart">리워드 발송 시작일</p>
               <p class="investStartDay">${rewardItemVO.sdate }</p>
            </td>
         </tr>
         <tr><%--총수량,재고,판매량 --%>
            <td><p class="totalQuantity">총수량 ${rewardItemVO.ea }개</p>
               <p class="currentAmount">현재량 ${rewardItemVO.ea-rewardItemVO.soldEa }개</p>
               <p class="salesRate">판매량 ${rewardItemVO.soldEa }개</p>
            
         </tr>
      </table>
   </div>
   </div>
   </div>
</body>
</html>