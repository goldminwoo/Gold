<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>TREE FUNDING</title>

  <!-- Bootstrap core CSS -->
  <link href="${pageContext.request.contextPath}/css/reward_main.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="${pageContext.request.contextPath}/css/reward_main_style.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/reward_main_header_style.css" rel="stylesheet">
</head>

<body>
<%@include file="../header.jsp" %>
<%@include file="reward_main_header.jsp" %>

  <!-- Page Content -->
  <div class="container">
<!--   <table class="divi">
  	<tr>
  		<th><button type="button" class="btn-20">진행중인 리워드</button></th>
  		<th><button type="button" class="btn-20">오픈 예정인 리워드</button></th>
  		<th><button type="button" class="btn-20">완료된 리워드</button></th>
  	</tr>
  </table>
  <table class="cate">
  	<tr>
  		<th><button type="button" class="btn-2">테크·가전</button></th>
  		<th><button type="button" class="btn-2">테크·가전</button></th>
  		<th><button type="button" class="btn-2">뷰티</button></th>
  		<th><button type="button" class="btn-2">패션·잡화</button></th>
  		<th><button type="button" class="btn-2">푸드</button></th>
  		<th><button type="button" class="btn-2">디자인 소품</button></th>
  		<th><button type="button" class="btn-2">스포츠</button></th>
  	</tr>
  </table> -->
    <!-- Page Features -->   
    <div class="row2 text-center">   
      <c:forEach var="app" items="${approvedReward}" varStatus="status">
      <div class="col-lg-3 col-md-6 mb-4">
        <div class="card h-100">
        <form name="story" method="post" action="${pageContext.request.contextPath}/reward/rewardStory">
        <input type="hidden" name="rewardTotalProjectNo" value="${app.rewardTotalProjectNo }"/>
        <c:set var="app2" value="${RewardMainImage[status.index]}" />        
          <img class="card-img-top" src="${pageContext.request.contextPath}/resources/upload/${app2}" alt="" height="150">
          <div class="card-body">
            <h4 class="card-title">${app.projectName }</h4>
            <p class="card-text">${app.companyName }</p>
            <%-- <input type="button" class="bbbb">관심등록<img src="${pageContext.request.contextPath}/images/mypage/heartlike.png"
            class="button_up${status.index} }" disabled="" style="cursor:pointer"><input type="text" name="likecount" value="0" class="likecount"> --%>
            <br/>
          </div>
          <div class="card-footer">
            <input type="submit" id="theSearch" value="더 알아보기!" />
            </form>
          </div>
        </div>
      </div>
</c:forEach>
<%--   <table class="t3">
  	<tr>
  		<th><a href="#">[이전]</a></th>
  		<th><a href="#">1</a></th>
  		<th><a href="#">2</a></th>
  		<th><a href="#">3</a></th>
  		<th><a href="#">4</a></th>
  		<th><a href="#">5</a></th>
  		<th><a href="#">[다음]</a></th>
  		페이지 th 패딩(마진)주기
  	</tr>
  </table> --%>
 <!--  <table class="t4">
  	<tr>
  		<th>검색어:</th>
  		<td><input type="text" />
  	</tr>
  </table> -->
    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->

  <!-- Bootstrap core JavaScript -->
  <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
<%@include file="../footer.jsp" %>
</body>

</html>
