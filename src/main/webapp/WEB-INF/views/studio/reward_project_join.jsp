<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TREE FUNDING</title>
<link href="${pageContext.request.contextPath}/css/project_join.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/js/jquery.js" rel="stylesheet" type="text/css">
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="${pageContext.request.contextPath}/js/reward_project_join.js" type="text/javascript" ></script>
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<%@include file="studio_main_header.jsp"%>
<%@include file="studio_main_category.jsp"%>
	<div id="open_wrap">
		<h2 class="pr">리워드 프로젝트 등록</h2>
		<form name="rewardVO" method="post" action="${pageContext.request.contextPath}/studio/reward_project_join_ok"
			onsubmit="return join_check();">
			<table class="investment_list">
				<colgroup>
					<col style="width: 200px">
				</colgroup>
				<tbody>
					<tr class="t100">
						<th>프로젝트명</th>
						<td><input type="text" id="projectName" name="projectName"></td>
					</tr>
					<tr class="t100">
						<th>대표자 이름</th>
						<td><input type="text" id="name" name="name"
						value="${memberVO.getOnerName() }" readonly></td>
					</tr>
					<tr class="t30">
						<th>대표자 전화번호</th>
						<td><select class="n_b" id="phone1" name="phone1">
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="017">017</option>
								<option value="018">018</option>
								<option value="019">019</option>
						</select>&nbsp;-&nbsp;<input type="text" id="phone2" name="phone2">&nbsp;-&nbsp;
						<input type="text" id="phone3" name="phone3"></td>
					</tr>
					<tr class="t100">
						<th>목표금액</th>
						<td><input type="number" id="pay"name="pay">
						<b>※목표금액은 최소50만원부터 최대 1억까지 가능합니다.</b>
						</td>
					</tr>
					<tr class="t100">
						<th>사업자번호</th>
						<td><input type="text" id="businessNumber" name="businessNumber" 
						value="${memberVO.getBusinessLicense() }" readonly></td>
					</tr>
					<tr class="t100">
						<c:if test="${!empty memberVO.getCompanyName()}"><%-- 법인사업자 일 경우(기업명을 적었을 경우) --%>
						<th>기업명</th>
						<td><input type="text" id="companyName" name="companyName"
						value="${memberVO.getCompanyName() }" readonly></td>
						</c:if>
						<c:if test="${empty memberVO.getCompanyName() }"><%-- 개인사업자일 경우(기업명을 적지 않았을경우) --%>
						<th>기업명</th>
						<td><input type="text" id="companyName" name="companyName"
						value="개인사업" readonly></td>
						</c:if>
					</tr>
					<tr class="t70">
						<th>기업 주소</th>
						<td><select class="n_b" id="address1" name="address1">
								<option value="서울특별시">서울특별시</option>
								<option value="경기도">경기도</option>
								<option value="인천광역시">인천광역시</option>
								<option value="강원도">강원도</option>
								<option value="대전광역시">대전광역시</option>
								<option value="충청도">충청도</option>
								<option value="광주광역시">광주광역시</option>
								<option value="전라도">전라도</option>
								<option value="부산광역시">부산광역시</option>
								<option value="대구광역시">대구광역시</option>
								<option value="울산광역시">울산광역시</option>
								<option value="경상도">경상도</option>
								<option value="제주도">제주도</option>
						</select> <input type="text" id="address2" name="address2"></td>
					</tr>
					<tr class="t22">
						<th>프로젝트 시작기간</th>
						<td><input type="date" id="testDatepicker1" autocomplete=off name="testDatepicker1">
						<b>※프로젝트 오픈 날짜를 정해주세요.</b></td>
					</tr>
					<tr class="t22">
						<th>프로젝트 종료기간</th>
						<td><input type="date" id="testDatepicker2" autocomplete=off name="testDatepicker2">
						<b>※프로젝트 종료 날짜를 정해주세요.</b></td>
					</tr>
					<!-- <tr class="t100">
						<th>검색용 태그</th>
						<td><input type="text" id="searchTag" name="searchTag"></td>
					</tr>
					<tr class="t59">
						<th>카테고리</th>
						<td><select id="cate" name="cate" >
								<option class="n_b"selected>::카테고리 종류::</option>
								<option value="tech">테크·가전</option>
								<option value="beauti">뷰티</option>
								<option value="fashion">패션·잡화</option>
								<option value="food">푸드</option>
								<option value="design">디자인 소품</option>
								<option value="sport">스포츠</option>
						</select></td>
					</tr> -->
				</tbody>
			</table>
			<hr />
			<div class="investment_sub">
				<input type="submit" value="다음" /> <input
					type="reset" value="취소"
					onclick="location='studio_main';" />
			</div>
		</form>
	</div>
</body>
</html>