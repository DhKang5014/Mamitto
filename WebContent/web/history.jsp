<%@page import="com.DAO.selectDAO"%>
<%@page import="com.model.master.DTO"%>
<%@page import="java.util.ArrayList"%>
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
    <title>History</title>
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
            <div class="right_icon"><a href="my_page.jsp"></a></div>
        </div>
        <!-- content -->
        <div id="content" class="page video_con">
            <h1>History</h1>
            <div class="alam">
                <!-- 알람 팝업메세지 -->
                <ul>
                    <!-- icon_size: 30x30 -->
                    <li><a class="alam_icon"></a>2020. 10.10 알람</li>
                    <li><a class="alam_icon"></a>2020. 10.11 알람 </li>
                </ul>
            </div>
        </div>
        <!-- footer -->
        <div id="footer">
    
        </div>
    </div>
</body>
</html>
