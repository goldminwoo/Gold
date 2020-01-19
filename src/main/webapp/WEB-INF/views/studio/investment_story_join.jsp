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
      <form name="investmentStoryVO" method="post" action="${pageContext.request.contextPath}/studio/investment_story_join_ok"
         onsubmit="return join_check();" id="frm">
         <div class="abc">
            <textarea name="storyCont" id="storyCont">
               <p>필수 항목은 누락되거나 미비할 경우 오픈 승인이 어려우니 꼼꼼히 확인해주시고, 프로젝트의 특성에 맞게 자유롭게 배치해주세요.</p>
               <h1>1. 기업 소개</h1>
               <ul>
                  <li>“안녕하세요” 라는 인사와 함께 간단한 자기소개를 넣어주세요. 브랜드/팀명은 무엇이고, 이번 프로젝트에서 어떤 역할을 담당하는 지 소개해보세요.</li>
                  <li>메이커님의 얼굴을 확인할 수 있는 실물사진은 필수 항목입니다. 일러스트나 뒷모습, 얼굴이 가려진 사진은 사용 불가합니다.</li>
               </ul>
               <h1>2. 증권 발행 조권</h1>
               <ul>
                  <li>투자설명서에 기재된 신주의 배정방법에 따라, 미배정 혹은 투자금액의 일부에 대한 부분 배정이 될 수 있습니다.</li>
               </ul>
               <h1>3. 투자 소개와 상세정보</h1>
               <ul>
                  <li>투자의 이름은 무엇이고, 어떤 용도로 사용하는 제품/서비스인가요?</li>
                  <li>제품을 직접 보고 펀딩할 수 없기 때문에 서포터분들이 참고할 수 있는 사진, 영상과 같은 시각 자료를 넣어주세요.</li>
               </ul>
               <h1>4. 핵심 포인트</h1>
               <ul>
                  <li>투자자들의 대한 핵심 포인트를 투자자에게 소개해주시기 바랍니다.</li>
               </ul>
               <table>
                  <tr>
                     <th>구분</th><th>투자 주수</th><th>혜택</th>
                  </tr>
                  <tr>
                     <td>투자자 혜택 발송 시기:</td>
                     <td>투자자 혜택 발송 방법:</td>
                  </tr>
               </table>
               <h1>5. 투자자에게 한마디</h1>
               <p>투자자들에게 한마디 해주시기바랍니다.</p>
               
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