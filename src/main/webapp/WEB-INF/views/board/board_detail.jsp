<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TREE FUNDING</title>
<link href="${pageContext.request.contextPath}/css/board_detail.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/all.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/freelancer.min.css"
	rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/board_detail.js"></script>
</head>
<body>
	<%@include file="../header.jsp"%>
	<div id="out">
		<div id="in">

			<div id="title">
				<p>제목:</p>
				<b>${boardVO.title}</b> <em>조회수:&nbsp;${boardVO.hitCount}</em>
			</div>

			<div id="id">
				<p>아이디:${boardVO.id}</p>
				<div id="date">
					<em>작성일:${boardVO.writeDate}</em>&nbsp;&nbsp;<em>수정일:${boardVO.modifiedDate}</em>
					<!-- <br/><a onclick="#">신고하기</a> -->
				</div>
			</div>

			<div id="detail">
				<pre>${boardVO.editor}</pre>
			</div>

		</div>
		<div id="buttons">
			<input type="button" value="목록" onclick="location='list';"
				id="boardList" style="cursor: pointer">
			<%-- 로그인 했을때만 수정, 삭제버튼 생성 --%>
			<c:if test="${!empty writer }">
				<form name="modifiyBoard"
					action="${pageContext.request.contextPath}/board/modifyBoard"
					method="post">
					<input type="hidden" name="no" value="${boardVO.no}">
					<input type="hidden" name="page" value="${page}">
					<input type="submit" value="수정" id="boardEdit"
						style="cursor: pointer">
				</form>
				<form name="delete"
					action="${pageContext.request.contextPath}/board/deleteBoard"
					onsubmit="return deleteBoardConfirm();" method="post">
					<input type="hidden" name="no" value="${boardVO.no}"> <input
						type="submit" value="삭제" id="boardDel" style="cursor: pointer">
				</form>
			</c:if>
		</div>
		<div id="inReply">
			<c:if test="${!empty replyId }">
				<form action="${pageContext.request.contextPath}/board/insertReply"
					name="insertReply" method="post">
					<div id=reply_detail>
						<input type="text" name="content" id="content"
							placeholder="댓글을 작성해주세요"> <input type="hidden" name="id"
							value="${replyId}"> <input type="hidden" name="boardNo"
							value="${boardVO.no}"> <input type="hidden" name="page"
							value="${page}"> <input type="submit" value="댓글작성"
							style="cursor: pointer">
					</div>
				</form>
			</c:if>
			<div id="reply">
				<c:if test="${!empty replyVOList}">
					<c:forEach var="list" items="${replyVOList}">
						<p class="replyId">
							작성ID:${list.id}
							<c:if test="${list.id == id }">
								<form name="delete"
									action="${pageContext.request.contextPath}/board/deleteReply"
									onsubmit="return deleteReplyConfirm();" method="post">
									<input type="hidden" name="no" value="${list.no}"> <input
										type="hidden" name="boardNo" value="${boardVO.no}"> <input
										type="hidden" name="page" value="${page}"> <input
										type="submit" value="x" id="replyDel">
								</form>
							</c:if>
						</p>
						<%--${Reply.id} --%>
						<p class="replyCont">${list.content}</p>
						<hr />
						<%--${Reply.cont} --%>
					</c:forEach>
				</c:if>
			</div>

		</div>
	</div>

	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>

	<%@include file="../footer.jsp"%>
</body>
</html>