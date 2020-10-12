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
    <script src="script/script.js"></script>
    <title>baby_life</title>
</head>
<body>
	<% Cookie[] cookies = request.getCookies();
    String email = null;
    String baby = null;
    String cam_ip = null;
    if(cookies != null){
         
        for(int i=0; i < cookies.length; i++){
            Cookie c = cookies[i] ;
             
            // 저장된 쿠키 이름을 가져온다
            String cName = c.getName();
             
            // 쿠키값을 가져온다
            String cValue = c.getValue() ;
            if(cName.equals("email")) {
            	email = cValue;
            }else if(cName.equals("baby")) {
            	baby = cValue;
            }else if(cName.equals("cam_ip")) {
            	cam_ip = cValue;
            }
        }
    }
	 %>
    <!-- content  -->
    <div id="bk">
        <div class="menu_bar">
            <ul>
            <% if (email != null) { %>
            	<li><a href="my_page.jsp"><%= email %>님</a></li>
				<li><a id='login' href="LogoutServiceCon.do">로그아웃</a></li>
				<li><a id='res_baby' href="join_baby_page.jsp">아이 등록하기</a></li>
			<%} else { %>
				<li><a href="my_page.jsp">로그인이 필요합니다.</a></li>
				<li><a id='login' href="login_page.jsp">로그인</a></li>
				<li><a id='join' href="join_page.jsp">회원가입</a></li>
			<%} %>
                <% if (cam_ip != null) { %>
                <li><a href="video.jsp">실시간 영상</a></li>
                <%} else { %>
                <li><a href="video.jsp">카메라 등록하기</a></li>
                <%} %>
                <li><a href="baby_life.jsp">육아생활</a></li>
                <li><a href="statistic.jsp">통계</a></li>
                <li><a href="history.jsp">History</a></li>
                <li><a href="commu.jsp">커뮤니티</a></li>
            </ul>
        </div>
        <!-- nav -->
        <div id="main_header">
            <div class="left_icon">
                <div class="menu"><img src="../img/menu.png" width="50px"></div>
                <a href="index.jsp" class="logo"><img src="../img/logo.png" width="150px"></a>
            </div>
            <div class="right_icon"><a href="my_page.jsp"></a></div>
        </div>
        <!-- content -->
        <div id="content" class="page video_con">
            <h1>육아생활</h1>
            
        </div>
        <!-- footer -->
        <div id="footer">
    
        </div>
    </div>
</body>
</html>

