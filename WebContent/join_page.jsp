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
                        <div id="join_check_box">
                        	<input type="text" class="join_txt" id="email" name="email" placeholder="이메일을 입력해주세요.">
							<a class="btn btn_color"  id="check_btn">중복확인</a>
                        </div>
                        <span class="join_check join_mg" id="id_check">*이메일 형식으로 입력</span>
                        <span class="join_check join_mg" id="id_check_on">*사용가능 합니다.</span>
                        <span class="join_check join_mg" id="id_check_off">*이미 가입된 이메일 입니다.</span>
                        <input type="password" class="join_txt" id="pw" name="pw" placeholder="비밀번호를 입력해주세요." pattern=".{6,8}" required>
                        <span class="join_check join_mg pw_check" id="pw_check">*6~8자리 영문, 숫자 입력 가능합니다.</span>
            			<span class="join_check join_mg pw_check" id="pw_check_on">*사용 가능합니다.</span>
                        <span class="join_check join_mg pw_check" id="pw_check_off">*비밀번호를 다시 입력해 주세요.</span>
                        <input type="text" class="join_txt join_mg" id="name" name="name" value="" placeholder="이름을 입력해주세요.">
                        <input type="number" class="join_txt join_mg" id="age" name="age" value="" placeholder="나이를 선택해주세요">
                        <input type="text" class="join_txt join_mg" id="tel" name="tel" value="" placeholder="휴대폰번호를 입력해주세요">
                    </div>
                    <div>
                        <input type="submit" value="회원가입 완료" class="btn btn_colorline">
                    </div>
                </form>
            </div>
        </div>
    </div>
        <script type="text/javascript">
    $("#check_btn").on("click",function(){
		  console.log("check_btn");
		  $('#id_check').css('display','none');  // 기존에 있던 이메일 형식부분 안보이게 
		check();   //script의 check 기능 실행
	});

    </script>
</body>
</html>