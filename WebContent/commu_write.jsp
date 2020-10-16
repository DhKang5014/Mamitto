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
    <title>commu_writes</title>
</head>
<body>
    <!-- content  -->
    <div id="bk">
        <div class="menu_bar">
            <ul>
                <li><a href="my_page.html"> oo님 </a></li>
                <li><a href="video.html">실시간 영상</a></li>
                <li><a href="baby_life.html">육아생활</a></li>
                <li><a href="statistic .html">통계</a></li>
                <li><a href="history.html">History</a></li>
                <li><a href="commu.html">커뮤니티</a></li>
            </ul>
        </div>
        <!-- nav -->
        <div id="main_header">
            <div class="left_icon">
                <div class="menu"><img src="../img/menu.png" width="50px"></div>
                <a href="index.html" class="logo"><img src="../img/logo.png" width="150px"></a>
            </div>
            <div class="right_icon"><a href="my_page.html"></a></div>
        </div>
        <!-- content -->
        <div id="content" class="page commu commu_write">
            <h1>게시글 등록</h1>
            <form method="POST" action="CommuServiceCon.do">
                <table class="write_radio">
                    <tr>
                        <th>제목</th>
                        <td><input type="text" name="title" class="write_width"></td>
                    </tr>
                    <tr>
                        <th>이름</th>
                        <td><input type="text" name="name" class="write_width"></td>
                    </tr>
                    <tr>
                        <th>내용</th>
                        <td><textarea name="content" class="td_write write_width"></textarea></td>
                    </tr>
                    <tr>
                        <th>공개여부</th>
                        <td>
                            공개<input type="radio" id='po_pw' name="password" value="공개">&nbsp;&nbsp;  
                            비공개<input type="radio" id='po_pw' name="password" value="비공개">
                        </td>
                    </tr>
                </table>
                <br>
                <input class="commu_btn commu_write_btn" type="submit" value="등록">
                <input class="commu_btn commu_write_btn commu_write_btn2" type="reset" value="다시작성하기">
            </form>
        </div>
        <!-- footer -->
        <div id="footer">
    
        </div>
    </div>
</body>
</html>


