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
    <link href="http://fonts.googleapis.com/earlyaccess/nanumgothiccoding.css" rel="stylesheet">
    <script src="script/jquery-3.5.1.min.js"></script>
    <script src="script/script_sh.js"></script>
    <title>baby_life</title>
</head>
<body>
    <!-- content  -->
    <div id="bk">
       <!-- nav -->
       <div id="main_header">
        <div class="left_icon">
            <div class="menu"><img src="img/left_icon.png" width="50px"></div>
            <a href="index.html" class="logo"><img src="img/sub_title2.png" width="100px"></a>
        </div>
        <div class="right_icon"><a href="login_page.html"></a></div>
        </div>
        <!-- bottom_nav -->
        <div class="bottom_nav">
            <ul>
                <li><a href="statistic.html">통계</a></li>
                <li><a href="baby_life.html">육아리듬</a></li>
                <li><a href="commu.html">커뮤니티</a></li>
            </ul>
        </div>
        <!-- content -->
        <div id="content" class="video_con">
            <div class="life_title_box">
                <div class="life_title">
                    <a class="title"></a>
                    <h1>육아리듬 체크</h1>
                </div>
                <ul class="life_icon">
                <li><img src="img/new_life1.png" alt="" width="80px"></li>
                <li><img src="img/new_life2.png" alt="" width="80px"></li>
                <li><img src="img/new_life3.png" alt="" width="80px"></li>
            </ul>
            </div>
            <div class="alam life_con page">
                <!-- 알람 팝업메세지 -->
                <h4 id="date"></h4>
                <ul class="life_list">
                    <!-- icon_size: 30x30 -->
                    <!-- <li class="life_remove">  
                        <span>PM 1:00 식사</span> 
                        <span class="test4"><a class="alam_icon"></a></span>
                    </li> -->
                </ul>
            </div>
        </div>
        <!-- footer -->
        <div id="footer">
    
        </div>
    </div>
    <script>
        $(function(){
        $.today()
    });
    </script>
</body>
</html>

