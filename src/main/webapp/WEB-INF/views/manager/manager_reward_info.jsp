<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TREE FUNDING</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/manager_reward_info.css">
<script
	src="${pageContext.request.contextPath}/js/manager_reward_info.js"></script>
</head>
<body>
	<%@ include file="manager_header.jsp"%>
	<%@ include file="manager_body1.jsp"%>

	<h1>프로젝트 상세 정보</h1>
	<table>
		<caption>
			<h3>|프로젝트 정보</h3>
		</caption>
		<tr>
			<th>회원 ID</th>
			<td>${rewardVO.id}</td>
		</tr>
		<tr>
			<th>대표자명</th>
			<td>${rewardVO.name}</td>
		</tr>
		<tr>
			<th>사업자번호</th>
			<td>${rewardVO.businessNumber}</td>
		</tr>
		<tr>
			<th>프로젝트명</th>
			<td>${rewardVO.projectName}</td>
		</tr>
		<tr>
			<th>기업 전화번호</th>
			<td>${rewardVO.phone1}-${rewardVO.phone2}-${rewardVO.phone3}</td>
		</tr>
		<tr>
			<th>기업 주소</th>
			<td>${rewardVO.address1}${rewardVO.address2}</td>
		</tr>
		<!-- <tr>
		<th>은행명</th>
		<td>농협</td>
	</tr>
	<tr>
		<th>예금주명</th>
		<td>김기준</td>
	</tr>
	<tr>
		<th>입금 계좌번호</th>
		<td>1231561615</td>
	</tr>
		<tr>
			<th>프로젝트 상태</th>
			<td>운영중</td>
		</tr> -->
		<tr>
			<th>프로젝트 승인 상태</th>
			<td><c:if test="${rewardVO.approved eq 0}">미승인</c:if> <c:if
					test="${rewardVO.approved eq 1}">승인</c:if> <c:if
					test="${rewardVO.approved eq 2}">오픈 예정</c:if> <c:if
					test="${rewardVO.approved eq 3}">기간 만료</c:if> <c:if
					test="${rewardVO.approved eq 4}">정지된 프로젝트</c:if></td>
		</tr>
		<tr>
			<th>목표 금액</th>
			<td>${rewardVO.pay}원</td>
		</tr>
		<!-- 	<tr>
		<th>목표 금액 달성 상태</th>
		<td><span class="g_bar">150%<span>45,000,000원</span></span></td>
	</tr> -->
		<tr>
			<th>프로젝트 시작일</th>
			<td>${rewardVO.testDatepicker1}</td>
		</tr>
		<tr>
			<th>프로젝트 마감일</th>
			<td>${rewardVO.testDatepicker2}</td>
		</tr>
	</table>

	<div class="m-1">
		<h3>|프로젝트 메인 이미지</h3>
	</div>
	<image
		src="${pageContext.request.contextPath}/resources/upload/${mainImage}"
		width="300px" height="300px"
		onclick="window.open('${pageContext.request.contextPath}/resources/upload/${mainImage}','poster1','width=1000,height=1000');">
	<table>
		<caption>
			<h3>|프로젝트 상품 목록</h3>
		</caption>
		<tr>
			<th>1</th>
			<td>${rewardItemVO.productName}${rewardItemVO.price}<br /> 리워드
				제공 예상일: ${rewardItemVO.sdate}
			</td>
		</tr>

	</table>
	<div class="m-1">
		<form action="${pageContext.request.contextPath}/manager/rewardOk"
			method="post" onsubmit="return updateApprovedConfirm();">
			<input type="hidden" name="rewardTotalProjectNo"
				value="${rewardVO.rewardTotalProjectNo}"> <input
				type="submit" id="rewardButton" value="승인"><input
				type="button" id="rewardButton" value="취소" onclick="goBack()">
		</form>
	</div>
</body>
</html>