<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TREE FUNDING</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/mypage.css" />
<!-- css외부 포함파일 불러오기, ./는 상대경로로 현재경로를 뜻함. -->
<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/js/mypage.js"></script>
<%--guide.js 경로 --%>
</head>
<body>
<%@ include file="../header.jsp"%>
	<%--크게 두개 영역으로 나눔.위(profileHead)에는 프로필편집,'메이커메뉴로전환'하는 버튼 
	아래(profileBody)에는 펀딩한 프로젝트가 촤르르 --%>
	<div id="mypage">
		<div id="profileHead">
			<div class="profileHeadRigth">
				<button type="button" onclick="location.href='${pageContext.request.contextPath}/studio/fms'" class="profileHeadRigth1">Maker
					Studio</button>
			</div>
			<div class="profileHeadLeft">
				<input type="hidden" id="password" value="${m.password}">
				<button type="button" class="profileEdit" onclick="pro(password.value)" >프로필 편집</button>
				<button type="button" class="profileEdit" onclick="creditCharge(password.value)" >크레딧 관리</button>
				<form method="get" action="">
					<table class="profileTable1"><%--프로젝트 개수와 프젝도트 종류 --%>
						<tr class="filecount">
							<th>${fundingCount }</th>
							<!-- <th>2</th> -->
							<th>${count}</th>
						</tr>
						<tr>
							<th>펀딩 수</th>
							<!-- <th>관심 펀딩 수</th> -->
							<th>만든 프로젝트 수</th>
						</tr>
					</table>
					<table class="profileTable2"><%--회원이름 --%>
						<tr class="tableName">
							<th colspan="3">${m.name }</th>
						</tr>
						<tr class="tableName2"><%--회원종류 --%>
							<th colspan="3">${m.businessType }</th>
						</tr>
					</table>
				</form>
			</div>
		</div>
		<%--profileBody부분 --%>
		<%-- <div id="profileBody">
			<ul class="tabs">
				<li class="tab-link current" data-tab="tab-1">[펀딩한 프로젝트]</li>
				<li class="tab-link" data-tab="tab-2">[관심 등록한 프로젝트]</li>
				<li class="tab-link" data-tab="tab-3">[만든 프로젝트 수]</li>
			</ul>
			펀딩한 프로젝트 안에 내용 넣을겁니다 아래에
			<div id="tab-1" class="tab-content current">안쪽 탭메뉴 첫번째
				<div class="project1">
					<ul class="minitabs">
						<li class="minitab-link current" data-tab="minitab-1">[투자]</li>
						<li class="minitab-link" data-tab="minitab-2">[리워드]</li>
					</ul>

					<div id="minitab-1" class="minitab-content current">
						<div class="miniproject1">
							투자에 나오는 화면 
							<div class="miniproject1a">
								왼쪽 영역
								<p class="miniprojectName">[투자 프로젝트]</p>
								<img src="${pageContext.request.contextPath}/images/mypage/guide01.png" alt="이미지"
									class="miniproject1aImg">
								<div class="doubleminiprojectName">
									[1]프로젝트제목
									<button type="button" class="like"></button>
								</div>

								<div class="miniprogress">
									<progress value="50" max="100">
										<strong>Progress:10%</strong>
									</progress>
									[50% 달성]
								</div>
								<ul class="miniprojectList">
									<li>오픈중</li><li>목표금액:50,000,000원</li>
								</ul>
								<button type="button" class="movemove">바로가기</button>
							</div>

							<div class="miniproject1b">
								가운데 영역
								<p class="miniprojectName">[투자 프로젝트]</p>
								<img src="${pageContext.request.contextPath}/images/mypage/guide02.png" alt="이미지"
									class="miniproject1aImg">
								<div class="doubleminiprojectName">
									[1]프로젝트제목
									<button type="button" class="like"></button>
								</div>
								<div class="miniprogress">
									<progress value="50" max="100">
										<strong>Progress:10%</strong>
									</progress>
									[50% 달성]
								</div>
								<ul class="miniprojectList">
									<li>오픈중</li><li>목표금액:50,000,000원</li>
								</ul>
								<button type="button" class="movemove">바로가기</button>
							</div>
							<div class="miniproject1c">
								오론쪽 영역
								<p class="miniprojectName">[투자 프로젝트]</p>
								<img src="${pageContext.request.contextPath}/images/mypage/guide03.png" alt="이미지"
									class="miniproject1aImg">
								<div class="doubleminiprojectName">
									[1]프로젝트제목
									<button type="button" class="like"></button>
								</div>
								<div class="miniprogress">
									<progress value="50" max="100">
										<strong>Progress:10%</strong>
									</progress>
									[50% 달성]
								</div>
								<ul class="miniprojectList">
									<li>오픈중</li><li>목표금액:50,000,000원</li>
								</ul>
								<button type="button" class="movemove">바로가기</button>
							</div>
						</div>
					</div>

					<div id="minitab-2" class="minitab-content">안쪽 탭메뉴 두번째
						<div class="miniproject2">
							리워드에 나오는 화면
							<div class="miniproject1a">
								첫번째 프로젝트
								<p class="miniprojectName">[리워드 프로젝트]</p>
								<img src="${pageContext.request.contextPath}/images/mypage/guide01.png" alt="이미지"
									class="miniproject1aImg">
								<div class="doubleminiprojectName">
									[1]프로젝트제목
									<button type="button" class="like"></button>
								</div>

								<div class="miniprogress">
									<progress value="50" max="100">
										<strong>Progress:10%</strong>
									</progress>
									[50% 달성]
								</div>
								<ul class="miniprojectList">
									<li>오픈중</li><li>목표금액:50,000,000원</li>
								</ul>
								<button type="button" class="movemove">바로가기</button>
							</div>

							<div class="miniproject1b">
								두번째 프로젝트 
								<p class="miniprojectName">[리워드 프로젝트]</p>
								<img src="${pageContext.request.contextPath}/images/mypage/guide02.png" alt="이미지"
									class="miniproject1aImg">
								<div class="doubleminiprojectName">
									[1]프로젝트제목
									<button type="button" class="like"></button>
								</div>
								<div class="miniprogress">
									<progress value="50" max="100">
										<strong>Progress:10%</strong>
									</progress>
									[50% 달성]
								</div>
								<ul class="miniprojectList">
									<li>오픈중</li><li>목표금액:50,000,000원</li>
								</ul>
								<button type="button" class="movemove">바로가기</button>
							</div>
							<div class="miniproject1c">
								세번째 영역
								<p class="miniprojectName">[리워드 프로젝트]</p>
								<img src="${pageContext.request.contextPath}/images/mypage/guide03.png" alt="이미지"
									class="miniproject1aImg">
								<div class="doubleminiprojectName">
									[1]프로젝트제목
									<button type="button" class="like"></button>
								</div>
								<div class="miniprogress">
									<progress value="50" max="100">
										<strong>Progress:10%</strong>
									</progress>
									[50% 달성]
								</div>
								<ul class="miniprojectList">
									<li>오픈중</li><li>목표금액:50,000,000원</li>
								</ul>
								<button type="button" class="movemove">바로가기</button>
							</div>
						</div>
					</div>

				</div>
			</div>


			<div id="tab-2" class="tab-content">바깥 탭메뉴 두번째
				<div class="project1">
					<ul class="minitabs2">
						<li class="minitab2-link current" data-tab="minitab2-1">[투자]</li>
						<li class="minitab2-link" data-tab="minitab2-2">[리워드]</li>
					</ul>

					<div id="minitab2-1" class="minitab2-content current">
						<div class="miniproject1">
							투자에 나오는 화면 
							<div class="miniproject1a">
								왼쪽 영역
								<p class="miniprojectName">[투자 프로젝트]</p>
								<img src="${pageContext.request.contextPath}/images/mypage/guide01.png" alt="이미지"
									class="miniproject1aImg">
								<div class="doubleminiprojectName">
									[1]프로젝트제목
									<button type="button" class="like"></button>
								</div>

								<div class="miniprogress">
									<progress value="50" max="100">
										<strong>Progress:10%</strong>
									</progress>
									[50% 달성]
								</div>
								<ul class="miniprojectList">
									<li>오픈중</li><li>목표금액:50,000,000원</li>
								</ul>
								<button type="button" class="movemove">바로가기</button>
							</div>

							<div class="miniproject1b">
								오론쪽 영역
								<p class="miniprojectName">[투자 프로젝트]</p>
								<img src="${pageContext.request.contextPath}/images/mypage/guide02.png" alt="이미지"
									class="miniproject1aImg">
								<div class="doubleminiprojectName">
									[1]프로젝트제목
									<button type="button" class="like"></button>
								</div>
								<div class="miniprogress">
									<progress value="50" max="100">
										<strong>Progress:10%</strong>
									</progress>
									[50% 달성]
								</div>
								<ul class="miniprojectList">
									<li>오픈중</li><li>목표금액:50,000,000원</li>
								</ul>
								<button type="button" class="movemove">바로가기</button>
							</div>
							<div class="miniproject1c">
								오론쪽 영역
								<p class="miniprojectName">[투자 프로젝트]</p>
								<img src="${pageContext.request.contextPath}/images/mypage/guide03.png" alt="이미지"
									class="miniproject1aImg">
								<div class="doubleminiprojectName">
									[1]프로젝트제목
									<button type="button" class="like"></button>
								</div>
								<div class="miniprogress">
									<progress value="50" max="100">
										<strong>Progress:10%</strong>
									</progress>
									[50% 달성]
								</div>
								<ul class="miniprojectList">
									<li>오픈중</li><li>목표금액:50,000,000원</li>
								</ul>
								<button type="button" class="movemove">바로가기</button>
							</div>
						</div>
					</div>

					<div id="minitab2-2" class="minitab2-content">
						<div class="miniproject2">
							리워드에 나오는 화면
							<div class="miniproject1a">
								오른쪽영역
								<p class="miniprojectName">[리워드 프로젝트]</p>
								<img src="${pageContext.request.contextPath}/images/mypage/guide01.png" alt="이미지"
									class="miniproject1aImg">
								<div class="doubleminiprojectName">
									[1]프로젝트제목
									<button type="button" class="like"></button>
								</div>

								<div class="miniprogress">
									<progress value="50" max="100">
										<strong>Progress:10%</strong>
									</progress>
									[50% 달성]
								</div>
								<ul class="miniprojectList">
									<li>오픈중</li><li>목표금액:50,000,000원</li>
								</ul>
								<button type="button" class="movemove">바로가기</button>
							</div>

							<div class="miniproject1b">
								오론쪽 영역
								<p class="miniprojectName">[리워드 프로젝트]</p>
								<img src="${pageContext.request.contextPath}/images/mypage/guide02.png" alt="이미지"
									class="miniproject1aImg">
								<div class="doubleminiprojectName">
									[1]프로젝트제목
									<button type="button" class="like"></button>
								</div>
								<div class="miniprogress">
									<progress value="50" max="100">
										<strong>Progress:10%</strong>
									</progress>
									[50% 달성]
								</div>
								<ul class="miniprojectList">
									<li>오픈중</li><li>목표금액:50,000,000원</li>
								</ul>
								<button type="button" class="movemove">바로가기</button>
							</div>
							<div class="miniproject1c">
								오론쪽 영역
								<p class="miniprojectName">[리워드 프로젝트]</p>
								<img src="${pageContext.request.contextPath}/images/mypage/guide03.png" alt="이미지"
									class="miniproject1aImg">
								<div class="doubleminiprojectName">
									[1]프로젝트제목
									<button type="button" class="like"></button>
								</div>
								<div class="miniprogress">
									<progress value="50" max="100">
										<strong>Progress:10%</strong>
									</progress>
									[50% 달성]
								</div>
								<ul class="miniprojectList">
									<li>오픈중</li><li>목표금액:50,000,000원</li>
								</ul>
								<button type="button" class="movemove">바로가기</button>
							</div>
						</div>
					</div>

				</div>
				
			</div>
			
			
			
			
			
			<div id="tab-3" class="tab-content">
				<div class="project1">
					<ul class="minitabs3">
						<li class="minitab3-link current" data-tab="minitab3-1">[투자]</li>
						<li class="minitab3-link" data-tab="minitab3-2">[리워드]</li>
					</ul>

					<div id="minitab3-1" class="minitab3-content current">
						<div class="miniproject1">
							투자에 나오는 화면 
							<div class="miniproject1a">
								왼쪽 영역
								<p class="miniprojectName">[투자 프로젝트]</p>
								<img src="${pageContext.request.contextPath}/images/mypage/guide01.png" alt="이미지"
									class="miniproject1aImg">
								<div class="doubleminiprojectName">
									[1]프로젝트제목
									<button type="button" class="like"></button>
								</div>

								<div class="miniprogress">
									<progress value="50" max="100">
										<strong>Progress:10%</strong>
									</progress>
									[50% 달성]
								</div>
								<ul class="miniprojectList">
									<li>오픈중</li><li>목표금액:50,000,000원</li>
								</ul>
								<button type="button" class="movemove">바로가기</button>
							</div>

							<div class="miniproject1b">
								오론쪽 영역
								<p class="miniprojectName">[투자 프로젝트]</p>
								<img src="${pageContext.request.contextPath}/images/mypage/guide02.png" alt="이미지"
									class="miniproject1aImg">
								<div class="doubleminiprojectName">
									[1]프로젝트제목
									<button type="button" class="like"></button>
								</div>
								<div class="miniprogress">
									<progress value="50" max="100">
										<strong>Progress:10%</strong>
									</progress>
									[50% 달성]
								</div>
								<ul class="miniprojectList">
									<li>오픈중</li><li>목표금액:50,000,000원</li>
								</ul>
								<button type="button" class="movemove">바로가기</button>
							</div>
							<div class="miniproject1c">
								오론쪽 영역
								<p class="miniprojectName">[투자 프로젝트]</p>
								<img src="${pageContext.request.contextPath}/images/mypage/guide03.png" alt="이미지"
									class="miniproject1aImg">
								<div class="doubleminiprojectName">
									[1]프로젝트제목
									<button type="button" class="like"></button>
								</div>
								<div class="miniprogress">
									<progress value="50" max="100">
										<strong>Progress:10%</strong>
									</progress>
									[50% 달성]
								</div>
								<ul class="miniprojectList">
									<li>오픈중</li><li>목표금액:50,000,000원</li>
								</ul>
								<button type="button" class="movemove">바로가기</button>
							</div>
						</div>
					</div>

					<div id="minitab3-2" class="minitab3-content">
						<div class="miniproject2">
							리워드에 나오는 화면
							<div class="miniproject1a">
								오른쪽영역
								<p class="miniprojectName">[리워드 프로젝트]</p>
								<img src="${pageContext.request.contextPath}/images/mypage/guide01.png" alt="이미지"
									class="miniproject1aImg">
								<div class="doubleminiprojectName">
									[1]프로젝트제목
									<button type="button" class="like"></button>
								</div>

								<div class="miniprogress">
									<progress value="50" max="100">
										<strong>Progress:10%</strong>
									</progress>
									[50% 달성]
								</div>
								<ul class="miniprojectList">
									<li>오픈중</li><li>목표금액:50,000,000원</li>
								</ul>
								<button type="button" class="movemove">바로가기</button>
							</div>

							<div class="miniproject1b">
								오론쪽 영역
								<p class="miniprojectName">[리워드 프로젝트]</p>
								<img src="${pageContext.request.contextPath}/images/mypage/guide02.png" alt="이미지"
									class="miniproject1aImg">
								<div class="doubleminiprojectName">
									[1]프로젝트제목
									<button type="button" class="like"></button>
								</div>
								<div class="miniprogress">
									<progress value="50" max="100">
										<strong>Progress:10%</strong>
									</progress>
									[50% 달성]
								</div>
								<ul class="miniprojectList">
									<li>오픈중</li><li>목표금액:50,000,000원</li>
								</ul>
								<button type="button" class="movemove">바로가기</button>
							</div>
							<div class="miniproject1c">
								오론쪽 영역
								<p class="miniprojectName">[리워드 프로젝트]</p>
								<img src="${pageContext.request.contextPath}/images/mypage/guide03.png" alt="이미지"
									class="miniproject1aImg">
								<div class="doubleminiprojectName">
									[1]프로젝트제목
									<button type="button" class="like"></button>
								</div>
								<div class="miniprogress">
									<progress value="50" max="100">
										<strong>Progress:10%</strong>
									</progress>
									[50% 달성]
								</div>
								<ul class="miniprojectList">
									<li>오픈중</li><li>목표금액:50,000,000원</li>
								</ul>
								<button type="button" class="movemove">바로가기</button>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div> --%>
	</div>
				<!-- Bootstrap core JavaScript -->
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
	<%@ include file="../footer.jsp"%>
</body>
</html>