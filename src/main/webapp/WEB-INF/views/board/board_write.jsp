<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TREE FUNDING</title>
<link href="${pageContext.request.contextPath}/css/all.min.css"
   rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/board_write.css"
   rel="stylesheet" />
<script
   src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script>
   $(function() {
      var responseMessage = "<c:out value="${message}" />";
      if (responseMessage != "") {
         alert(responseMessage)
      }
   })
</script>
</head>
<body>
   <%@include file="../header.jsp"%>
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
                        elPlaceHolder : "editor",
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
                        obj.getById["editor"].exec(
                              "UPDATE_CONTENTS_FIELD", []);
                        //폼 submit
                        $("#frm").submit();
                     })
            })
   </script>
   <div id="board_area">

      <form action="${pageContext.request.contextPath}/board/insert"
         method="post" id="frm">

         <table class="write-table">
            <tr>
               <td width="50">제목</td>
               <td><input type="text" name="title" size="103"></td>
            </tr>
            <tr>
               <td align="center" width="50">내용</td>
               <td width="800"><textarea name="editor" id="editor" rows="10"
                     cols="100" style="width: 766px; height: 412px;"></textarea></td>
            </tr>
            <tr class="writeBtn">
               <td colspan="2"><input type="submit" id="savebutton" value="작성" style="cursor:pointer;">
               <input type="button" id="listbutton" value="목록"
                  onclick="location='/treeproject/board/list';" style="cursor:pointer;"></td>
            </tr>
         </table>
      </form>

   </div>


   <%@include file="../footer.jsp"%>
   <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>

</body>
</html>