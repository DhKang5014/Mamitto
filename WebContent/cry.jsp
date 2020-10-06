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
	function crying() {
		$('this').submit()
	}
</script>
</head>
<body>
	<p>울음소리 영상 및 사진첩??</p>
	<!-- 일자 먼저 나오고 그 뒤로 나온 시간 순으로 역순정렬필요 -->
	<% for (int i=0; i<array.length; i++){ %>
		<!-- 가져온 리스트에서 시간 먼저 출력 array[i].getTime() -->
		<p>날짜</p>
		<% while (num < array.length) {%>
			<!-- 가져온 리스트에서 일자별알람내역 출력 array[i].getContent-->
			<form action="cry.jsp" id="cry<%=num %>" method="get" onclick="crying()" >
				<div id="number">울음소리 누르면 재생부분으로(재생없음)</div>
			</form><br>
	<% num += 1; }} %>
</body>
</html>