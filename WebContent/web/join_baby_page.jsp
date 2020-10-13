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
    <title>join_baby_page</title>
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
        <div id="content" class="page">
            <h1> 우리아기 등록하기 </h1>
            <form action="JoinBabyServiceCon.dot" class="login_con join_con">
                <div>
                    <label for="name">NAME</label>
                    <input type="text" id='baby_name' name='baby_name' value="" ><br/>
                </div>
                <div>
                    <label for="age">BIRTH</label>
                    <input type="date" id='baby_age' name='baby_age' value="" ><br/>
                </div>
                <div>
                    <label for="gender">GENDER</label>
                    <div class="baby_h3 baby_h3_top">
                        <h3>남자 아이</h3>
                        <input type="radio" id='baby_gender_man' name='baby_gender' value="남자">    
                    </div>
                    <div class="baby_h3">
                        <h3>여자 아이</h3>
                        <input type="radio" id='baby_gender_woman' name='baby_gender' value="여자">	
                    </div>
                </div>    
                <input type="submit" value="Done" class="btn">
            </form>
        </div>
        <!-- footer -->
        <div id="footer">
    
        </div>
    </div>
</body>
</html>