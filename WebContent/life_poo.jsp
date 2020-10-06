<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>배변시간 등록</p>
	<form action="rhythm.jsp" method="get">
		<input type="radio" id='life_poo_big' name='baby_poo' value="대변">대변<input type="radio" id='life_poo_small' name='baby_poo' value="소변">소변<br/>
		<p>제목 : <input type="text" id="title"></p>
		<p>내용 : <input type="text" id="content"></p>
		<p><input type="submit"></p>
	</form>
</body>
</html>