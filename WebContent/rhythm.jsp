<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="jquery-3.5.1.min.js"></script>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<script type="text/javascript">
<!-- 업로드 부분 추가필요 / 업로드 후 등록 전 페이지로 이동 -->
	function toilet_upload() {
		$('.toilet_upload').submit()
	}
	function meal_upload(){
		$('.meal_upload').submit()
	}
	function sleep_upload(){
		$('.sleep_upload').submit()
	}
</script>

<body>
	<p>우리아이 생활리j듬</p>
	<form id='toilet_upload' class="toilet_upload" action="rhythm.jsp" method="get"><button type="button" id='btn_tu' onclick="toilet_upload()" >배변시간 등록하기</button> </form>
	<form id='meal_upload' class="meal_upload" action="rhythm.jsp" method="get" ><button type="button" id='btn_mu' onclick="meal_upload()">식사시간 등록하기</button></form>
	<form id='sleep_upload' class="sleep_upload" action="rhythm.jsp" method="get" ><button type="button" id='btn_su' onclick="sleep_upload()">취침시간 등록하기</button></form>
</body>
</html>