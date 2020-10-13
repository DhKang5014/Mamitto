
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
    <title>video</title>
</head>
<body>
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
            <h1>실시간 영상</h1>
            <form action="JoinCameraServiceCon.dot">
                <div  class="video_input">
                    <label for="name">IP</label>
                    <input type="number" id='ip_num' name='ip_num' value="" >   
                </div>
                <input type="submit" value="입력" class="btn my_btn">
            </form>
            <h4>ip주소를 등록해 주세요.</h4>
            
            <!-- 아이디가 등록되어 있으면 등록한 ip주소가 나오게 리스트업 -->
        </div>
        <!-- footer -->
        <div id="footer">
    
        </div>
    </div>
</body>
</html>