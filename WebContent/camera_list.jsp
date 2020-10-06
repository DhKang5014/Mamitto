<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	<%
	// db에서 가져올 리스트 들을 배열 형태로 저장
	ArrayList array[] = new ArrayList[5];
	int num = 0;
	%>
	function join_camera() {
		$('.join_camera').submit()
	}
</script>
</head>
<body>
	<form id="join_camera" action="join_camera.jsp" method="get"><button onclick="join_camera()">카메라 등록하기</button></form><br>
	
	<% if (array.length > 0) { %>
		<p>카메라 목록</p>
		<% for (int i = 0; i < array.length; i++) { %>
		<div>등록된 카메라 보여주기 -> 누를 경우 해당 카메라 실시간 영상 이동</div>
	<% }} else { %>
		<p>카메라를 등록 후 이용이 가능합니다.</p>
	<% } %>
</body>
</html>