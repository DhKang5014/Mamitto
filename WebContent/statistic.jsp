
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
    <script src="script/script.js"></script>
    <script src="script/script_sh.js"></script>
    <title>statistic</title>
</head>
<body>
    <!-- content  -->
    <div id="bk">
        <!-- nav -->
		<%@ include file = "menu.jsp" %>
        <!-- content -->
        <div class="life_title">
          <a class="title"></a>
          <h1>우리아이 통계</h1>
        </div>
        <div id="content" class="page statistic">
            <ul>
                <li><img src="img/meal1.png"></li>
                <li><img src="img/defe1.png"></li>
                <li><img src="img/sleep1.png"></li>
                <li><img src="img/kg1.png"></li>
            </ul>
            <div class="chart">
              <div id="columnchart_material1" style="width: 30em; height: 20em;"></div>
              <div id="columnchart_material2" style="width: 30em; height: 20em;"></div>
              <div id="columnchart_material3" style="width: 30em; height: 20em;"></div>
              <div id="columnchart_material4" style="width: 30em; height: 20em;"></div>
            </div>
        </div>
        
        <!-- footer -->
        <div id="footer">
        </div>
        </div>
    <script>
    //columnchart_material1----------------------------------------
    var chh1 = [[]]
    email = getCookieValue('email');

    google.charts.load('current', {'packages':['bar']});
    google.charts.setOnLoadCallback(drawChart1);
	
      function drawChart1() {
        var data = google.visualization.arrayToDataTable([
          ['Week','횟수'],
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
            subtitle: 'weekly 수유횟수 10/14 ~ 10/'
          }
        };

        var chart1 = new google.charts.Bar(document.getElementById('columnchart_material1'));

        chart1.draw(data, google.charts.Bar.convertOptions(options1));
      }

       //columnchart_material2----------------------------------------
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
            subtitle: 'weekly 배변횟수 10/14 ~ 10/'
          }
        };

        var chart2 = new google.charts.Bar(document.getElementById('columnchart_material2'));

        chart2.draw(data2, google.charts.Bar.convertOptions(options2));
      }


         //columnchart_material3----------------------------------------
    google.charts.load('current', {'packages':['bar']});
    google.charts.setOnLoadCallback(drawChart3);
	var chg1 = [
        ['Week','횟수'],
        ['월', 1],
        ['화', 3],
        ['수', 4],
        ['목', 1],
        ['금', 2],
        ['토', 3],
        ['일', 1]
      ]
	console.log('asdf',chg1[1][1]);
      function drawChart3() {
        var data3 = google.visualization.arrayToDataTable(chg1);

        var options3 = {
          chart: {
            title: '우리아이 통계자료',
            subtitle: 'weekly 수면횟수 10/14 ~ 10/'
          }
        };

        var chart3 = new google.charts.Bar(document.getElementById('columnchart_material3'));

        chart3.draw(data3, google.charts.Bar.convertOptions(options3));
      }
      
      //

      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart4);

      function drawChart4() {
        var data4 = google.visualization.arrayToDataTable([
          ['Year', 'Sales', 'Expenses'],
          ['2004',  1000,      400],
          ['2005',  1170,      460],
          ['2006',  660,       1120],
          ['2007',  1030,      540]
        ]);

        var options4 = {
          title: 'Company Performance',
          curveType: 'function',
          legend: { position: 'bottom' }
        };

        var chart4 = new google.visualization.LineChart(document.getElementById('columnchart_material4'));

        chart4.draw(data4, options4);
      }

    </script>

</body>
</html>
