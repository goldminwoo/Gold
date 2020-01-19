<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TREE FUNDING</title>
</head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/story_join.css">
<body>
	<!-- smarteditor -->
	<script type="text/javascript"
		src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/editor/js/HuskyEZCreator.js"
		charset="utf-8"></script>
	<script>
		$(
				function() {
					//전역변수
					var obj = [];
					//스마트에디터 프레임생성
					nhn.husky.EZCreator
							.createInIFrame({
								oAppRef : obj,
								elPlaceHolder : "storyCont",
								sSkinURI : "/treeproject/resources/editor/SmartEditor2Skin.html",
								htParams : {
									// 툴바 사용 여부 (true:사용/ false:사용하지 않음)
									bUseToolbar : true,
									// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
									bUseVerticalResizer : true,
									// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
									bUseModeChanger : true,
								}
							});
					//전송버튼
					$("#savebutton").click(
							function() {
								//id가 smarteditor인 textarea에 에디터에서 대입
								obj.getById["storyCont"].exec(
										"UPDATE_CONTENTS_FIELD", []);
								//폼 submit
								$("#frm").submit();
							})
				})
	</script>
	<%@include file="studio_main_header.jsp"%>
	<%@include file="studio_main_category.jsp"%>
	<div id="open_wrap">
		<h2 class="pr">스토리 작성</h2>
		<form name="rewardStoryVO" method="post" action="${pageContext.request.contextPath}/studio/reward_story_join_ok"
			id="frm">
			<div class="abc">
				<textarea name="storyCont" id="storyCont">
					<p>필수 항목은 누락되거나 미비할 경우 오픈 승인이 어려우니 꼼꼼히 확인해주시고, 프로젝트의 특성에 맞게 자유롭게 배치해주세요.</p>
					<h1>1. 메이커 소개</h1>
					<ul>
						<li>“안녕하세요” 라는 인사와 함께 간단한 자기소개를 넣어주세요. 브랜드/팀명은 무엇이고, 이번 프로젝트에서 어떤 역할을 담당하는 지 소개해보세요.</li>
						<li>메이커님의 얼굴을 확인할 수 있는 실물사진은 필수 항목입니다. 일러스트나 뒷모습, 얼굴이 가려진 사진은 사용 불가합니다.</li>
					</ul>
					<h1>2. 프로젝트 진행 동기 및 목적</h1>
					<ul>
						<li>와디즈에서 펀딩을 하게 된 동기, 펀딩을 통해 이루고자 하는 목표와 함께, 목표금액은 무엇을 기준으로 설정하셨는 지도 함께 얘기해주세요.</li>
						<li>펀딩 종료 후, 펀딩금액을 어떻게 사용하실 지와 더불어 앞으로의 계획을 알려주세요.</li>
					</ul>
					<p>TIP) 현재 리워드는 어디까지 완성되었나요? 현재 리워드의 제작 진행 상황과 함께, 펀딩 이후의 계획도 같이 밝혀주시면 신뢰감을 주실 수 있답니다.</p>
					<h1>3. 리워드 소개와 상세정보</h1>
					<ul>
						<li>리워드의 이름은 무엇이고, 어떤 용도로 사용하는 제품/서비스인가요?</li>
						<li>리워드를 직접 보고 펀딩할 수 없기 때문에 서포터분들이 참고할 수 있는 사진, 영상과 같은 시각 자료를 넣어주세요.</li>
						<li>리워드 품목에 따라 서포터가 꼭 알아야 할 상세 스펙 (특징, 사양, 사용법, 인증서, 주의사항 등)을 빠짐없이 넣어주세요.</li>
					</ul>
					<h1>4. 리워드 리스트</h1>
					<ul>
						<li>리워드 탭에 추가해두신 리워드의 구성과 가격, 제한수량이 한눈에 들어올 수 있도록 리스트를 넣어주세요. 아래와 같이, 표를 이용해도 좋습니다.</li>
					</ul>
					<table>
						<tr>
							<th>리워드명</th><th>구성</th><th>가격</th><th>제한수량</th>
						</tr>
						<tr>
							<td>[패밀리버드] 트리펀딩텀블러</td>
							<td>트리펀딩 텀블러*4개, 코스터*4개</td>
							<td>35,000원</td>
							<td>50개</td>
						</tr>
						<tr>
							<td>[커플버드] 트리펀딩텀블러</td>
							<td>와디즈 텀블러*4개, 코스터*4와디즈 텀블러*2개, 코스터*2개</td>
							<td>20,000원</td>
							<td>100개</td>
						</tr>
						<tr>
							<td>[솔로버드] 와디즈텀블러</td>
							<td>와디즈 텀블러*1개</td>
							<td>10,000원</td>
							<td>200개</td>
						</tr>
					</table>
					<h1>5. 프로젝트 일정</h1>
					<p>아이디어가 처음 나온 날, 샘플을 처음 제작한 날 등 프로젝트를 처음 준비하기 시작한 시점부터 적어주세요. 프로젝트 시작/마감일, 리워드 발송일은 물론, 향후 일정까지 포함해주세요.</p>
					<ul>
						<li>아이디어 구상시점 : Ο월 Ο일 </li>
						<li>와디즈 펀딩 시작일 : 현재 </li>
						<li>와디즈 펀딩 마감일 : Ο월 Ο일  </li>
						<li>리워드 제작 시작일 : Ο월 Ο일 </li>
						<li>리워드 발송 시작일 : Ο월 Ο일 </li>
					</ul>
					<h1>6. 배송 안내</h1>
					<p>리워드 발송 방법, 순차 배송인 경우 1일 최대 발송 수량, 리워드 발송 관련 메이커님 연락처, 도서산간지역에 대한 배송 방침을 알려주세요.</p>
					<ul>
						<li>발송 방법 : §직접 전달, SMS, 우편, 등기, 택배 등§ </li>
						<li>발송 택배사 : 이용하시는 택배사의 정보 </li>
						<li>발송 일정 : Ο월 Ο일 ~ Ο월 Ο일 (ΟΟ개씩 순차 발송) </li>
						<li>도서산간지역 배송 안내 : §추가비와, 배송비 추가 방법 기재§ </li>
						<li>문의 채널 : §카카오채널 @ΟΟΟ, 메이커에게 문의하기, 메일, 연락처 등§ </li>
						<li>수령 후 보관 시 유의사항</li>
					</ul>
					<h1>7. FAQ</h1>
					<p>메이커님의 프로젝트만의 강점을 한 번 더 강조해 주시거나 서포터가 궁금해 할만한 내용을 적어주세요.</p>
					<ul>
						<li>펀딩과 쇼핑은 무엇이 다른가요? </li>
						<li>프로젝트의 후원금은 어떻게 사용하실 계획인가요?  </li>
						<li>리워드의 가장 큰 강점은 무엇인가요?  </li>
						<li>펀딩시 주의해야 할 점이 있나요? </li>
					</ul>
				</textarea>
				<hr />
			</div>
			<div class="abcd">
				<input type="submit" id="savebutton" value="다음" /> <input type="reset" value="취소"
					onclick="location='studio_main';" />
			</div>
		</form>
	</div>
</body>
</html>