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
  	<script src="script/script_firebase_dh.js"></script>
  	<script>
	
//s
  	'use strict';

  	/* eslint-disable max-len */

  	const applicationServerPublicKey = 'AAAANUG2TQI:APA91bHHSlCUE4eXB4R4avQPr9i_UA1M_Dbflp9lwCKg284_6ZbMdvBioZY5hhvjLvWk-ZFt_OON80cXyqbpl8au0ZN_PSQQcKyPrKQSk9jfSM6IMkxKwPAO35QbiCOjiKdDd7GkBpKs';

  	/* eslint-enable max-len */

  	function urlB64ToUint8Array(base64String) {
  	  const padding = '='.repeat((4 - base64String.length % 4) % 4);
  	  const base64 = (base64String + padding)
  	    .replace(/\-/g, '+')
  	    .replace(/_/g, '/');

  	  const rawData = window.atob(base64);
  	  const outputArray = new Uint8Array(rawData.length);

  	  for (let i = 0; i < rawData.length; ++i) {
  	    outputArray[i] = rawData.charCodeAt(i);
  	  }
  	  return outputArray;
  	}
	
  	self.addEventListener('push', function(event) {
  	  console.log('[Service Worker] Push Received.');
  	  console.log(`[Service Worker] Push had this data: "${event.data.text()}"`);

  	  const title = 'Push Codelab';
  	  const options = {
  	    body: 'Yay it works.',
  	    icon: 'images/icon.png',
  	    badge: 'images/badge.png'
  	  };

  	  event.waitUntil(self.registration.showNotification(title, options));
  	});

  	self.addEventListener('notificationclick', function(event) {
  	  console.log('[Service Worker] Notification click Received.');

  	  event.notification.close();

  	  event.waitUntil(
  	    clients.openWindow('https://developers.google.com/web/')
  	  );
  	});

  	self.addEventListener('pushsubscriptionchange', function(event) {
  	  console.log('[Service Worker]: \'pushsubscriptionchange\' event fired.');
  	  const applicationServerKey = urlB64ToUint8Array(applicationServerPublicKey);
  	  event.waitUntil(
  	    self.registration.pushManager.subscribe({
  	      userVisibleOnly: true,
  	      applicationServerKey: applicationServerKey
  	    })
  	    .then(function(newSubscription) {
  	      // TODO: Send to application server
  	      console.log('[Service Worker] New subscription: ', newSubscription);
  	    })
  	  );
  	});
  	


  	
  	</script>


	
	
	<!-- The core Firebase JS SDK is always required and must be listed first -->
	<script src="https://www.gstatic.com/firebasejs/7.24.0/firebase.js"></script>
	
	<!-- TODO: Add SDKs for Firebase products that you want to use
	     https://firebase.google.com/docs/web/setup#available-libraries -->
	<script src="https://www.gstatic.com/firebasejs/7.24.0/firebase-analytics.js"></script>
	
	
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
                <!-- 영상 부분 --><input type='text' id ='bigOne' style="display:none">
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
    <!--    -->
    <button id="subscribe">
      Subscribe
    </button>
    <!--    -->
  <script src="scripts/main.js"></script>
  <script src="https://code.getmdl.io/1.2.1/material.min.js"></script>
  <script defer src="https://code.getmdl.io/1.2.1/material.min.js"></script>
  
  <script>
		$(".play_btn").on("click",function(){
		  console.log("play_btn");
		  $('#email').css('display','block');
		  email = email.replace('\"','');
		  email = email.replace('\"','');
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
	  
	  
	  function notify(title) {
	        if (Notification.permission !== 'granted') {
	            alert('notification is disabled');
	        }
	        else {
	            var notification = new Notification(title, {
	                icon: 'http://cdn.sstatic.net/stackexchange/img/logos/so/so-icon.png',
	                body: 'Notification text',
	            });

	            notification.onclick = function () {
	                window.open('http://google.com');
	            };
	        }
	  }
	  
	  
	  
	  
	  var a = firebase.database().ref().child('info').child('info1');
		
	  function fall_alarm(){
		 
		
				if(bValue == '위험'){
					  var titles = "아이가 떨어질 것 같아요!(낙상)";
					  //notify(titles);
					  console.log(titles);
				}
				else if(bValue == '안전'){
					  var titles = "아이가 잘 자고 있어요.(낙상)";
					 
					  console.log(titles);
				}
		
	  }
	  function cry_alarm(){


				if(bValue== '위험'){
					  var titles = "아이가 울고 있어요!(울음)";
					  //notify(titles);
					  console.log(titles);
				}
				else if(bValue == '안전'){
					  var titles = "아이가 잘 자고 있어요.(울음)";
					  
					  console.log(titles);
				}
		};
	  
	  function turn_alarm(){
		 
		
				if(bValue == '위험'){
					  var titles = "아이가 뒤집기를 하고 있어요!(뒤집기)";
					  //notify(titles);
					  console.log(titles);
				}
				else if(bValue == '안전'){
					  var titles = "아이가 잘 자고 있어요.";
					  
					  console.log(titles);
				}

	  }
	  
	  var ii = 0;
	  var ij = 0;
	  var ik = 0;
	  // snap => 변화되는 값 확인 
	  var b = firebase.database().ref().child('info').child('info2');
	  var bValue;
	  b.on('value', snap => bValue = snap.val());
	  a.on('value', snap => 
{
	bigOne.value = snap.val();
	/* if(snap.val() == '낙상'){
		 if(ii != 0)
		  fall_alarm();
		  
		  ii++;
		  console.log("ii",ii);
	}else if(snap.val() == '울음'){
		if(ij != 0)	
			cry_alarm();
			
			  ij++;
			  console.log("ij",ij);
	}
	else if(snap.val() == '뒤집기'){
		if(ik != 0)	 
			turn_alarm();
			
			  ik++;
			  console.log("ik",ik);
	} */
}
);
	  
	 
	// 데이터 베이스 객체를 불러오는 코드
    var database = firebase.database();
     
    // db에 접속하는 코드
    var rootRef = database.ref().child('info');
    
    function writeUserData(userId, name, email, imageUrl) {
       firebase.database().ref('users/' + userId).set({
       username: name,
       email: email,
        profile_picture : imageUrl
      });
    }
	
function ringing(){
	 $("#alam_pop").css('display','block');
	$("#alam_pop").animate({"top":"0px"},"slow");
    setInterval(function(){
        $("#alam_pop").animate({"background-color":"#ff4a4a"},"slow",function(){
            $(this).css("background-color","rgb(250, 244, 244)");
        });
    },100);
    setInterval(function(){
        $("#alam_pop").animate({"background-color":"#fdfdfd"},"slow",function(){
            $(this).css("background-color","#ff4a4a");
        });
    },100);
}

$("#alam_pop > h2").on("click", function(){
    
    $("#alam_pop").animate({"top":"-81px"},"slow");
});
$('.menu').on('click',function(){
    $("#alam_pop").css('display','block')
})
$("#alam_pop").on('click',function(){
    $("#alam_pop").css('display','none')
})
function camera(){
     $.ajax(
       { 
           url: "http://172.30.1.33:8411/baby", // 클라이언트가 HTTP 요청을 보낼 서버의 URL 주소 
           data: {
               email : email
           }, // HTTP 요청과 함께 서버로 보낼 데이터 
           method: "POST", // HTTP 요청 메소드(GET, POST 등) 
           dataType: "json" // 서버에서 보내줄 데이터의 타입 
           
       }).done(function(dat){
     	  console.log(dat);
     	  console.log("camera 검출 완료");
     	  
     	  
     	  //db 저장하는 코드
     	 var lv = '3';
    	  if(dat['level'] == '위험'){
    		  lv = '1';
    		  ringing();
    		  saveFall(email,dat['action'],lv);
    		  def_select(email);
    	  }
    	  else if(dat['level'] == '주의'){
    		  lv = '2';
    		  saveFall(email,dat['action'],lv);
    		  def_select(email);
    	  }
    	  	//위험일 때만 DB 저장
    	   //saveFall(email,dat['action'],lv);
     	  
     	  
     	  rootRef.set({
     	      info1: dat['action'],
     	      info2: dat['level']
     	  });
     	   
       });
}
function mic(){
       $.ajax(
         { 
             url: "http://172.30.1.33:8404/mic", // 클라이언트가 HTTP 요청을 보낼 서버의 URL 주소 
             data: {
                 email : email
             }, // HTTP 요청과 함께 서버로 보낼 데이터 
             method: "POST", // HTTP 요청 메소드(GET, POST 등) 
             dataType: "json" // 서버에서 보내줄 데이터의 타입 
       }).done(function(data){
     	  console.log(data);
     	  console.log("mic 검출 완료");

     	  
     	  // db에 저장하는 코드
			var lv = '3';
     	  if(data['level'] == '위험'){
     		  lv = '1';
     		 ringing();
     		 saveFall(email,data['action'],lv);
     		def_select(email);
     	  }
     	  // saveFall 저장
     	  // saveFall(email,data['action'],lv);
			
     	  rootRef.set({
     	      info1:data['action'],
     	      info2:data['level']
     	  });
     	 
      });
}

setInterval(function(){mic();camera(); }, 10000);



     
    /* 
    
    // db에 접속하는 코드
    var rootRef = database.ref().child('info');
    
    // db에 저장하는 코드
    rootRef.set({
        info1:$('#info1').val(),
        info2:$('#info2').val()
    }); 
    
    */
    //Save Alarm fall
    function saveFall(email,alarm,level){
    	var inputs = "";
    	if(alarm =='낙상'){
    		inputs = "Ca";
    	}else if(alarm == '울음'){
    		inputs = 'Mic';
    	}else if(alar == '뒤집기'){
    		inputs = 'Turn';
    	}
    
    	$.ajax(
    	         { 
    	             url: "../../SaveAlarm"+inputs, // 클라이언트가 HTTP 요청을 보낼 서버의 URL 주소 
    	             data: {
    	                 email : email,
    	                 alarm : alarm,
    	                 level : level
    	             }, // HTTP 요청과 함께 서버로 보낼 데이터 
    	             method: "POST", // HTTP 요청 메소드(GET, POST 등) 
    	             dataType: "json" // 서버에서 보내줄 데이터의 타입 
       }).done(function(data){
     	  console.log(data);
     	  console.log("세이브 완료");
		
		});
    }
    

    function insert_alarms(action, act_time){
    	var html = '';
    	let today = new Date();   

    	let year = today.getFullYear(); // 년도
    	let month = today.getMonth() + 1;  // 월
    	let date = today.getDate();  // 날짜
    	let day = today.getDay();
    	html += '<li class="defecate">';
        html += '<a class="alam_left_p" id="index_red">위험</a>';
        html += '<spna class="fonts" style="color:#ff4a4a">'+ action + "</spna><spna> " + act_time+'</spna>';
        html += '<spna class="meal_color" id="index_red2">위험 합니다.</spna>';
        html += '</li>';
    	$("<li class='defecate' id='defecate"+i+"'><a class='alam_left_b'>배변</a><span id='s_ck"+i+"'></span><spna class='defecate_color'>배변 시간<a id='defe_pop" + i + "' onclick='defe_pop("+i+")'>check</a></span><a class='alam_icon' onclick='defecate("+i+")'></a><a class='correction' onclick='defe_pop("+i+")'></a></li>").prependTo(".life_list");
        var s_ck = $("ck"+i);
        $("#s_ck"+i).text($.clock() +" 배변시간");
        curtime = '' + $.clock();
        
        console.log(emails, curtime);
        
    };
    function def_select(email){
		html = '';
    	$.ajax(
    	          { 
    	              url: "../../SelectTraffic", // 클라이언트가 HTTP 요청을 보낼 서버의 URL 주소
    	              data: {
    	                  email : email

    	              }, // HTTP 요청과 함께 서버로 보낼 데이터
    	              method: "POST", // HTTP 요청 메소드(GET, POST 등)
    	              // dataType: "json" // 서버에서 보내줄 데이터의 타입
    	              }) // HTTP 요청이 성공하면 요청한 데이터가 done() 메소드로 전달됨.
    	.done(function(data) { 
    	                 console.log('traffic',data);
    	                  if(data != ''){//
    	                    data = JSON.parse(data);
    	                    console.log(data);
    	                    console.log(typeof(data));
    	                    if(data.length <=3){
    	                    	var html = tableCreate(data);
    		                    if(data.length != 0){
    		                      // ip 카메라 작동
    		                      console.log('traffic success');
    		                      console.log(html);
    		                      $("#alarms").empty();
    		                      $("#alarms").append(html);
    		                    }
    	                    }else{
    	                    	var da = new Array();
    	                    	for(var ko=0;ko<4;ko++){
    	                    		da.push(data[ko]);
    	                    	}
    	                    	var html = tableCreate(da);
    		                    if(data.length != 0){
    		                      // ip 카메라 작동
    		                      console.log('traffic success');
    		                      console.log(html);
    		                      $("#alarms").empty();
    		                      $("#alarms").append(html);
    		                    }
    	                    }
    	         }// end if
    	}) // HTTP 요청이 실패하면 오류와 상태에 관한 정보가 fail() 메소드로 전달됨. 
    	.fail(function(xhr, status, errorThrown) { 
    	              alert("실패");
    	});
    }
    function tableCreate(dt){

	    var tc = new Array();
	    
	    for(var q=0;q<dt.length;q++){
	       html = ifcon(html,dt[q].level,dt[q]);
	    }
	    html += ``;

	    return html;            
	}
    
    function ifcon(html,i,dt){
		if(i=='1'){
			html += '<li class="defecate">';
	        html += '<a class="alam_left_p" id="index_red">위험</a>';
	        html += '<spna class="fonts" style="color:#ff4a4a">'+ dt.action + "</spna><spna> " + dt.act_time+'</spna>';
	        html += '<spna class="meal_color" id="index_red2">위험 합니다.</spna>';
	        html += '</li>';
		}else if(i=='2'){
			html += '<li class="defecate">';
	        html += '<a class="alam_left_y" id="index_yellow">주의</a>';
	        html += '<spna class="fonts" style="color:#fbb554">'+ dt.action + "</spna><spna> " + dt.act_time+'</spna>';
	        html += '<spna class="sleep_color" id="index_yellow2">주의가 필요합니다.</spna>';
	        html += '</li>';
		}
		return html;
	}

	</script>
  
</body>
</html>