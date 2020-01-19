<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TREE FUNDING</title>
<link href="${pageContext.request.contextPath}/css/reward_project_que.css" rel="stylesheet">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/wel.jpg">
<link href="${pageContext.request.contextPath}/js/jquery.js" rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath}/js/project_que.js" type="text/javascript" ></script>
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>

</head>
<body>
<%@include file="studio_main_header.jsp"%>
<%@include file="studio_main_category.jsp"%>
   <div id="open_wrap">
		<h2 class="pr">문의사항 작성</h2>
		<form name="investmentQuesionVO" method="post" action="investment_project_que_ok"
			onsubmit="return que_ok();">
			<table class="investment_list">
				<colgroup>
					<col style="width: 200px">
				</colgroup>
				<tbody>
					<tr class="t100">
						<th>문의 이메일</th>
						<td><input type="text" id="queEmail" name="queEmail"></td>
					</tr>
					<tr class="t30">
						<th>문의 전화번호</th>
						<td><select class="n_b" id="quePhone1" name="quePhone1">
								<option>010</option>
								<option>011</option>
								<option>016</option>
								<option>017</option>
								<option>018</option>
								<option>019</option>
						</select>&nbsp;-&nbsp;<input type="text" id="quePhone2" name="quePhone2">
						<input type="text" id="quePhone3" name="quePhone3"></td>
					</tr>
					<tr class="t100">
						<th>홈페이지</th>
						<td><input type="text" id="queUrl" name="queUrl"></td>
					</tr>
					<tr class="t100">
						<th>SNS</th>
						<td><input type="text" id="queSns" name="queSns"></td>
					</tr>
				</tbody>
			</table>
			<div class="investment_sub">
				<input type="submit" value="프로젝트 등록 요청" /> <input
					type="reset" value="취소"
					onclick="location='studio_main';" />
			</div>
		</form>
	</div>
</body>
</html>