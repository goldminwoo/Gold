<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TREE FUNDING</title>
<link href="${pageContext.request.contextPath}/css/reward_project_del.css" rel="stylesheet" type="text/css">
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
		<h2 class="pr">리워드 프로젝트 삭제</h2>
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
						<th>삭제 사유</th>
						<td>
							<textarea cols="50" rows="10"></textarea>
							<b>※프로젝트를 삭제하려면 펀딩(투자)받은 내역이 없어야 하며 관리자의 승인이 필요합니다.<br/>
							※프로젝트 삭제가 완료되면 메시지로 확인이 가능하며 Maker Studio목록에서 없어집니다.</b>
						</td>
					</tr>
				</tbody>
			</table>
			<hr />
			<div class="investment_sub">
				<input type="submit" value="삭제요청" /> <input
					type="reset" value="취소"
					onclick="location='login';" />
			</div>
		</form>
	</div>
</body>
</html>