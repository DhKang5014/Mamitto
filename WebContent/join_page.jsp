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

    <title>join</title>
</head>
<body>
    <div class="bg">
        <div id="benner">
        </div>
        <div id="content">
            <div>
            <!-- a 태그 로고작업예정 -->
                <a href="#"></a>
            	<h2>회원가입</h2>
            </div>
            <div>
                <form action="JoinServiceCon.do" method="post" class="login_box">
                    <div class="form_box">
                        <input type="text" id="email" name="email" value="" placeholder="아이디를 입력해주세요.">
                        <input type="password" id="pw" name="pw" value="" placeholder="비밀번호를 입력해주세요.">
                        <input type="text" id="name" name="name" value="" placeholder="이름을 입력해주세요.">
                        <input type="text" id="age" name="age" value="" placeholder="나이를 선택해주세요">
                        <input type="text" id="tel" name="tel" value="" placeholder="휴대폰번호를 입력해주세요">
                    </div>
                    <div>
                        <input type="submit" value="회원가입 완료" class="btn">
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>