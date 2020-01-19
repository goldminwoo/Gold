<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TREE FUNDING</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/fms.css" />
<%-- css외부 포함파일 불러오기, ./는 상대경로로 현재경로를 뜻함.  --%>
<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/js/maker_studio.js"></script>
<%--guide.js 경로 --%>
</head>
<body>
<%@ include file="../header.jsp"%>
	<div id="MakerStudio"><%--제일 큰틀 --%>
		<div id="msHead"><%--msHead와 msBody로 나눔 --%>
			<div class="fmslogo"></div><%-- fundingmakerstudio 로고 --%>
			<div class="msHeadRigthBoss"><%--페이지에 3개의 버튼이 있는데 버튼보스임 다 감까쥐고 있음 --%>
				<button type="button" onclick="location.href='${pageContext.request.contextPath}/' "class="msHeadRigth1">HOME
            </button>
            <button type="button" onclick="location.href='${pageContext.request.contextPath}/mypage/mypage' "class="msHeadRigth2">MyPage
            </button>
				<button type="button" onclick="location.href='${pageContext.request.contextPath}/studio/start_project'" class="msHeadRigth3">새로 등록하기
            </button>
			</div>
		</div>
		<%-- <div id="msBody"><!-- 탭메뉴가 메인임 -->
			<div class="FundList">
				<ul class="tabs"><!-- 탭 메뉴 목록 -->
					<li class="tab-link current" data-tab="tab-1">[전체보기]
					</li>
					<li class="tab-link" data-tab="tab-2">[투자]
					</li>
					<li class="tab-link" data-tab="tab-3">[리워드]
					</li>
				</ul>
				
				<div id="tab-1" class="tab-content current">
					전체보기를 눌렀을때 나오는 페이지
					<div class="viewall">
						<img src="${pageContext.request.contextPath}/images/mypage/investimg.jpg" alt="이미지" class="projectimg">
						<div class="projectboss">
							<ul class="projecttitle">
								<li class="projectcont1">[프로젝트 제목 입력]
								</li>
								<li class="projectcont2">[기업명 입력]		
								</li>
								<li class="projectcont3">준비 작업중
								</li>
								<li class="projectcont3">준비 작업중
								</li> 
							</ul>
						</div>
						<button type="button" class="msBodybtn"
						onclick="location.href='${pageContext.request.contextPath}/studio/studio_main'">스튜디오 바로가기
						</button>
					</div>
					<div class="viewall"><img src="${pageContext.request.contextPath}/images/mypage/rewardimg.jpg" alt="이미지" class="projectimg">
						<div class="projectboss">
							<ul class="projecttitle">
								<li class="projectcont1">[프로젝트 제목 입력]
								</li>
								<li class="projectcont2">[기업명 입력]		
								</li>
								<li class="projectcont3">준비 작업중
								</li>
								<li class="projectcont3">준비 작업중
								</li>
							</ul>
						</div>
						<button type="button" class="msBodybtn"
						onclick="location.href='${pageContext.request.contextPath}/studio/studio_main'">스튜디오 바로가기
						</button></div>
					<div class="viewall"><img src="${pageContext.request.contextPath}/images/mypage/treefunding.jpg" alt="이미지" class="projectimg">
						<div class="projectboss">
							<ul class="projecttitle">
								<li class="projectcont1">[프로젝트 제목 입력]
								</li>
								<li class="projectcont2">[기업명 입력]		
								</li>
								<li class="projectcont3">준비 작업중
								</li>
								<li class="projectcont3">준비 작업중
								</li>
							</ul>
						</div>
						<button type="button" class="msBodybtn"
						onclick="location.href='${pageContext.request.contextPath}/studio/studio_main'">스튜디오 바로가기
						</button></div>

				</div>
				
				
				<div id="tab-2" class="tab-content">
					투자를 눌렀을때 나오는 페이지
					<div class="viewall">
						<img src="${pageContext.request.contextPath}/images/mypage/investimg.jpg" alt="이미지" class="projectimg">
						<div class="projectboss">
							<ul class="projecttitle">
								<li class="projectcont1">[프로젝트 제목 입력]</li>
								<li class="projectcont2">[기업명 입력]		</li>
								<li class="projectcont3">준비 작업중</li>
								<li class="projectcont3">준비 작업중</li>
							</ul>
						</div>
						<button type="button" class="msBodybtn"
						onclick="location.href='${pageContext.request.contextPath}/studio/studio_main'">스튜디오 바로가기</button>
					</div>
					<div class="viewall">
						<img src="${pageContext.request.contextPath}/images/mypage/investimg.jpg" alt="이미지" class="projectimg">
						<div class="projectboss">
							<ul class="projecttitle">
								<li class="projectcont1">[프로젝트 제목 입력]</li>
								<li class="projectcont2">[기업명 입력]		</li>
								<li class="projectcont3">준비 작업중</li>
								<li class="projectcont3">준비 작업중</li>
							</ul>
						</div>
						<button type="button" class="msBodybtn"
						onclick="location.href='${pageContext.request.contextPath}/studio/studio_main'">스튜디오 바로가기</button>
					</div>
					<div class="viewall">
						<img src="${pageContext.request.contextPath}/images/mypage/investimg.jpg" alt="이미지" class="projectimg">
						<div class="projectboss">
							<ul class="projecttitle">
								<li class="projectcont1">[프로젝트 제목 입력]</li>
								<li class="projectcont2">[기업명 입력]		</li>
								<li class="projectcont3">준비 작업중</li>
								<li class="projectcont3">준비 작업중</li>
							</ul>
						</div>
						<button type="button" class="msBodybtn"
						onclick="location.href='${pageContext.request.contextPath}/studio/studio_main'">스튜디오 바로가기</button>
					</div>
				</div>
				
				
				<div id="tab-3" class="tab-content">
					리워드를 눌렀을때 나오는 페이지
					<div class="viewall">
						<img src="${pageContext.request.contextPath}/images/mypage/investimg.jpg" alt="이미지" class="projectimg">
						<div class="projectboss">
							<ul class="projecttitle">
								<li class="projectcont1">[트리펀딩프로젝트 제목 입력]</li>
								<li class="projectcont2">[abc]		</li>
								<li class="projectcont3">펀딩 후원중</li>
								<li class="projectcont3">펀딩 후원중</li>
							</ul>
						</div>
						<button type="button" class="msBodybtn"
						onclick="location.href='${pageContext.request.contextPath}/studio/studio_main'">스튜디오 바로가기</button>
					</div>
					<div class="viewall">
						<img src="${pageContext.request.contextPath}/images/mypage/investimg.jpg" alt="이미지" class="projectimg">
						<div class="projectboss">
							<ul class="projecttitle">
								<li class="projectcont1">[트리펀딩프로젝트 제목 입력]</li>
								<li class="projectcont2">[abc]		</li>
								<li class="projectcont3">펀딩 후원중</li>
								<li class="projectcont3">펀딩 후원중</li>
							</ul>
						</div>
						<button type="button" class="msBodybtn"
						onclick="location.href='${pageContext.request.contextPath}/studio/studio_main'">스튜디오 바로가기</button>
					</div>
					<div class="viewall">
						<img src="${pageContext.request.contextPath}/images/mypage/investimg.jpg" alt="이미지" class="projectimg">
						<div class="projectboss">
							<ul class="projecttitle">
								<li class="projectcont1">[트리펀딩프로젝트 제목 입력]</li>
								<li class="projectcont2">[abc]		</li>
								<li class="projectcont3">펀딩 후원중</li>
								<li class="projectcont3">펀딩 후원중</li>
							</ul>
						</div>
						<button type="button" class="msBodybtn" 
						onclick="location.href='${pageContext.request.contextPath}/studio/studio_main'">스튜디오 바로가기</button>
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