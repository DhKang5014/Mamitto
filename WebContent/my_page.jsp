
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 여기 복사 -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <link rel="stylesheet" href="css/style.css">
    <!-- font -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <script src="script/jquery-3.5.1.min.js"></script>
    <script src="script/script_sh.js"></script>
    <script src="script/redirect_login.js"></script>
    <title>my_page</title>
</head>
<body>
    <!-- content  -->
    <div id="bk">
        <!-- nav -->
		<%@ include file = "menu.jsp" %>
		
        <!-- content -->
        <div class="life_title_box">
            <a class="title"></a>
            <h1>내 아이 성장기록</h1> 
            <div class="photo"><img src="img/photo.png" width="150px"></div>
        </div>
        
        <div id="content" class="page my_page">
        <form action="LogoutServiceCon.do" class="login_con join_con">
                <input type="submit" value="로그아웃" class="btn my_btn btn_color_linear">
            </form>
            <div class="my">
                <h3 id="baby_name"><%=baby_name%></h3>
            </div>
            <!--  -->
            <!-- action 값 조율필요 -->
            <!--  -->
            
            
	            <div class="my_baby">
	                <div class="my_day">
	                    <h4>성장</h4>
	                    <h4 class="popup"><a>수정하기</a></h4>
	                </div>
	                <ul class="my_day">
	                    <li>키(Cm)</li>
	                    <li id="height"><%=height %>Cm</li>
	                </ul>
	                <ul class="my_day">
	                    <li>몸무게(Kg)</li>
	                    <li id="weight"><%=weight %>Kg</li>
	                </ul>
	            </div>
            
            <div class="my_baby">
                <div class="my_day">
                    <h4>아기 기념일</h4>
                    <h4><a href="#">더보기</a></h4>
                </div>
                <ul class="my_day">
                    <li>D+50</li>
                    <li id="d50"><%=baby_birth_fifty %></li>
                </ul>
                <ul class="my_day">
                    <li >D+100</li>
                    <li id="d100"><%=baby_birth_hundred %></li>
                </ul>
            </div>
            <div class="mom">
                <h4>양육자 이메일</h4>
                <h5 id="email"><%=email%></h5>
            </div>
            <!--  -->
            <!-- action 값 조율필요 -->
            <!--  -->
            <form action="join_baby_page.jsp" class="login_con join_con">
                <input type="submit" value="아이추가" class="btn my_btn">
            </form>
            <div class="my_footer"></div>
        </div>
        <div class="pop_bg">
            <div>
                <h2>성장 수정하기</h2>
                <form action="BodyCheckServiceCon.do" method="post">
                    <div>
                        <label for="height">키(Cm)</label>
                        <input type="text" value="<%=height %>" name="height" class="pop_con1">
                    </div>
                    <div>
                        <label for="weight">몸무게(Kg)</label>
                        <input type="text" value="<%=weight %>" name="weight" class="pop_con2">
                    </div>
                    <input type="submit" value="수정" class="btn my_btn">
                </form>
            </div>
        </div>
    </div>
    <script>
    	if($('#baby_name').text() == "null"){
    		console.log($('#baby_name').text());
    		$('.my_baby').css('display','none');
    		$('#baby_name').text('아이를 등록해 주세요');
    	}else{
    		$('#baby_name').text($('#baby_name').text()+ ' 아이');
    	}
    	if($('#email').text()=='null'){
    		$('#email').text('로그인을 먼저해 주세요.');
    	}
    </script>
</body>
</html>