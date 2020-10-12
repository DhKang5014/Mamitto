<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.selectDAO"%>
<%@page import="com.model.master.DTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <link rel="stylesheet" href="css/style.css">
    <!-- font -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <script src="script/jquery-3.5.1.min.js"></script>
    <script src="script/script.js"></script>
    <title>mamiddo</title>
</head>
<body>
	<% Cookie[] cookies = request.getCookies();
    String email = null;
    String baby_name = null;
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
    if (dto_array.size() > 0){
    	
    	for (int i=0; i<dto_array.size(); i++){
    		System.out.println(dto_array.get(i).getBaby_name());
    		System.out.println(dto_array.get(i).getBaby_birth());
    		System.out.println(dto_array.get(i).getBaby_gender());
    		System.out.println(dto_array.get(i).getCam_ip());
   		}
  	}
    baby_name=dto_array.get(0).getBaby_name();
    cam_ip = dto_array.get(0).getCam_ip();
	 %>


    <!-- open -->
    <div class="open">
        <ul>
            <li class="open1"></li>
            <li class="open2"></li>
            <li class="open3"></li>
        </ul>
    </div>
    <!-- content  -->
    <div id="bk">
        <div class="menu_bar">
            <ul>
            <% if (email != null) { %>
            	<li><a href="my_page.jsp"><%= email %>님</a></li>
				<li><a id='login' href="LogoutServiceCon.do">로그아웃</a></li>
				<% if (baby_name != null) { %>
				<li><a id='res_baby' href="join_baby_page.jsp"><%= baby_name %></a></li>
				<%} else { %>
				<li><a id='res_baby' href="join_baby_page.jsp">아이 등록하기</a></li>
			<%}} else { %>
				<li><a href="my_page.jsp">로그인이 필요합니다.</a></li>
				<li><a id='login' href="login_page.jsp">로그인</a></li>
				<li><a id='join' href="join_page.jsp">회원가입</a></li>
			<%} %>
                <% if (cam_ip != null) { %>
                <li><a href="video.jsp">실시간 영상</a></li>
                <%} else { %>
                <li><a href="video.jsp">카메라 등록하기</a></li>
                <%} %>
                <li><a href="baby_life.jsp">육아생활</a></li>
                <li><a href="statistic.jsp">통계</a></li>
                <li><a href="history.jsp">History</a></li>
                <li><a href="commu.jsp">커뮤니티</a></li>
            </ul>
        </div>
        <!-- nav -->
        <div id="main_header">
            <div class="left_icon">
                <div class="menu"><img src="../img/menu.png" width="50px"></div>
                <a href="#" class="logo"><img src="../img/logo.png" width="150px"></a>
            </div>
            <div class="right_icon"><a href="login_page.jsp"></a></div>
        </div>
        <!-- content -->
        <div id="content">
            <div class="meno">
    
            </div>
        </div>
        <!-- footer -->
        <div id="footer">
    
        </div>
    </div>
</body>
</html>