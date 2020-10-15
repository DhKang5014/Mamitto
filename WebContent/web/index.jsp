

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <link rel="stylesheet" href="css/style.css">
    <!-- font -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <script src="script/jquery-3.5.1.min.js"></script>
    <script src="script/script_sh.js"></script>
    <title>mamiddo</title>
</head>
<body>
	<%@ include file = "menu.jsp" %>
    <!-- open -->
    <div class="open">
        <ul>
            <li class="open1"></li>
            <li class="open2"></li>
            <li class="open3"></li>
        </ul>
    </div>
    <!-- content  -->
    
    <div id="bk">
        <!-- nav -->
        <div id="main_header">
            <div class="left_icon">
                <div class="menu"><img src="../img/menu.png" width="50px"></div>
                <a href="#" class="logo"><img src="../img/logo.png" width="150px"></a>
            </div>
            <% if (email != null && email!= "") { %>
            <div class="right_icon"><a href="my_page.jsp"></a></div>
            <%} else { %>
            <div class="right_icon"><a href="login_page.jsp"></a></div>
            <%} %>
        </div>
        <!-- content -->
        <div id="content">
            <div class="meno">
                <!-- baby img -->
                <div></div>
    			<div></div> 
            </div>
            <div class="meno_con my_baby">
            <% if (email != null && email!= "") { %>
                <h4>기념일</h4>
                <ul class="my_day">
                    <li>D+50</li>
                    <li>2020. 11. 23 (월)</li>
                </ul>
                <ul class="my_day">
                    <li>D+100</li>
                    <li>2020. 01. 12 (화)</li> 
                </ul>
            </div>
            <div class="meno_con today">
                <h4>Today List</h4>
                <ul class="my_day">
                    <li>식사</li>
                    <li>n회</li>
                </ul>
                <ul class="my_day">
                    <li>취침</li>
                    <li>n회</li>
                </ul>
                <ul class="my_day">
                    <li>배변</li>
                    <li>n회</li>
                </ul>
            <%} %>
            </div>
        </div>
        <!-- footer -->
        <div id="footer">
    
        </div>
    </div>
</body>
</html>