<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.selectDAO"%>
<%@page import="com.model.master.DTO"%>
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
    <script src="script/script_sh.js"></script>
    <script src='script/script_dh.js'></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
  	<script type="text/javascript" src="js/jquery.ajax-cross-origin.min.js"></script>
 

	
	
	<!-- The core Firebase JS SDK is always required and must be listed first -->
	<script src="https://www.gstatic.com/firebasejs/7.24.0/firebase.js"></script>
	
	<!-- TODO: Add SDKs for Firebase products that you want to use
	     https://firebase.google.com/docs/web/setup#available-libraries -->
	<script src="https://www.gstatic.com/firebasejs/7.24.0/firebase-analytics.js"></script>
	
	
      <!-- Insert these scripts at the bottom of the HTML, but before you use any Firebase services -->

  <!-- Firebase App (the core Firebase SDK) is always required and must be listed first -->
  <script src="/__/firebase/6.2.0/firebase-app.js"></script>

  <!-- Add Firebase products that you want to use -->
  
  <script src="/__/firebase/6.2.0/firebase.js"></script>
    <title>mamiddo</title>
</head>
<body>
    
    <!-- content  -->
    <div id="bk">
        <!-- nav -->
		<%@ include file = "menu.jsp" %>
        <!-- content -->
        <div id="content" class="index_con">
            <div class="meno">
                <!-- 영상 부분 --><input type='text' id ='bigOne'>
                <img id="myFrame" src="" style="height:100%;width:100%"></img>
                <a class="my_btn play_btn btn_color_linear" id="asdf">IP 입력이 필요합니다.</a>
            </div>
            <div class="page">
                <ul class="life_list index_alam" id='alarms'>
                    <li class="defecate">
                        <a class="alam_left_p" id="index_red">위험</a>
                        <span>2020.10.17</span>
                        <span class='meal_color'id="index_red2">위험 합니다.</span>
                        <img src="img/alam_cion4.png">
                    </li>
                    <li class="defecate">
                        <a class="alam_left_y">주의</a>
                        <span>2020.10.17</span>
                        <span class='sleep_color'>주의가 필요 합니다.</span>
                        <img src="img/alam_cion3.png">
                    </li>
                    <li class="defecate"> 
                        <a class="alam_left_y" id="index_green">안전</a>
                        <span>2020.10.17</span>
                        <span class='meal_color' id="index_green2">위험 합니다.</span>
                        <img src="img/alam_cion2.png">
                    </li>  
                </ul>

                <hr> 
            <% if (baby_birth != null && baby_birth!= "") { %>
                <div class="meno_con my_baby">
                    <h4>기념일</h4>
                    <ul class="my_day">
                        <li>D+50</li>
                        <li><%= baby_birth_fifty %></li>
                    </ul>
                    <ul class="my_day">
                        <li>D+100</li>
                        <li><%= baby_birth_hundred %></li>
                    </ul>
                </div>
                <div class="meno_con today">
                    <h4>Today List</h4>
                    <ul class="my_day">
                        <li>식사</li>
                        <li><%= rhy_meal %>회</li>
                    </ul>
                    <ul class="my_day">
                        <li>취침</li>
                        <li><%= rhy_sleep %>회</li>
                    </ul>
                    <ul class="my_day">
                        <li>배변</li>
                        <li><%= rhy_defecate %>회</li>
                    </ul>
                </div>
            <%} %>
            </div>     
        </div>
        <div class="pop_bg pop_ip_box">
            <div>
                <form action="JoinCameraServiceCon.dot" method="post">
                    <div>
                        <input type="text" name="ip_num" class="pop_con1 pop_ip" placeholder="IP 입력이 필요합니다.">
                       	<input type="text" name="email" id="email" placeholder="이메일을 입력해 주세요.">
                    </div>
                    <input type="submit" value="전송" class="btn my_btn btn_color">
                </form>
            </div>
        </div>
        <div id="alam_pop">
            <img src="img/alam_cion1.png">
            <h2>위험 경고!</h2>
        </div>
    </div>
    <p>
      <button disabled class="js-push-btn mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect">
        Enable Push Messagings
      </button>
    </p>
    <section class="subscription-details js-subscription-details is-invisible">
      
     <a href="https://web-push-codelab.glitch.me/">Push Companion</a>
      <pre><code class="js-subscription-json"></code></pre>
    </section>
  
  <script src="scripts/main.js"></script>
  <script src="https://code.getmdl.io/1.2.1/material.min.js"></script>
  <script defer src="https://code.getmdl.io/1.2.1/material.min.js"></script>
  
  <script>
		$(".play_btn").on("click",function(){
		  console.log("play_btn");
		  $('#email').css('display','block');
		  $('#email').val(email);
		});
	  // Your web app's Firebase configuration
	  // For Firebase JS SDK v7.20.0 and later, measurementId is optional
	  var firebaseConfig = {
	    apiKey: "AIzaSyABALGEjxe6qKFf8tmKmKtiDJggsO4Hvho",
	    authDomain: "mamiddo-cebd2.firebaseapp.com",
	    databaseURL: "https://mamiddo-cebd2.firebaseio.com",
	    projectId: "mamiddo-cebd2",
	    storageBucket: "mamiddo-cebd2.appspot.com",
	    messagingSenderId: "228735732994",
	    appId: "1:228735732994:web:3191bb5a5b87260051c61b",
	    measurementId: "G-C3P0NF9J06"
	  };
	  // Initialize Firebase
	  firebase.initializeApp(firebaseConfig);
	  firebase.analytics();
	  
	  var a= firebase.database().ref().child('text');
	  console.log(a);
	  a.on('value', snap => bigOne.value = snap.val());
	    
  
	</script>
 
</body>
</html>