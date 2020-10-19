<%@page import="com.DAO.selectDAO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 여기 복사 -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <link rel="stylesheet" href="css/style.css">
    <!-- font -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <script src="script/jquery-3.5.1.min.js"></script>
    <script src="script/script_sh.js"></script>
    <title>commu</title>
</head>
<body>
    <!-- content  -->
    <div id="bk">
        <!-- nav -->
        <div id="main_header">
            <div class="left_icon">
                <div class="menu"><img src="img/left_icon.png" width="50px"></div>
                <a href="index.jsp" class="logo"><img src="img/sub_title2.png" width="100px"></a>
            </div>
            <div class="right_icon"><a href="my_page.jsp"></a></div>
        </div>
        <!-- bottom_nav -->
        <div class="bottom_nav">
            <ul>
                <li><a href="statistic.jsp">통계</a></li>
                <li><a href="baby_life.jsp">육아리듬</a></li>
                <li><a href="commu.jsp">커뮤니티</a></li>
            </ul>
        </div>
        <!-- content -->
        <div class="life_title">
            <a class="title"></a>
            <h1>커뮤니티</h1>
        </div>
        <div id="content" class="page commu">
            <table>
                <thead>
                    <tr>
                        <th>번호</th>
                        <th>제목</th>
                        <th>작성자</th>
                        <th>날짜</th>
                        <th>조회수</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th>1</th>
                        <th>제목제목제목</th>
                        <th>유유</th>
                        <th>날짜날짜</th>
                        <th>1</th>
                    </tr>
                    <tr>
                        <th>2</th>
                        <th>제목제목제목</th>
                        <th>유유</th>
                        <th>날짜날짜</th>
                        <th>1</th>
                    </tr>
                </tbody>
            </table>
            <br>
            <a  href="commu_write.jsp" class="commu_btn">글쓰기</a>
        </div>
        <!-- footer -->
        <div id="footer">
    
        </div>
    </div>
</body>
</html>