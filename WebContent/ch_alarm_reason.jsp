<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>알람 사유 등록</p>
	<form action="index.jsp" method="get">
	<!-- 각 경우마다 미리 선택되어 있으면 더 편히 작성할 수 있을 듯 -->
		<input type="radio" id='baby_cry' name='alarm_reason' value="울음">울음
		<input type="radio" id='baby_reverse' name='alarm_reason' value="뒤집기">뒤집기
		<input type="radio" id='baby_danger' name='alarm_reason' value="위험">위험<br/>
		<p>내용 : <input type="text" id="content" name='content'></p>
		<p><input type="submit"></p>
	</form>
</body>
</html>