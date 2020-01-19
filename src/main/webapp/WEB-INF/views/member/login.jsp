<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TREE FUNDING</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/login.css">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script>
    $(function(){
        var responseMessage = "<c:out value="${message}" />";
        if(responseMessage != ""){
            alert(responseMessage)
        }
    }) 
</script>

</head>
<body>
	<%@ include file="find_header.jsp"%>
	<div id=wrap>
		<form action="${pageContext.request.contextPath}/member/loginCheck"
			method="post">
			<table>
				<caption>로그인</caption>
				<tr>
					<td>
						<div class="list_login_form">
							<input type="radio" name="businessType" value="개인회원" checked = "checked"/>개인회원 <input
								type="radio" name="businessType" value="개인사업자" />개인사업자 <input
								type="radio" name="businessType" value="법인사업자" />법인사업자
						</div>
						<h3 class="id_pwd">아이디</h3>
					</td>
				</tr>

				<tr>
					<td><input type="text" name="id" id="id" size="20" /></td>
				</tr>

				<tr>
					<td>
						<h3 class="id_pwd">비밀번호</h3>
					</td>
				</tr>

				<tr>
					<td><input type="password" name="password" id="pwd" size="20" />
					</td>
				</tr>

				<tr>
					<td><a href="${pageContext.request.contextPath}/member/findId">아이디/비번
							찾기</a></td>
				</tr>
				<tr>
					<th><input type="submit" id="button" value="로그인" /></th>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>