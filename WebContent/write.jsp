<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>게시글 작성</p>
	<p>현재 날짜</p>
	<form action="community.jsp" method="get">
	<!-- 각 경우마다 미리 선택되어 있으면 더 편히 작성할 수 있을 듯 -->
		<input type="file">사진 미리보기 작업 필요
		<p>제목 : <input type="text" id="title" name='title'></p>
		<p>내용 : <input type="text" id="content" name='content'></p>
		<p><input type="submit"></p>
	</form>
</body>
</html>