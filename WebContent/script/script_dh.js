window.onload = function(){
  goes();
}
let email = '';
let html = '';
function goes(){
	
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
  email = getCookieValue('email');
  console.log("email",email);
  console.log(email);
  if(email == ''){
	  location.replace('login_page.jsp');
  }

  $.ajax(
          { 
              url: "../../SelectIP", // 클라이언트가 HTTP 요청을 보낼 서버의 URL 주소
              data: {
                  email : email
              }, // HTTP 요청과 함께 서버로 보낼 데이터
              method: "POST", // HTTP 요청 메소드(GET, POST 등)
              // dataType: "json" // 서버에서 보내줄 데이터의 타입
              }) // HTTP 요청이 성공하면 요청한 데이터가 done() 메소드로 전달됨.
          .done(function(data) { 
                 console.log('data',data);
                 if(data!=''){
                    data = JSON.parse(data);
                    if(data.length != 0){
                      // ip 카메라 작동
                      console.log('asdf');
                      console.log('http://'+data[0].ip+":8081");
                      $('#myFrame').attr('src','http://'+data[0].ip+":8081");
                      $('#asdf').css('display','none');
                    }
                }
              }) // HTTP 요청이 실패하면 오류와 상태에 관한 정보가 fail() 메소드로 전달됨.
          .fail(function(xhr, status, errorThrown) { 
                  alert("실패");
  });
  
  // create table
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
	
	function saveAlarm(data,ac){
		if(data != ''){
      	    data = JSON.stringify(data)
			console.log(JSON.stringify(data));
			
			if(data.length>0){
				//Save 위험 카메라
				JSON.stringify(data);
    			 $.ajax({
    				url : "../../SaveAlarm"+ac,
    				data: {
                        email : email,
                        level : data.level,
                        action : data.action
                    },
    			 }).done(function(data){
    				 console.log("save success of alarm camera");
    			 });
    			 tableCreate(data);
    		}
  	    }
	}
	

  function tableCreate(dt){

	    var tc = new Array();
	    
	    for(var q=0;q<dt.length;q++){
	       html = ifcon(html,dt[q].level,dt[q]);
	    }
	    html += ``;

	    return html;            
	}
  
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
                  if(data != ''){
                    data = JSON.parse(data);
                    var html = tableCreate(data);
                    if(data.length != 0){
                      // ip 카메라 작동
                      console.log('traffic success');
                      console.log(html);
                      $("#alarms").empty();
                      $("#alarms").append(html);
                      
                    }
                }
                  
                  
                  
                  
                $.ajax(
                  { 
                	  // crossOrigin : true,
                      url: "http://172.30.1.33:8401/baby", // 클라이언트가 HTTP 요청을
															// 보낼 서버의 URL 주소
                      type: 'GET',
                      data: {
                          email : email
                      }, // HTTP 요청과 함께 서버로 보낼 데이터
                      method: "POST", // HTTP 요청 메소드(GET, POST 등)
                      dataType: "json", // 서버에서 보내줄 데이터의 타입
                      responseType:'application/json',
                      xhrFields: {
                  	    withCredentials: false
                  	  },cache:false,
                      async: false,
                      crossDomain: true,
                      success: function(data) {
                  	    console.log(data);
                  	    console.log(JSON.parse(data));
                  	  	
                  	    
                  	    saveAlarm(data,"Ca");
            			
            			
            			
                	  },error: function(error) {
                  	    console.log("FAIL....=================");
            			console.log(error);
            			console.log(JSON.stringify(error));
            				
                	  }
                	})
                  .done(function(data) { 
                      console.log('End first (Cameara)', data);
                    }
                 )
                  
                  
                  
                  
                  
                  
                 $.ajax(
                  { 
                	  // crossOrigin : true,
                      url: "http://172.30.1.33:8402/mic", // 클라이언트가 HTTP 요청을
															// 보낼 서버의 URL 주소
                      type: 'GET',
                      data: {
                          email : email
                      }, // HTTP 요청과 함께 서버로 보낼 데이터
                      method: "POST", // HTTP 요청 메소드(GET, POST 등)
                      dataType: "json", // 서버에서 보내줄 데이터의 타입
                      responseType:'application/json',
                      xhrFields: {
                  	    withCredentials: false
                  	  },cache:false,
                      async: false,
                      crossDomain: true,
                      success: function(data) {
                  	    console.log(data);
            			console.log(JSON.stringify(data));
            			
            			saveAlarm(data,"Mic");
            			//saveAlarm(data,"Mic");
            			/*$.ajax({
            				url : "../../SaveAlarmMic",
            				data: {
                                email : email,
                                level : level,
                                action : action
                            },
            			 }).done(function(data){
            				 console.log("save success of alarm MIC");
            			 });
            			location.replace("index.jsp");
            			*/
            			
                	  },error: function(error) {
                  	    console.log("FAIL....=================");
            			console.log(error);
            			console.log(JSON.stringify(error));
                	  }
                	})
                  .done(function(data) { 
                      console.log('End first (MIC)', data);
                    }
                 )
          		});
  
}
$("#asdf").on("click",function(){
  console.log("play_btn");
  $('#email').css('display','block');
  $('#email').val(email);
});