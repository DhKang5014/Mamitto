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
<!-- 시각화 통계자료 alert형식으로 보일지(submit 불필요?) 아니면 다른 페이지에 그릴지 -->
	function toilet_search() {
		$('.toilet_search').submit()
	}
	function meal_search(){
		$('.meal_search').submit()
	}
	function sleep_search(){
		$('.sleep_search').submit()
	}
	function total_search(){
		$('.total_search').submit()
	}
</script>

<body>
	<p>생활리듬 통계표</p>
	<!-- 온도습도 추가관련 확인 -->
	<form id='toilet_search' class="toilet_search" action="total_rhythm.jsp" method="get"><button type="button" id='btn_ts' onclick="toilet_search()" >배변시간 통계</button> </form>
	<form id='meal_search' class="meal_search" action="total_rhythm.jsp" method="get" ><button type="button" id='btn_ms' onclick="meal_search()">식사시간 통계</button></form>
	<form id='sleep_search' class="sleep_search" action="total_rhythm.jsp" method="get" ><button type="button" id='btn_ss' onclick="sleep_search()">취침시간 통계</button></form>
	<form id='total_search' class="total_search" action="total_rhythm.jsp" method="get" ><button type="button" id='btn_tts' onclick="total_search()">total 통계</button></form>

</body>
</html>