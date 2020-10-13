<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.selectDAO"%>
<%@page import="com.model.master.DTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- ���� ���� -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <link rel="stylesheet" href="css/style.css">
    <!-- font -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <script src="script/jquery-3.5.1.min.js"></script>
    <script src="script/script.js"></script>
    <title>my_page</title>
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
             
            // ����� ��Ű �̸��� �����´�
            String cName = c.getName();
             
            // ��Ű���� �����´�
            String cValue = c.getValue() ;
            if(cName.equals("email")) {
            	email = cValue;
            }
        }
    }
    
    DTO dto = new DTO(email);
    selectDAO dao = new selectDAO();
    // email���� ������ baby�� �ִ� ����� DB�����ؼ� ��������
    dto_array = dao.select(dto.getSql_login_baby(), email);
    try {
    	if (dto_array.size() > 0){
    	
    		for (int i=0; i<dto_array.size(); i++){
    	    	baby_name=dto_array.get(i).getBaby_name();
    	    	cam_ip = dto_array.get(i).getCam_ip();
   			}
  		}
    } catch (NullPointerException e) {
  		System.out.print(e);
  	}
    
	 %>
    <!-- content  -->
    <div id="bk">
        <div class="menu_bar">
            <ul>
            <% if (email != null) { %>
            	<li><a href="my_page.jsp"><%= email %>��</a></li>
				<li><a id='login' href="LogoutServiceCon.do">�α׾ƿ�</a></li>
				<li><a id='res_baby' href="join_baby_page.jsp">���� ����ϱ�</a></li>
			<%} else { %>
				<li><a href="my_page.jsp">�α����� �ʿ��մϴ�.</a></li>
				<li><a id='login' href="login_page.jsp">�α���</a></li>
				<li><a id='join' href="join_page.jsp">ȸ������</a></li>
			<%} %>
                <% if (cam_ip != null) { %>
                <li><a href="video.jsp">�ǽð� ����</a></li>
                <%} else { %>
                <li><a href="video.jsp">ī�޶� ����ϱ�</a></li>
                <%} %>
                <li><a href="baby_life.jsp">���ƻ�Ȱ</a></li>
                <li><a href="statistic.jsp">���</a></li>
                <li><a href="history.jsp">History</a></li>
                <li><a href="commu.jsp">Ŀ�´�Ƽ</a></li>
            </ul>
        </div>
        <!-- nav -->
        <div id="main_header">
            <div class="left_icon">
                <div class="menu"><img src="../img/menu.png" width="50px"></div>
                <a href="index.jsp" class="logo"><img src="../img/logo.png" width="150px"></a>
            </div>
            <div class="right_icon"><a href="my_page.jsp"></a></div>
        </div>
        <!-- content -->
        <div id="content" class="page my_page">
            <h1>My Page</h1>
            <div class="my">
                <h3><%= baby_name %></h3>
            </div>
            <!--  -->
            <!-- action �� �����ʿ� -->
            <!--  -->
            <form action="index.jsp" class="login_con join_con">
                <input type="submit" value="�����ʼ���" class="btn my_btn">
            </form>
            <br>
            <div class="my_baby">
                <div>
                    <h4>�Ʊ� �����</h4>
                    <h4><a href="#">������</a></h4>
                </div>
                <ul class="my_day">
                    <li>D+50</li>
                    <li>2020. 11. 23 (��)</li>
                </ul>
                <ul class="my_day">
                    <li>D+100</li>
                    <li>2020. 01. 12 (ȭ)</li>
                </ul>
            </div>
            <div class="mom">
                <h4>�����ڸ��</h4>
                <h5><%= email %></h5>
            </div>
            <!--  -->
            <!-- action �� �����ʿ� -->
            <!--  -->
        
        	<form action="join_baby_page.jsp" class="login_con join_con">
                <input type="submit" value="�����߰�" class="btn my_btn">
            </form>
            <div class="my_footer"></div>
        </div>
        <!-- footer -->
        <div id="footer">
    
        </div>
    </div>
</body>
</html>