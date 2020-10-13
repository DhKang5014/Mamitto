
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

    <!-- content  -->
    <div id="bk">
<%@ include file = "menu.jsp" %>
        <!-- nav -->
        <div id="main_header">
            <div class="left_icon">
                <div class="menu"><img src="../img/menu.png" width="50px"></div>
                <a href="index.jsp" class="logo"><img src="../img/logo.png" width="150px"></a>
            </div>
            <% if (email != null) { %>
            <div class="right_icon"><a href="my_page.jsp"></a></div>
            <%} else { %>
            <div class="right_icon"><a href="login_page.jsp"></a></div>
            <%} %>
        </div>
        <!-- content -->
        <div id="content" class="page video_con">
            <h1>육아생활</h1>
            <ul class="life_icon">
                <li><img src="../img/life1.png" alt="" width="80px"></li>
                <li><img src="../img/life2.png" alt="" width="80px"></li>
                <li><img src="../img/life3.png" alt="" width="80px"></li>
            </ul>
            <div class="alam life_con">
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
        <div id="footer">
    
        </div>
    </div>
</body>
</html>


