
		window.onload = function(){
			  go();
			}
	function go(){
		function aj(urls){
			$.ajax(
	            { 
	                url: urls, 
	                method: "GET", // HTTP 요청 메소드(GET, POST 등) 
	                //dataType: "json" // 서버에서 보내줄 데이터의 타입 
	            })
		}


	  const getCookieValue = (key) => {
	      let cookieKey = key + "="; 
	      let result = "";
	      const cookieArr = document.cookie.split(";");
	      
	      for(let i = 0; i < cookieArr.length; i++) {
	        if(cookieArr[i][0] === " ") {
	          cookieArr[i] = cookieArr[i].substring(1);
	        }
	        if(cookieArr[i].indexOf(cookieKey) === 0) {
	          result = cookieArr[i].slice(cookieKey.length, cookieArr[i].length);
	          return result;
	        }
	      } 
	      return result;
	  }
	  var email = getCookieValue('email').replace('\"','').replace('\"','');
	  console.log(email);
	  console.log('window',window.location.href);
	  var site = window.location.href.split('/')[2];
	  console.log('site',site);
	  var log = window.location.href.split('/')[3];
	  console.log('log',log);
	  var sign = log.split('?');
	  console.log('sign',sign)
	  console.log('sign0',sign[0]);
	  console.log('sign1',sign[1]);
	  var deep_sign = sign[1].split('=');
	  console.log('deep_sign',deep_sign);
	  $.ajax(
	            { 
	                url: "../../SaveAlarmCa", 
	                data: {
	                    email : email,
	                    level : deep_sign[1]
	                }, // HTTP 요청과 함께 서버로 보낼 데이터 
	                method: "POST", // HTTP 요청 메소드(GET, POST 등) 
	                //dataType: "json" // 서버에서 보내줄 데이터의 타입 
	                }) // HTTP 요청이 성공하면 요청한 데이터가 done() 메소드로 전달됨.
	            .done(function(data) { 
	                   console.log(data);
					   


					   // 2. 카메라 인식 기능을 다시 실행해야 한다.
					 	var urls = "http://172.30.1.33:8401/baby"  
					   aj(urls);

						// 1. 알람이 가야한다.!!
						if(data == '1'){
							location.replace('index.jsp?alarm=1');
					   }


	                }) // HTTP 요청이 실패하면 오류와 상태에 관한 정보가 fail() 메소드로 전달됨. 
	            .fail(function(xhr, status, errorThrown) { 
	                    alert("실패");
	  }) //;
	 
	  
	}