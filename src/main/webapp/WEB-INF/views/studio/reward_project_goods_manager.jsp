<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TREE FUNDING</title>
<link href="${pageContext.request.contextPath}/css/reward_project_goods.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/js/jquery.js" rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath}/js/reward_project_goods.js" type="text/javascript" ></script>
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<%-- 날짜 불러오는 jquery --%>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
</head>
<body>
   <%@include file="studio_main_header.jsp"%>
   <%@include file="studio_main_category.jsp"%>
   <div id="open_wrap">
      <h1 class="pr">리워드 상품 관리</h1>
      <form name="m" method="post" action="member_join_ok"
         onsubmit="return goods_check();">
         <div class="page">
            <input type="button" value="항목추가" class="bt"
               onclick="addKeywordForm();" />
         </div>
            <table class="investment_list">
               <caption>1번째 상품</caption>
               <tr class="t100">
                  <th>상품명</th>
                  <td><input type="text" id="productName" name="productName" readonly/></td>
                  <th>수량</th>
                  <td><input type="text" id="ea" name="ea" readonly /></td>
               </tr>
               <tr class="t100">
                  <th>정가</th>
                  <td><input type="text" id="price" name="price" 
                  value="" onchange="click_in(op)" /></td>
                  <th>SALE(%)</th>
                  <td><input type="text" id="sale" name="sale" 
                  value="" onchange="click_in(op)" /></td>
               </tr>
               <tr class="t100">
                  <th>세일가</th>
                  <td><input type="text" id="salePrice" name="salePrice" 
                  readonly="readonly"/></td>
                  <th>발송 예정일</th>
                  <td><input type="text" id="sdate" name="sdate" readonly/></td>
               </tr>
            </table>
         <div id="add"></div>
         <div class="investment_sub">
            <input type="submit" value="확인" />
         </div>
      </form>
   </div>
</body>
</html>