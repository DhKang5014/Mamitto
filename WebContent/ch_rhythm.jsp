<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="jquery-3.5.1.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	<%! String site; %>
</script>
</head>
<body>
<p>ch_rhythm Page</p>
<form action="index.jsp">
	<!-- db에 저장되어 있는 값을 가져와서 수정하도록 변경 / 각 생활패턴별로 별도 생성 -->
	<% if (site == "meal") { %>
			<input type="radio" id='life_meal_m' name='baby_meal' value="모유">모유<input type="radio" id='life_meal_f' name='baby_meal' value="분유">분유<br/>
	<% } else if (site == "poo") { %>
			<input type="radio" id='life_poo_big' name='baby_poo' value="대변">대변<input type="radio" id='life_poo_small' name='baby_poo' value="소변">소변<br/>
	<% } else if (site == "sleep") { %>
			<input type="radio" id='life_sleep_pm' name='baby_sleep' value="밤잠">밤잠<input type="radio" id='life_sleep_am' name='baby_sleep' value="낮잠">낮잠<br/>
	<% } else {%>
	
	<% } %>
	<label for="title">Title</label>
	<input type="text" id='title' name='title' value="" ><br/>
	<label for="content">Content</label>
	<input type="text" id='content' name='content' value="" ><br/>
	<label for="time">Time</label>
	<!-- 날짜랑 같이 수정? 아니면 일일은 그대로 사용하는지 확인 -->
	<input type="time" id='time' name='time' value="" ><br/>
	<input type="submit" value="join">
</form>
</body>
</html>