<%@page import="com.DAO.selectDAO"%>

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
        <script src="script/script_commu.js"></script>
    <title>commu</title>
</head>
<body>
    <!-- content  -->
    <div id="bk">
        <!-- nav -->
		<%@ include file = "menu.jsp" %>
        <!-- content -->
        <div class="life_title">
            <a class="title"></a>
            <h1>커뮤니티</h1>
        </div>
        <div id="content" class="page commu">
            
            <br>
            <a  href="commu_write.jsp" class="commu_btn">글쓰기</a>
        </div>
        <!-- footer -->
        <div id="footer">
    		
        </div>
    </div>
</body>
</html>