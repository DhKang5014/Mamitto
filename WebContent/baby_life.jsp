
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 여기 복사 -->
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, user-scalable=no">
<link rel="stylesheet" href="css/style.css">
<!-- font -->
<link
	href="http://fonts.googleapis.com/earlyaccess/nanumgothiccoding.css"
	rel="stylesheet">
<script src="script/jquery-3.5.1.min.js"></script>
<script src="script/script_sh.js"></script>
<script src="script/script.js"></script>
<script src="script/redirect_login.js"></script>
<title>baby_life</title>
</head>
<body>
	<!-- content  -->
	<div id="bk">
		<!-- nav -->
		<%@ include file="menu.jsp"%>
		<!-- content -->
		<div id="content" class="video_con">
			<div class="life_title_box">
				<div>
					<a class="title"></a>
					<h1>육아리듬 체크</h1>
					<hr class="life_hr">
				</div>
				<ul class="life_icon">
					<li><img src="img/new_life1.png" alt="" width="80px"></li>
					<li><img src="img/new_life2.png" alt="" width="80px"></li>
					<li><img src="img/new_life3.png" alt="" width="80px"></li>
				</ul>
			</div>
			<div class="alam life_con page">
				<!-- 알람 팝업메세지 -->
				<h4 id="date"></h4>
				<ul class="life_list">
					<!-- icon_size: 30x30 -->
					<!-- <li class="life_remove">  
                        <span>PM 1:00 식사</span> 
                        <span class="test4"><a class="alam_icon"></a></span>
                    </li> -->
				</ul>
			</div>
		</div>
		<!-- footer -->
		<div id="footer"></div>

		<!-- ------------------------------------------------------------------ -->
		<div class="defe_bg">
			<div class="defe_con">
				<h2>배변</h2>
				<forms> <label>많다</label> <input type="radio" name="volume"
					value="많다"> <label>보통</label> <input type="radio"
					name="volume" value="보통"> <label>적다</label> <input
					type="radio" name="volume" value="적다"> <input type="submit"
					value="입력" class="btn btn_color_linear" onclick="defe_bg_save()">
				</forms>
			</div>
		</div>

		<div class="meal_bg">
			<div class="meal_con">
				<h2>수유</h2>
				<forms> 
					<label>수유</label> 
					<input type="number" name="mL" value="" id="mL"> 
					<label>mL</label> 
					<input type="submit" value="입력" class="btn btn_color_linear" onclick="meal_bg_save()">
				</forms>
			</div>
		</div>
		
		<div class="sleep_bg">
			<div class="sleep_con">
				<h2>수면시간 설정</h2>
				<forms> <label>시작시간</label> <input type="datetime-local" name="time1"
					value="">
				<br>
				<label class="sleep_lb">끝시간</label> <input type="datetime-local" name="time2" value="">
				<input type="submit" value="입력" class="btn btn_color_linear"  id="sleep_btn"
					onclick="sleep_bg_save()"> </forms> 
			</div>
		</div>



	</div>
	<script>
        $(function(){
        $.today()
    });
    </script>
</body>
</html>

