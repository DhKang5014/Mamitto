
<%@page import="java.sql.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.selectDAO"%>
<%@page import="com.model.master.DTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>In </title>
<!-- 핵심 Firebase JS SDK가 항상 필요하며 먼저 나열되어야합니다.--> 
<script src = "/ __ / firebase / 7.23.0 / firebase-app.js" > </script> 
<!-- TODO :      https://firebase.google.com/docs/web/setup#available-libraries --> 
<script src = "/__/firebase/7.23.0/firebase-analytics 를 사용하려는 Firebase 제품 용 SDK 추가 .js " > </script> 
<!--Firebase 초기화--> 
<script src = " / __ / firebase / init.js " > </script>
</head>
<body>
<% Cookie[] cookies = request.getCookies();
    String email = null;
    String baby_name = null;
    String baby_birth = null;
    String baby_birth_fifty = null;
    String baby_birth_hundred = null;
    String cam_ip = null;
    int rhy_meal = 0;
    ArrayList<DTO> dto_array = null;
    
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
    }
    
    DTO dto = new DTO(email);
    selectDAO dao = new selectDAO();
    // email값을 가지고 baby에 있는 내용들 DB접속해서 가져오기
    dto_array = dao.select(dto.getSql_login_baby(), email);
    try {
    	if (dto_array.size() > 0){
    	
    		for (int i=0; i<dto_array.size(); i++){
    			System.out.println(dto_array.get(i).getBaby_name());
    			System.out.println(dto_array.get(i).getBaby_birth());
    			System.out.println(dto_array.get(i).getBaby_birth_fifty());
    			System.out.println(dto_array.get(i).getBaby_birth_hundred());
    			System.out.println(dto_array.get(i).getCam_ip());
    	    	baby_name=dto_array.get(i).getBaby_name();
    	    	baby_birth = dto_array.get(i).getBaby_birth();
    	    	baby_birth_fifty = dto_array.get(i).getBaby_birth_fifty();
    	    	baby_birth_hundred = dto_array.get(i).getBaby_birth_hundred();
    	    	cam_ip = dto_array.get(i).getCam_ip();
   			}
  		}
    } catch (NullPointerException e) {
  		System.out.print(e);
  	}
    
    
    
	 %>
	<div class="menu_bar">
            <ul>
            <% if (email != null && email!= "") { %>
            	<li><a href="my_page.jsp"><%= email %>님</a></li>
			<%} else { %>
				<li><a href="login_page.jsp">로그인이 필요합니다.</a></li>
			<%} %>
            <% if (cam_ip != null && cam_ip != "") { %>
                <li><a href="video2.jsp">실시간 영상</a></li>
            <%} else { %>
                <li><a href="video.jsp">실시간 영상</a></li>
            <%} %>
                <li><a href="baby_life.jsp">육아생활</a></li>
                <li><a href="statistic.jsp">통계</a></li>
                <li><a href="history.jsp">History</a></li>
                <li><a href="commu.jsp">커뮤니티</a></li>
            <% if (email != null) { %>
            	<li><a id='logout' href="LogoutServiceCon.do">로그아웃</a></li>
            <%} %>
            </ul>
        </div>

</html>