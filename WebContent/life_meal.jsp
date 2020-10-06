<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>식사시간 등록</p>
	<form action="rhythm.jsp" method="get">
		<input type="radio" id='life_meal_m' name='baby_meal' value="모유">모유<input type="radio" id='life_meal_f' name='baby_meal' value="분유">분유<br/>
		<p>제목 : <input type="text" id="title"></p>
		<p>내용 : <input type="text" id="content"></p>
		<p><input type="submit"></p>
	</form>
</body>
</html>