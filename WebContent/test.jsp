<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <html>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
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
  </head>
  <body>
  <a href="sms:01012345678?body=내용!!">문자전송</a>
    <div id="columnchart_material4" style="width: 900px; height: 500px"></div>
  </body>
</html>