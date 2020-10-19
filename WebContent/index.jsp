

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
    <script src="../script/jquery-3.5.1.min.js"></script>
    <script src="script/script_sh.js"></script>
    <title>mamiddo</title>
</head>
<body>

    <!-- content  -->
    <div id="bk">
        <!-- nav -->
		<%@ include file = "menu.jsp" %>
        <!-- content -->
        <div id="content" class="index_con">
            <div class="meno">
                <!-- 영상 부분 -->
                <a class="my_btn play_btn btn_color_linear">IP 입력이 필요합니다.</a>
            </div>
            <div class="page">
                <ul class="life_list index_alam">
                    <li class="defecate">
                        <a class="alam_left_p" id="index_red">위험</a>
                        <spna>2020.10.17</spna>
                        <spna class='meal_color'id="index_red2">위험 합니다.</spna>
                    </li>
                    <li class="defecate">
                        <a class="alam_left_y">주의</a>
                        <spna>2020.10.17</spna>
                        <spna class='defecate_color'>주의가 필요 합니다.</spna>
                    </li>
                    <li class="defecate">
                        <a class="alam_left_y" id="index_green">안전</a>
                        <spna>2020.10.17</spna>
                        <spna class='meal_color' id="index_green2">위험 합니다.</spna>
                    </li>  
                </ul>
                <br>
                <hr>
            <% if (baby_birth != null && baby_birth!= "") { %>
                <div class="meno_con my_baby">
                    <h4>기념일</h4>
                    <ul class="my_day">
                        <li>D+50</li>
                        <li><%= baby_birth_fifty %></li>
                    </ul>
                    <ul class="my_day">
                        <li>D+100</li>
                        <li><%= baby_birth_hundred %></li>
                    </ul>
                </div>
                <div class="meno_con today">
                    <h4>Today List</h4>
                    <ul class="my_day">
                        <li>식사</li>
                        <li><%= rhy_meal %>회</li>
                    </ul>
                    <ul class="my_day">
                        <li>취침</li>
                        <li><%= rhy_sleep %>회</li>
                    </ul>
                    <ul class="my_day">
                        <li>배변</li>
                        <li><%= rhy_defecate %>회</li>
                    </ul>
                </div>
            <%} %>
            </div>     
        </div>
        <div class="pop_bg pop_ip_box">
            <div>
                <form action="JoinCameraServiceCon.dot" method="post">
                    <div>
                        <input type="text" name="ip_num" value="" class="pop_con1 pop_ip" placeholder="IP 입력이 필요합니다.">
                    </div>
                    <input type="submit" value="전송" class="btn my_btn btn_color">
                </form>
            </div>
        </div>
    </div>
</body>
</html>