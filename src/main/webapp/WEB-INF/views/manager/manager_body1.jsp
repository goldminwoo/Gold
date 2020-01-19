<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TREE FUNDING</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/manager_body1.css">
</head>
<body>
	<div id="managerbody1">
		<ul>
			<div class="m-1">
				<li>
					<p class="p-1">
						<a href="${pageContext.request.contextPath}/manager/user">회원 관리</a>
					</p>
				</li>
			</div>
			<div class="m-1">
				<li>
					<p class="p-1">
						<a href="${pageContext.request.contextPath}/manager/investment">프로젝트 관리</a>
					</p>
				</li>
				<li>
					<ul class="u-1">
						<li><p class="p-2">
								<a href="${pageContext.request.contextPath}/manager/investment">투자 프로젝트 관리</a>
							</p></li>
						<li><p class="p-2">
								<a href="${pageContext.request.contextPath}/manager/reward">리워드 프로젝트 관리</a>
							</p></li>
					</ul>
				</li>
			</div>
			<div class="m-1">
				<li>
					<p class="p-1">
						<a href="${pageContext.request.contextPath}/manager/updateAdminPassword">관리자 비밀번호 변경</a>
					</p>
				</li>
			</div>
			<%-- <div class="m-1">
				<li>
					<p class="p-1">
						<a href="#">공지사항 관리</a>
					</p>
				</li>
			</div>
			<div class="m-1">
				<li>
					<p class="p-1">
						<a href="${pageContext.request.contextPath}/manager/reportYet">신고관리</a>
					</p>
				</li>
				<li>
					<ul class="u-1">
						<li><p class="p-2">
								<a href="manager_report_yet">신고 처리 전</a>
							</p></li>
						<li><p class="p-2">
								<a href="${pageContext.request.contextPath}/manager/reportComplete">신고 처리 완료</a>
							</p></li>
					</ul>
				</li>
			</div>
						<div class="m-1">
				<li>
					<p class="p-1">
						<a href="#">뉴스레터 발송</a>
					</p>
				</li>
				<li>
					<ul class="u-1">
						<li><p class="p-2">
								<a href="#">뉴스레터 작성</a>
							</p></li>
					</ul>
				</li>
				
			</div> --%>
		</ul>
	</div>
</body>
</html>