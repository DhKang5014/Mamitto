
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
</head>
<body>
<% Cookie[] cookies = request.getCookies();
    String email = null;
    String baby_name = null;
    String baby_birth = null;
    String baby_birth_fifty = null;
    String baby_birth_hundred = null;
    String cam_ip = null;
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
            <% if (email != null) { %>
            	<li><a href="my_page.jsp"><%= email %>님</a></li>
				<li><a id='login' href="LogoutServiceCon.do">로그아웃</a></li>
				<% if (baby_name != null) { %>
				<li><a id='res_baby' href="baby_life.jsp"><%= baby_name %></a></li>
				<%} else { %>
				<li><a id='res_baby' href="join_baby_page.jsp">아이 등록하기</a></li>
			<%}} else { %>
				<li><a href="my_page.jsp">로그인이 필요합니다.</a></li>
				<li><a id='login' href="login_page.jsp">로그인</a></li>
				<li><a id='join' href="join_page.jsp">회원가입</a></li>
			<%} %>
                <% if (cam_ip != null) { %>
                <li><a href="video2.jsp">실시간 영상</a></li>
                <%} else { %>
                <li><a href="video.jsp">카메라 등록하기</a></li>
                <%} %>
                <li><a href="baby_life.jsp">육아생활</a></li>
                <li><a href="statistic.jsp">통계</a></li>
                <li><a href="history.jsp">History</a></li>
                <li><a href="commu.jsp">커뮤니티</a></li>
            </ul>
        </div>
</html>