// baby life remove ------------------------------------------
function meal(i){
    $('li#meal'+i).remove();
}

function sleep(j){
    $('li#sleep'+j).remove();
}

function defecate(k){
   $('li#defecate'+k).remove();
}


$(function(){
    //new page ----------------------------------------------
    $(".logo").on("click",function(){
        window.location.reload();
    });

    // open --------------------------------------------------
    setInterval(function(){     
        $(".open1").animate({top:"31em"},"slow"),function(){
            $(this).animate({top:"32em"},"slow")
        };    
        $(".open2").animate({top:"31em"},"slow"),function(){
            $(this).animate({top:"32em"},"slow")
        }; 
        $(".open3").animate({top:"31em"},"slow"),function(){
            $(this).animate({top:"32em"},"slow")
        }; 
    });
    setInterval(function(){     
        $(".open1").animate({top:"32em"},"slow"),function(){
            $(this).animate({top:"31em"},"slow")
        };    
        $(".open2").animate({top:"30em"},"slow"),function(){
            $(this).animate({top:"32em"},"slow")
        }; 
        $(".open3").animate({top:"32em"},"slow"),function(){
            $(this).animate({top:"31em"},"slow")
        }; 
    });  

    setInterval(function(){
        $(".open").fadeOut();
    },1000);

    // menu  ---------------------------------------------------
    $(".menu").on("click",function(){
        $(".menu_bar").animate({left:"0em"},"slow");
    });

    $(".menu_bar").on("click",function(){
        $(".menu_bar").animate({left:"-25em"},"slow");
    });

    // content-page----------------------------------------------
    setInterval(function(){
        $(".page").animate({"margin-top":"3em"},"slow");
    });
  

    // baby_life------------------------------------------------
    // date-------------------
    var today = new Date();
    var dd = today.getDate();
    var mm = today.getMonth()+1; //January is 0!
    var yyyy = today.getFullYear();

    if(dd<10) {
        dd='0'+dd
    } 

    if(mm<10) {
        mm='0'+mm
    } 
    $.today = function() {
        today = yyyy+'. '+mm+'. '+dd;
        // document.write(today);
        var element = document.getElementById("date");
        element.innerText = today;
    }
//------------------------------------------------------------
$.clock = function(){
    var now = new Date();
    var hours = now.getHours();
    var minutes = now.getMinutes();
    var seconds = now.getSeconds();

    if(hours > 12){
        hours -= 12;
         var ampm = "오후";
    }else{
        var ampm = "오전";
    }
    if(hours < 10){
        hours = "0"+hours;
    }
    if(minutes < 10){
        minutes = "0"+minutes;
    }
    if(seconds < 10){
        seconds = "0"+seconds;
    }

    // document.getElementById("divClock").innerText = ampm + hours +":"+minutes+":"+seconds;
    now = ampm + hours +":"+minutes;

    return now;
}
    
// creat

    //1 . get Cookie - email
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

//select * from rhythm where email = ? ;
arrayList_history = null;

$.select_history = function(){

    email = getCookieValue('email');
    curtime = '' + $.clock();

    $.ajax(
        { 
            url: "../../project1/SelectMeal", // 클라이언트가 HTTP 요청을 보낼 서버의 URL 주소 
            data: {
                email : email,
                curtime : curtime
            }, // HTTP 요청과 함께 서버로 보낼 데이터 
            method: "POST", // HTTP 요청 메소드(GET, POST 등) 
            //dataType: "json" // 서버에서 보내줄 데이터의 타입 
            }) // HTTP 요청이 성공하면 요청한 데이터가 done() 메소드로 전달됨.
        .done(function(data) { 
               console.log('select history done',data);
               data = JSON.parse(data);
               arrayList_history = data;
               console.log('length',arrayList_history.length);
               
               for(var q=0; q<arrayList_history.length; q++){
                    console.log(arrayList_history[q]['rh_category']);
                    if(arrayList_history[q]['rh_category'] == 'meal'){
                        $.create_li_1();
                    }
               }
            }) // HTTP 요청이 실패하면 오류와 상태에 관한 정보가 fail() 메소드로 전달됨. 
        .fail(function(xhr, status, errorThrown) { 
                alert("실패");
    }) //;
}
$.select_history();
// END



var i = 0;
$.create_li_1 = function(){
    // a tag에 직접 onclick 이벤트를 걸어서 카운팅
    // document.getElementById("divClock").innerText = ampm + hours +":"+minutes+":"+seconds;
    $("<li class='meal' id='meal" + i + "'><span id='m_ck" + i + "'>식사 시간</span><span><a class='alam_icon' onclick='meal(" + i + ")'></a></span></li>").appendTo(".life_list");
    var m_ck = $("ck"+i);
    $("#m_ck"+i).text($.clock()+" 식사시간");
    curtime = '' + $.clock();
    i++;
    email = getCookieValue('email');
    console.log(email, curtime);
   
}

$.create_li_2 = function(){
    $("<li class='sleep' id='sleep"+i+"'><span id='s_ck"+i+"'>취침 시간</span><span><a class='alam_icon' onclick='sleep("+i+")'></a></span></li>").appendTo(".life_list");
    var s_ck = $("ck"+i);
    $("#s_ck"+i).text($.clock() +" 취침시간");
    curtime = '' + $.clock();
    i++;
    email = getCookieValue('email');
    console.log(email, curtime);
    
}


$(".life_icon > li:nth-child(1) > img").on("click",function(){
    // a tag에 직접 onclick 이벤트를 걸어서 카운팅
    // document.getElementById("divClock").innerText = ampm + hours +":"+minutes+":"+seconds;
    $("<li class='meal' id='meal" + i + "'><span id='m_ck" + i + "'>식사 시간</span><span><a class='alam_icon' onclick='meal(" + i + ")'></a></span></li>").appendTo(".life_list");
    var m_ck = $("ck"+i);
    $("#m_ck"+i).text($.clock()+" 식사시간");
    curtime = '' + $.clock();
    i++;
    email = getCookieValue('email');
    console.log(email, curtime);
    $.ajax(
        { 
            url: "../../project1/SaveMeal", // 클라이언트가 HTTP 요청을 보낼 서버의 URL 주소 
            data: {
                email : email,
                curtime : curtime
            }, // HTTP 요청과 함께 서버로 보낼 데이터 
            method: "POST", // HTTP 요청 메소드(GET, POST 등) 
            //dataType: "json" // 서버에서 보내줄 데이터의 타입 
            }) // HTTP 요청이 성공하면 요청한 데이터가 done() 메소드로 전달됨.
        .done(function(data) { 
               console.log(data);
            }) // HTTP 요청이 실패하면 오류와 상태에 관한 정보가 fail() 메소드로 전달됨. 
        .fail(function(xhr, status, errorThrown) { 
                alert("실패");
    }) //;
});


$(".life_icon > li:nth-child(2) > img").on("click",function(){
    $("<li class='sleep' id='sleep"+i+"'><span id='s_ck"+i+"'>취침 시간</span><span><a class='alam_icon' onclick='sleep("+i+")'></a></span></li>").appendTo(".life_list");
    var s_ck = $("ck"+i);
    $("#s_ck"+i).text($.clock() +" 취침시간");
    curtime = '' + $.clock();
    i++;
    email = getCookieValue('email');
    console.log(email, curtime);
    
    $.ajax(
        { 
            url: "../../project1/SaveSleep", // 클라이언트가 HTTP 요청을 보낼 서버의 URL 주소 
            data: {
                email : email,
                curtime : curtime
            }, // HTTP 요청과 함께 서버로 보낼 데이터 
            method: "POST", // HTTP 요청 메소드(GET, POST 등) 
            //dataType: "json" // 서버에서 보내줄 데이터의 타입 
            }) // HTTP 요청이 성공하면 요청한 데이터가 done() 메소드로 전달됨.
        .done(function(data) { 
               console.log(data);
            }) // HTTP 요청이 실패하면 오류와 상태에 관한 정보가 fail() 메소드로 전달됨. 
        .fail(function(xhr, status, errorThrown) { 
                alert("실패");
    }) //;
});


var k = 0;
$(".life_icon > li:nth-child(3) > img").on("click",function(){
    $("<li class='defecate' id='defecate"+k+"'><span id='d_ck"+k+"'>배변 시간</span><span><a class='alam_icon' onclick='defecate("+k+")'></a></span></li>").appendTo(".life_list");
    var d_ck = $("ck"+k);
    $("#d_ck"+k).text($.clock()+ " 배변시간");
    k++;
});
   



// message_test

// 메세지 생성과 동시에 전송
function createAndInsertMessage(id, timestamp) {
	  const container = document.createElement('div');
	  container.innerHTML = MESSAGE_TEMPLATE;
	  const div = container.firstChild;
	  div.setAttribute('id', id);

	  // If timestamp is null, assume we've gotten a brand new message.
	  // https://stackoverflow.com/a/47781432/4816918
	  timestamp = timestamp ? timestamp.toMillis() : Date.now();
	  div.setAttribute('timestamp', timestamp);

	  // figure out where to insert new message
	  const existingMessages = messageListElement.children;
	  if (existingMessages.length === 0) {
	    messageListElement.appendChild(div);
	  } else {
	    let messageListNode = existingMessages[0];

	    while (messageListNode) {
	      const messageListNodeTime = messageListNode.getAttribute('timestamp');

	      if (!messageListNodeTime) {
	        throw new Error(
	          `Child ${messageListNode.id} has no 'timestamp' attribute`
	        );
	      }

	      if (messageListNodeTime > timestamp) {
	        break;
	      }

	      messageListNode = messageListNode.nextSibling;
	    }

	    messageListElement.insertBefore(div, messageListNode);
	  }

	  return div;
	}

	// Displays a Message in the UI.
	function displayMessage(id, timestamp, name, text, picUrl, imageUrl) {
	  var div = document.getElementById(id) || createAndInsertMessage(id, timestamp);

	  // profile picture
	  if (picUrl) {
	    div.querySelector('.pic').style.backgroundImage = 'url(' + addSizeToGoogleProfilePic(picUrl) + ')';
	  }

	  div.querySelector('.name').textContent = name;
	  var messageElement = div.querySelector('.message');

	  if (text) { // If the message is text.  텍스트형 메세지면 이걸로
	    messageElement.textContent = text;
	    // Replace all line breaks by <br>.
	    messageElement.innerHTML = messageElement.innerHTML.replace(/\n/g, '<br>');
	  } else if (imageUrl) { // If the message is an image.   이미지형 메세지면 이걸로
	    var image = document.createElement('img');
	    image.addEventListener('load', function() {
	      messageListElement.scrollTop = messageListElement.scrollHeight;
	    });
	    image.src = imageUrl + '&' + new Date().getTime();
	    messageElement.innerHTML = '';
	    messageElement.appendChild(image);
	  }
	  // Show the card fading-in and scroll to view the new message.
	  setTimeout(function() {div.classList.add('visible')}, 1);
	  messageListElement.scrollTop = messageListElement.scrollHeight;
	  messageInputElement.focus();
	}






});