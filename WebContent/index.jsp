<%@page import="com.model.master.DTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% Cookie[] cookies = request.getCookies();
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
            	break;
            }
        }
        
    }
	 %>
	 
	 <% if (email != null) { %>
	<div><%= email %>님 환영합니다.</div>
	<a id='login' href="LogoutServiceCon.do">logout</a>
	<%} else { %>
	<a id='login' href="login.jsp">login</a>
	<a id='join' href="join.jsp">join</a>
	<%} %>
	<a id='res_baby' href="join_baby.jsp">res_baby</a>
	<a id='res_camera' href="join_camera.jsp">res_camera</a>
</body>
</html>