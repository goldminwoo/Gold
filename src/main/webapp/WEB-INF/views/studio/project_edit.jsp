<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TREE FUNDING</title>
<link href="${pageContext.request.contextPath}/css/reward_project_edit.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/js/jquery.js" rel="stylesheet" type="text/css">
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="${pageContext.request.contextPath}/js/investment_project_join.js" type="text/javascript" ></script>
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<%@include file="studio_main_header.jsp"%>
<%@include file="studio_main_category.jsp"%>
	<div id="open_wrap">
		<h2 class="pr">프로젝트 수정</h2>
		<form name="m" method="post" action="member_join_ok"
			onsubmit="return join_check();">
			<table class="investment_list">
				<colgroup>
					<col style="width: 200px">
				</colgroup>
				<tbody>
					<tr class="t100">
						<th>프로젝트명</th>
						<td><input type="text" id="name" name="name"></td>
					</tr>
					<tr class="t100">
						<th>대표자 이름</th>
						<td><input type="text" id="name" name="name"></td>
					</tr>
					<tr class="t30">
						<th>대표자 전화번호</th>
						<td><select class="n_b" id="phone1" name="phone1">
								<option>010</option>
								<option>011</option>
								<option>016</option>
								<option>017</option>
								<option>018</option>
								<option>019</option>
						</select>&nbsp;-&nbsp;<input type="text" id="phone2" name="phone2">&nbsp;-&nbsp;
						<input type="text" id="phone3" name="phone3"></td>
					</tr>
					<tr class="t100">
						<th>목표금액</th>
						<td><input type="text" id="name"name="name" readonly>
						<b>※목표금액은 수정 불가합니다.</b>
						</td>
					</tr>
					<tr class="t70">
						<th>사업자번호</th>
						<td><input type="text" id="id" name="id"><input type="button" value="확인" class="in-1" onclick="id_check();" />
      <b>※사업자 번호 13자리를 입력해주세요.</b></td>
					</tr>
					<tr class="t100">
						<th>기업명</th>
						<td><input type="text" id="name" name="name"></td>
					</tr>
					<tr class="t70">
						<th>기업 주소</th>
						<td><select class="n_b" id="address" name="address">
								<option>서울특별시</option>
								<option>경기도</option>
								<option>인천광역시</option>
								<option>강원도</option>
								<option>대전광역시</option>
								<option>충청도</option>
								<option>광주광역시</option>
								<option>전라도</option>
								<option>부산광역시</option>
								<option>대구광역시</option>
								<option>울산광역시</option>
								<option>경상도</option>
								<option>제주도</option>
						</select> <input type="text" id="address" name="address"></td>
					</tr>
					<tr class="t22">
						<th>프로젝트 시작기간</th>
						<td><input type="text"autocomplete=off name="name" readonly>
						<b>※프로젝트 기간은 수정 불가합니다.</b></td>
					</tr>
					<tr class="t22">
						<th>프로젝트 종료기간</th>
						<td><input type="text"autocomplete=off name="name" readonly>
						<b>※프로젝트 기간은 수정 불가합니다.</b></td>
					</tr>
					<tr class="t100">
						<th>검색용 태그</th>
						<td><input type="text" id="name" name="name"></td>
					</tr>
					<tr class="t59">
						<th>카테고리</th>
						<td><select>
								<option class="n_b" id="businessType" name="businessType" selected>::카테고리 종류::</option>
								<option value="o1">테크·가전</option>
								<option value="o2">뷰티</option>
								<option value="o3">패션·잡화</option>
								<option value="o3">푸드</option>
								<option value="o3">디자인 소품</option>
								<option value="o3">스포츠</option>
						</select></td>
					</tr>
				</tbody>
			</table>
			<hr />
			<div class="investment_sub">
				<input type="submit" value="수정" /> <input
					type="reset" value="취소"
					onclick="location='login';" />
			</div>
		</form>
	</div>
</body>
</html>