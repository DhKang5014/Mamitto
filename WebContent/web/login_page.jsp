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
    <!-- title명칭 수정할 것 -->
    <title>mamiddo_login</title>
</head>
<body>
    <!-- 복사 -->
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
        <div id="content" class="page">
            <h1>Login</h1>
            <!-- 내용넣는곳 -->
            <form action="LoginServiceCon.do" class="login_con con">
                <div>
                    <label for="email">ID</label>
                    <input type="text" id='email' name='email' value="" ><br/>
                </div>
                <div>
                    <label for="pw">PW</label>
                    <input type="password" id='pw' name='pw' value="" >
                </div>
                <div class="login_btn_box">
                    <input type="submit" value="Join" class="btn">
                    <input type="submit" value="Login" class="btn">
               
                </div>
            </form>

        </div>
        <!-- footer -->
        <div id="footer">
    
        </div>
    </div>
</body>
</html>