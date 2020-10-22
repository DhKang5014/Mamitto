<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <link rel="stylesheet" href="css/style_sh.css">
    <!-- font -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <script src="script/jquery-3.5.1.min.js"></script>
    <script src="script/script_sh.js"></script>

    <title>login</title>
</head>
<body>
	<div id="open">
        <img src="img/open2.png" width="100%">
    </div>
    <div class="bg">
        <div id="benner">
        </div>
        <div id="content">
            <div>
                <a href="#"></a>
                <h2>로그인</h2>
            </div> 
            <div>
                <form action="LoginServiceCon.do" method="post" class="login_box">
                    <div class="form_box">
                        <input type="text" id="email" name="email" value="" placeholder="아이디를 입력해주세요.">
                        <input type="text" id="pw" name="pw" value="" placeholder="비밀번호를 입력해주세요.">
                    </div>
                    <div>
                        <input type="submit" value="로그인" class="btn">
                        <a href="join_page.jsp" class="btn a_btn">회원가입</a>
                    </div>
                </form>
            </div>
        </div>
        <div id="footer" class="ft_height">
            <span>(주) Future I Zation</span>
            <br>
            <br>
            <span>만든 사람들</span>
            <br>
            <span>강다훈, 이태민, 최웅식, 조규범, 정세희</span>
        </div>
    </div>
</body>
</html>