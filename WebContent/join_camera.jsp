<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>카메라 등록하기</p>
	<!-- 등록 후 바로 등록된 카메라로 이동하면 좋을 듯 -->
	<form id="camera_ip" action="JoinCameraServiceCon.dot" method="post">
		<p>아이의 이름을 입력해주세요</p>
		<input type="text" name="baby_name" id="baby_name"><br>
		<p>할당된 IP 번호를 입력해주세요</p>
		<input type="text" name="ip" id="ip"><br>
		<input type="submit" value="카메라 IP 연결">
	</form>
</body>
</html>