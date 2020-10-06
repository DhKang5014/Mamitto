<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
		<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		</head>
		<body>

			<div id="test"></div>

			<script type="text/javascript">
				window.onload = function() {
					if (window.Notification) {
						Notification.requestPermission();
         			}
         			var date = new Date();
         			console.log(date.getTime());
         
         			var date2 = new Date("2020.10.05 16:40:00");
         			console.log(date2);         		

					var result = (date.getTime() - date2.getTime())*-1;
					console.log(result);
         
         			setTimeout(function() {
            			notify();
        	 		}, result)};

				function notify(){
					if(Notification.permission !== 'granted'){
						alert('사용자가 허용하지 않았습니다.');
					}else{
						var notification = new Notification('약 드세용',{
							icon : 'https://dbscthumb-phinf.pstatic.net/3323_000_2/20160623172032882_AP0XOBOJT.jpg/A11ABBBBB150201.jpg?type=m250&wm=N',
							body : '약 먹을 시간'
						});
        			    var test = document.getElementById('test');
            			test.innerHTML='<audio id = \'audio_play\' src="Altero.mp3" autoplay="autoplay"></audio>';

			            var audio = document.getElementById('audio_play');
            			notification.onclick = function(){
               				audio.pause();
						};
					}
				}

/* 				function timeclick(){
     	  			var xa = document.getElementById("time_a2").value;
        			var xb = document.getElementById("time_b2").value;

					alert(xa + "시" + xb + "분");

      			} */

   </script>
</body>
</html>