

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
        <!-- nav -->
        <div id="main_header">
            <div class="left_icon">
                <div class="menu"><img src="../img/menu.png" width="50px"></div>
                <a href="#" class="logo"><img src="../img/logo.png" width="150px"></a>
            </div>
            <% if (email != null) { %>
            <div class="right_icon"><a href="my_page.jsp"></a></div>
            <%} else { %>
            <div class="right_icon"><a href="login_page.jsp"></a></div>
            <%} %>
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
<<<<<<< HEAD
    
=======
    <script>
    	
    </script>
>>>>>>> branch 'master' of https://github.com/DhKang5014/Mamitto.git
</body>
</html>