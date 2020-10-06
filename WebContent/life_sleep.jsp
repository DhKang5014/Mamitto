<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>수면시간 등록</p>
	<!-- 눌렀을 때 내용 입력 없이 바로 시간측정 -> 이 때 취침중으로 등록버튼이 바뀌고 다시 누르면 취침해제 후 등록 가능?? -->
	<form action="rhythm.jsp" method="get">
		<input type="radio" id='life_sleep_pm' name='baby_sleep' value="밤잠">밤잠<input type="radio" id='life_sleep_am' name='baby_sleep' value="낮잠">낮잠<br/>
		<p>제목 : <input type="text" id="title"></p>
		<p>내용 : <input type="text" id="content"></p>
		<p><input type="submit"></p>
	</form>
</body>
</html>