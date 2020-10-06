<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>커뮤니티 등록 글</p>
	<div>등록 사진</div>
	<p>제목 : </p>
	<p>작성자명 : </p>
	<p>내용 : </p>
	<form action="community.jsp" method="get"><input type="submit" value="홈으로"></form>
	<!-- for문으로 등록된 댓글 가져오기 -->
	<p>등록 댓글</p>
	<p>댓글 제목 : </p>
	<p>댓글 내용 : </p>
	<form action="community_write.jsp" method="get">
		<p>댓글 제목 : <input type="text" id="title"></p>
		<p>댓글 작성자명 : <input type="text" id="id"></p>
		<p>댓글 내용 : <input type="text" id="content"></p>
		<input type="submit" value="댓글 등록하기">
	</form>
	
</body>
</html>