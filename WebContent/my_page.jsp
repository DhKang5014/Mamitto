
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
    <title>my_page</title>
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
            <div class="right_icon"><a href="index.jsp"></a></div>
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
        <div class="life_title_box">
            <a class="title"></a>
            <h1>내 아이 성장기록</h1>
        </div>
        <div id="content" class="page my_page">
            <div class="my">
                <h3>아기이름</h3>
            </div>
            <!--  -->
            <!-- action 값 조율필요 -->
            <!--  -->
            <form action="index.jsp" class="login_con join_con">
                <input type="submit" value="프로필수정" class="btn my_btn">
            </form>
            <div class="my_baby">
                <div class="my_day">
                    <h4>성장</h4>
                    <h4 class="popup"><a>수정하기</a></h4>
                </div>
                <ul class="my_day">
                    <li>키(Cm)</li>
                    <li>2 Cm</li>
                </ul>
                <ul class="my_day">
                    <li>몸무게(Kg)</li>
                    <li>1 Kg</li>
                </ul>
            </div>
            <div class="my_baby">
                <div class="my_day">
                    <h4>아기 기념일</h4>
                    <h4><a href="#">더보기</a></h4>
                </div>
                <ul class="my_day">
                    <li>D+50</li>
                    <li>2020. 11. 23 (월)</li>
                </ul>
                <ul class="my_day">
                    <li>D+100</li>
                    <li>2020. 01. 12 (화)</li>
                </ul>
            </div>
            <div class="mom">
                <h4>양육자목록</h4>
                <h5>양육자 이름쓰기</h5>
            </div>
            <!--  -->
            <!-- action 값 조율필요 -->
            <!--  -->
            <form action="join_baby_page.jsp" class="login_con join_con">
                <input type="submit" value="아이추가" class="btn my_btn">
            </form>
            <div class="my_footer"></div>
        </div>
        <div class="pop_bg">
            <div>
                <h2>성장 수정하기</h2>
                <form action="" method="post">
                    <div>
                        <label for="height">키(Cm)</label>
                        <input type="text" value="0" name="height" class="pop_con1">
                    </div>
                    <div>
                        <label for="weight">몸무게(Kg)</label>
                        <input type="text" value="0" name="weight" class="pop_con2">
                    </div>
                    <input type="submit" value="수정" class="btn my_btn">
                </form>
            </div>
        </div>
    </div>
</body>
</html>