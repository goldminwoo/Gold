<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TREE FUNDING</title>

<link href="${pageContext.request.contextPath}/css/calculate.css" rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/js/calculate.js"></script>
</head>
<body>
	<%@ include file="../header.jsp"%>
	<div class="cal">
		<h2 class="pr">정산 관리</h2>
		<table class="table-2">
			<tr>
				<th>
					남은 credit
				</th>
				<td>
					300
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<a href="#" onclick="windows();">크레딧 관리</a>
				</td>
			</tr>
		</table>
		<p class="r">
			※내가 올린 프로젝트의 정산 관리를 보고 싶으면 <a
				href="${pageContext.request.contextPath}/studio/start"> Maker
				Studio</a>페이지로 이동해서 확인 바랍니다.
		</p>
		<div class="t1">
			<h2 class="h-2">투자 내역</h2>
			<table class="table-1">
				<tr>
					<th class="t-2">번호</th>
					<th>프로젝트명</th>
					<th>기업명</th>
					<th>주식 구입 수</th>
					<th>주식 가격</th>
					<th>환불</th>
				</tr>
				<tr>
					<td>1</td>
					<td>날아오르라 주작이여</td>
					<td>쥬쟉쟉 쥬ㅠ쥬쟉</td>
					<td>3주(주당 300,000원)</td>
					<td>900,000원</td>
					<td><button class="b-1" onclick="next(this);">환불요청</button></td>
					<td><a href="#">해당 사이트 바로가기</a></td>
				</tr>
				<tr>
					<td>1</td>
					<td>날아오르라 주작이여</td>
					<td>쥬쟉쟉 쥬ㅠ쥬쟉</td>
					<td>3주(주당 300,000원)</td>
					<td>900,000원</td>
					<td><button class="b-1" onclick="next(this);">환불요청</button></td>
					<td><a href="#">해당 사이트 바로가기</a></td>
				</tr>
			</table>
		</div>

		<div class="t1">
			<h2 class="h-2">리워드 내역</h2>
			<table class="table-1">
				<tr class="view1">
					<th class="t-2">번호</th>
					<th>프로젝트명</th>
					<th>리워드 종류</th>
					<th>리워드 개수</th>
					<th>리워드 가격</th>
					<th>환불</th>
				</tr>
				<tr>
					<td>1</td>
					<td>날아오르라 쥬작이여</td>
					<td>카넥+카백</td>
					<td>3개(개당 29,000원)</td>
					<td>87,000원</td>
					<td><button class="b-1" onclick="next2(this);">환불요청</button></td>
					<td><a href="#">해당 사이트 바로가기</a></td>
				</tr>
			</table>
		</div>
		<div class="t1">
			<h2 class="h-2">투자 환불 내역</h2>
		<p class="r">
			※환불한 금액은 크레딧으로 충전 됩니다.
		</p>
			<table class="table-1" id="ex1">
				<tr class="item1">
					<th class="t-2">번호</th>
					<th>프로젝트명</th>
					<th>기업명</th>
					<th>주식 가격</th>
					<th>주식 구입 수</th>
					<th>받은 금액</th>
					<th>환불 여부</th>
				</tr>
				<tr class="item2">
					<td>1</td>
					<td>날아오르라 주작이여</td>
					<td>쥬쟉쟉 쥬쥬쟉</td>
					<td>300,000원</td>
					<td>3주</td>
					<td>900,000</td>
					<td class="ne">완료</td>
				</tr>
			</table>
			</div>
			<div class="t1">
				<h2 class="h-2">리워드 환불 내역</h2>
		<p class="r">
			※환불한 금액은 크레딧으로 충전 됩니다.
		</p>
			<table class="table-1" id="ex2">
				<tr>
					<th class="t-2">번호</th>
					<th>프로젝트명</th>
					<th>리워드 종류</th>
					<th>리워드 가격</th>
					<th>리워드 개수</th>
					<th>받은 금액</th>
					<th>환불 여부</th>
				</tr>
				<tr class="i1">
					<td>1</td>
					<td>날아오르라 주작이여</td>
					<td>카넥+카백</td>
					<td>29,000원</td>
					<td>3개</td>
					<td>87,000원</td>
					<td>완료</td>
				</tr>
			</table>
		</div>
	</div>
	<%@ include file="../footer.jsp"%>
</body>
</html>