
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
    <script type="text/javascript" src="http://www.gstatic.com/charts/loader.js"></script>
    <script src="script/jquery-3.5.1.min.js"></script>
    <script src="script/script_sh.js"></script>
    <title>statistic</title>
</head>
<body>
    <!-- content  -->
    <div id="bk">
  <%@ include file = "menu.jsp" %>
        <!-- nav -->
        <div id="main_header">
            <div class="left_icon">
                <div class="menu"><img src="../img/menu.png" width="50px"></div>
                <a href="index.jsp" class="logo"><img src="../img/logo.png" width="150px"></a>
            </div>
            <% if (email != null) { %>
            <div class="right_icon"><a href="my_page.jsp"></a></div>
            <%} else { %>
            <div class="right_icon"><a href="login_page.jsp"></a></div>
            <%} %>
        </div>
        <!-- content -->
        <div id="content" class="page statistic">
            <h1>통계</h1>
            <ul>
                <li>배변통계</li>
                <li>수유통계</li>
                <li>숙면통계</li>
            </ul>
            <div class="chart">
              <div id="columnchart_material1" style="width: 30em; height: 20em;"></div>
              <div id="columnchart_material2" style="width: 30em; height: 20em;"></div>
              <div id="columnchart_material3" style="width: 30em; height: 20em;"></div>
            </div>
        </div>
        <!-- footer -->
        <div id="footer">
        </div>
    </div>
     <script>
    //columnchart_material1 배변----------------------------------------
    google.charts.load('current', {'packages':['bar']});
    google.charts.setOnLoadCallback(drawChart1);

      function drawChart1() {
        var data = google.visualization.arrayToDataTable([
          ['Week','횟수'],
       	//[날짜,횟수]
          ['월', 1],
          ['화', 3],
          ['수', 4],
          ['목', 1],
          ['금', 2],
          ['토', 3],
          ['일', 1]
        ]);

        var options1 = {
          chart: {
            title: '우리아이 통계자료',
            subtitle: 'weekly 배변횟수 10/14 ~ 10/',
          }
        };

        var chart1 = new google.charts.Bar(document.getElementById('columnchart_material1'));

        chart1.draw(data, google.charts.Bar.convertOptions(options1));
      }

       //columnchart_material2 수유----------------------------------------
   		google.charts.load('current', {'packages':['bar']});
    	google.charts.setOnLoadCallback(drawChart2);

      function drawChart2() {
        var data2 = google.visualization.arrayToDataTable([
          ['Week','횟수'],
          ['월', 1],
          ['화', 3],
          ['수', 4],
          ['목', 1],
          ['금', 2],
          ['토', 3],
          ['일', 1]
        ]);

        var options2 = {
          chart: {
            title: '우리아이 통계자료',
            subtitle: 'weekly 수유횟수 10/14 ~ 10/',
          }
        };

        var chart2 = new google.charts.Bar(document.getElementById('columnchart_material2'));

        chart2.draw(data2, google.charts.Bar.convertOptions(options2));
      }


         //columnchart_material3 숙면----------------------------------------
    google.charts.load('current', {'packages':['bar']});
    google.charts.setOnLoadCallback(drawChart3);

      function drawChart3() {
        var data3 = google.visualization.arrayToDataTable([
          ['Week','횟수'],
          ['월', 1],
          ['화', 3],
          ['수', 4],
          ['목', 1],
          ['금', 2],
          ['토', 3],
          ['일', 1]
        ]);

        var options3 = {
          chart: {
            title: '우리아이 통계자료',
            subtitle: 'weekly 취침횟수 10/14 ~ 10/',
          }
        };

        var chart3 = new google.charts.Bar(document.getElementById('columnchart_material3'));

        chart3.draw(data3, google.charts.Bar.convertOptions(options3));
      }

    </script>
</body>
</html>

