
<%@page import="com.DAO.commuDAO"%>
<%@page import="com.DTO.commuDTO"%>
<%@page import="com.DTO.bodycheckDTO"%>
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
    <script src="script/redirect_login.js"></script>
</head>
<body>
<% Cookie[] cookies = request.getCookies();
    String email = null;
    String baby_name = null;
    String baby_birth = null;
    String baby_birth_fifty = null;
    String baby_birth_hundred = null;
    String cam_ip = null;
    int count[] = null;
    int rhy_meal = 0;
    int rhy_sleep = 0;
    int rhy_defecate = 0;
    ArrayList<DTO> dto_array = null;
    String height = "0";
    String weight = "0";
    String day = null;
    ArrayList<bodycheckDTO> to_array = null;
    ArrayList<commuDTO> commu_array = null;
    
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
    // email값 가지고 rhythm에 있는 내용을 DB 접속해서 가져오기
    count = dao.count(dto.getSql_select_rhythm(), email);
    if (count.length > 0){
    	for (int i=0; i<count.length; i++){
    		System.out.println(count[i]);
			if (i == 0) {
				rhy_meal = count[i];
			}else if (i == 1) {
				rhy_sleep = count[i];					
			}else if (i == 2) {
				rhy_defecate = count[i];					
			}
    	}
    }
    // email값을 가지고 bodycheck에 있는 내용들 DB접속해서 가져오기
    bodycheckDTO to = new bodycheckDTO(email);
    to_array = dao.selectBody(to.getSql_select_bodycheck(), email);
    
    try {
    	if (to_array.size() > 0){
    	
    		height=to_array.get(0).getHeight();
    	    weight = to_array.get(0).getWeight();
    	    day = to_array.get(0).getDay();
  		}
    } catch (NullPointerException e) {
  		System.out.print(e);
  	}
    
    commuDTO comDTO = new commuDTO(email);
    commuDAO comDAO = new commuDAO();
    commu_array = comDAO.selectCommu(comDTO.getSql_select_commu_info(), email);
	 %>
        <div id="main_header">
            <div class="left_icon">
                <div class="menu"><img src="img/left_icon.png" width="50px"></div>
                <a href="index.jsp" class="logo"><img src="img/sub_title2.png" width="100px"></a>
            </div>
            <div class="home"><a href="my_page.jsp"></a></div>
        </div>
         <!-- bottom_nav -->
         <div class="bottom_nav">
            <ul>
                <li><a href="statistic.jsp">통계</a></li>
                <li><a href="baby_life.jsp">육아리듬</a></li>
                <li><a href="commu.jsp">커뮤니티</a></li>
            </ul>
        </div>
</html>
