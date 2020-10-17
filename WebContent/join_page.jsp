<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 여기 복사 -->
    <!-- viewport,stylesheet -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <link rel="stylesheet" href="css/style.css">
    <!-- font -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <!-- script -->
    <script src="script/jquery-3.5.1.min.js"></script>
    <script src="script/script.js"></script>
    <!-- title명칭 수정할 것 -->
    <title>join_page</title>
</head>
<body>
    <!-- content  -->
    <div id="bk">
 <%@ include file = "menu.jsp" %>
        <!-- nav -->
        <div id="main_header">
            <div class="left_icon">
                <div class="menu"><img src="img/menu.png" width="50px"></div>
                <a href="index.jsp" class="logo"><img src="img/logo.png" width="150px"></a>
            </div>
             <% if (email != null) { %>
            <div class="right_icon"><a href="my_page.jsp"></a></div>
            <%} else { %>
            <div class="right_icon"><a href="login_page.jsp"></a></div>
            <%} %>
        </div>
        <!-- content -->
        <div id="content" class="page">
            <h1>Join</h1>
            <form action="JoinServiceCon.do" method='post' class="login_con join_con">
                <div>
                    <label for="email">ID</label>
                    <input type="text" id='email' name='email' value="" >
                </div>	
                <div>
                    <label for="pw">PW</label>
                    <input type="password" id='pw' name='pw' value="" >
                </div>
                <div>
                    <label for="name">NAME</label>
                    <input type="text" id='name' name='name' value="" >
                </div>
                <div>
                    <label for="age">AGE</label>
                    <input type="text" id='age' name='age' value="" >
                </div>
                <div>
                    <label for="tel" class="last_label">TEL</label>
                   <div class=tel>
                        <input type="text" id='tel1' name='tel1' value="" >
                        <span>ㅡ</span>
                        <input type="text" id='tel2' name='tel2' value="" >
                        <span>ㅡ</span>
                        <input type="text" id='tel3' name='tel3' value="" >
                   </div>
                </div>	
                <input type="submit" value="join" class="btn">
            </form>
        </div>

            
         
        </div>
        <!-- footer -->
        <div id="footer">
    
        </div>
    </div>
</body>
</html>