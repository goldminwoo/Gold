<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TREE FUNDING</title>
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/css/message.css" />
<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
</head>
<body>
   <%@include file="../header.jsp"%>
   <div id="message">
      <h1>메시지</h1>
      <br />
      <p>메시지는 실시간 채팅이 아닙니다. 주기적으로 페이지를 새로고침하세요.&nbsp;</p>
      <div id="get_message">
         <p>관리자</p>
         <p>제목명</p>
         <p>보내는 메세지 입니다.</p>
         <font size="2"><em>2019-12-06 PM 15:20</em></font>
         <p class="cen">[이전]&nbsp;1&nbsp;2&nbsp;3&nbsp;4&nbsp;5&nbsp;[다음]</p>
      </div>
   </div>
   <br />
   <div id="message">
      <h1>뉴스레터</h1>
      <br />
      <p>뉴스레터는 주기적으로 기업들의 소식을 볼 수 있는 공간입니다.&nbsp;</p>
      <div id="get_message">
         <p>관리자</p>
         <p>제목명</p>
         <p>보내는 메세지 입니다.</p>
         <font size="2"><em>2019-12-06 PM 15:20</em></font>
         <p class="cen">[이전]&nbsp;1&nbsp;2&nbsp;3&nbsp;4&nbsp;5&nbsp;[다음]</p>
      </div>
   </div>
   <br />
   <%@include file="../footer.jsp"%>
</body>
</html>