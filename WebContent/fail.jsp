<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
	<p>오류가 발생했습니다. 확인 후 다시 접속해주십시요</p>
	
	<% if (email != null && email!= "") { %>
	<a href="index.jsp">홈으로</a>
	<%} else { %>
	<a href="login_page.jsp">로그인페이지</a>
	<%} %>
</body>
</html>