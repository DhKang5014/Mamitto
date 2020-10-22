<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <link rel="stylesheet" href="css/style_sh.css">
    <!-- font -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <script src="script/jquery-3.5.1.min.js"></script>
    <script src="script/script_sh.js"></script>
    <title>fail</title>
</head>
<body>
	<%Cookie[] cookies = request.getCookies();
	String email = null;
	
    if(cookies != null){
        
        for(int i=0; i < cookies.length; i++){
            Cookie c = cookies[i] ;
             
            // 저장된 쿠키 이름을 가져온다
            String cName = c.getName();
             
            // 쿠키값을 가져온다
            String cValue = c.getValue() ;
            if(cName.equals("email")) {
            	email = cValue;
            }
        }
    } %>
    <div class="bg">
        <div id="benner">
        </div>
        <div id="content">
            <div>
                <a href="#"></a>
                <br>
                <br>
                <h2>실패 하였습니다.</h2>
                <br>
            </div>
            <div>
            	<% if (email != null && email!= "") { %>
            	<form action="index.jsp" class="login_box">
					<div>
                        <input type="submit" value="메인페이지 이동" class="btn">
                    </div>
				</form>
				<%} else { %>
				<form action="login_page.jsp" class="login_box">
					<div>
                        <input type="submit" value="로그인페이지 이동" class="btn">
                    </div>
				</form>
				<%} %>   
            </div>
        </div>
        <div id="footer" class="ft_height2">
            <span>(주) Future I Zation</span>
            <br>
            <br>
            <span>만든 사람들</span>
            <br>
            <spna>강다훈, 이태민, 최웅식, 조규범, 정세희</spna>
        </div>
    </div>
	
	
</body>
</html>