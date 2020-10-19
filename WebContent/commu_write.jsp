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
    <title>commu_write</title>
</head>
<body>
    <!-- content  -->
    <div id="bk">
        <!-- nav -->
		<%@ include file = "menu.jsp" %>
        <!-- content -->
        <div id="content" class="page commu commu_write">
            <h1>게시글 등록</h1>
            <form method="POST" action="WriteServiceCon.dot">
                <table class="write_radio">
                    <tr>
                        <td><input type="text" name="title" class="write_width" placeholder="제목을 입력해주세요."></td>
                    </tr>
                    <tr>
                        <td><input type="text" name="name" class="write_width" placeholder="이름을 입력해주세요."></td>
                    </tr>
                    <tr>
                        <td><textarea name="content" class="td_write write_width" placeholder="내용을 입력해 주세요."></textarea></td>
                    </tr>
                    <tr class="check">
                        <th>공개여부</th>
                    </tr>
                    <tr>
                        <td>
                            <label for="email">공개</label>
                            <input type="radio" name="password" value="공개">&nbsp
                            <label for="email">비공개</label> 
                            <input type="radio" name="password" value="비공개">
                        </td>
                    </tr>
                </table>
                <br>
                <input class="commu_btn commu_write_btn" type="submit" value="등록">
                <input class="commu_btn commu_write_btn commu_write_btn2" type="reset" value="다시작성하기">
            </form>
        </div>

    </div>
</body>
</html>




