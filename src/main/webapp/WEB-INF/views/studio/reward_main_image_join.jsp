<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TREE FUNDING</title>
<link
   href="${pageContext.request.contextPath}/css/main_image_join.css"
   rel="stylesheet">
<link rel="shortcut icon"
   href="${pageContext.request.contextPath}/images/wel.jpg">
</head>
<body>
<%@include file="studio_main_header.jsp"%>
<%@include file="studio_main_category.jsp"%>
   <div id="open_wrap">
		<h2 class="pr">메인이미지 등록</h2>
		<form name="rewardMainImageVO" method="post" action="reward_main_image_join_ok"
			onsubmit="return join_check();" enctype="multipart/form-data">
			<table class="investment_list">
				<colgroup>
					<col style="width: 200px">
				</colgroup>
				<tbody>
					<tr class="t100">
						<th>메인이미지 선택</th>
						<td><input type="file" name="mainImageFile" /></td>
					</tr>
				</tbody>
			</table>
			<div class="investment_sub">
				<input type="submit" value="다음" /> <input
					type="reset" value="취소"
					onclick="location='studio_main';" />
			</div>
		</form>
	</div>
</body>
</html>