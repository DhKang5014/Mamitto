




// baby life remove ------------------------------------------
/*function meal(i){
    $('li#meal'+i).remove();
}

function sleep(j){
    $('li#sleep'+j).remove();
}

function defecate(k){
   $('li#defecate'+k).remove();
}*/
// -------------------------------------------------

function meal(i){
    $('li#meal'+i).remove();
}

function sleep(j){
    $('li#sleep'+j).remove();
}

function defecate(k){
   $('li#defecate'+k).remove();
}



//pop meal------------------------------------------------
temp = 0;
function meal_pop(num){
    $(".meal_bg").css("display","block");
    temp = num;
    $(".meal_con").css("display","block");
}
function meal_bg_save(){
	email = getCookieValue('email').replace('\"','').replace('\"','');
    curtime = '' + $.clock();
    func_ajax(email,curtime,temp,"meal");
    $(".meal_bg").css("display","none");
    $(".meal_con").css("display","none");
}
//pop defecate------------------------------------------------
function defe_pop(num){
    $(".defe_bg").css("display","block");
    temp = num;
    $(".defe_con").css("display","block");
}
function defe_bg_save(){
	email = getCookieValue('email').replace('\"','').replace('\"','');
    curtime = '' + $.clock();
    func_ajax(email,curtime,temp,"defecate");
    $(".defe_bg").css("display","none");
    $(".defe_con").css("display","none");
}
//pop sleep------------------------------------------------
function sleep_pop(num){
    $(".sleep_bg").css("display","block");
    temp = num;
    $(".sleep_con").css("display","block");
}
function sleep_bg_save(){
	email = getCookieValue('email').replace('\"','').replace('\"','');
    curtime = '' + $.clock();
    func_ajax2(email,curtime,temp,"sleep");
    $(".sleep_bg").css("display","none");
    $(".sleep_con").css("display","none");
    
}

//------------------------------------------------------


function func_ajax(email,curtime,num,category){
	ajax_category = "";
	input_text = "";
	if(category=="meal"){
		ajax_category = "Meal";
		input_text = $('#mL').val();
		$("#meal_pop"+num).text(input_text+" ml");
	}else if(category == "sleep"){
		ajax_category = "Sleep";
		input_text = $('#time').val();
		
	}else if(category == "defecate"){
		ajax_category = "Defe";
		//input_text = $('#volume').val();
		input_text = $('input[name="volume"]:checked').val();
		var volu = '';
		if(input_text == '많다'){
			volu = '많음';
		}else if(input_text =='보통'){
			volu = '보통';
		}else{
			volu ='적음';
		}
		$("#defe_pop"+num).text(volu);
	}
	console.log("ajax_category", ajax_category);
	console.log("input_text", input_text);
	
	
	$.ajax(
            { 
                url: "../../Save"+ajax_category+"BG", // 클라이언트가 HTTP 요청을 보낼 서버의 URL 주소 
                data: {
                    email : email,
                    curtime : curtime,
                    num : num,
                    category : category,
                    input_text : input_text
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
}
//---------------------------------
function func_ajax2(email,curtime,num,category){
	
	ajax_category = "Sleep";
	
	input_text1 = $('input[name="time1"]').val();
	var ktf = input_text1.split('T');
	input_text1 = ktf[0] + ' ' +ktf[1]
	input_text1 = input_text1.replace("-","/");
	input_text1 = input_text1.replace("-","/");
	
	input_text2 = $('input[name="time2"]').val();
	var ktf = input_text2.split('T');
	input_text2 = ktf[0] + ' ' +ktf[1]
	input_text2 = input_text2.replace("-","/");
	input_text2 = input_text2.replace("-","/");
	
	console.log("ajax_category", ajax_category);
	console.log("input_text", input_text1);
	$("#sleep_pop"+num).text(input_text1 + " ~ " + input_text2);
	$.ajax(
            { 
                url: "../../Save"+ajax_category+"BG", // 클라이언트가 HTTP 요청을 보낼 서버의 URL 주소 
                data: {
                    email : email,
                    curtime : curtime,
                    num : num,
                    category : category,
                    input_text1 : input_text1,
                    input_text2 : input_text2
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
// baby life remove ---------------------------------------d---
function meal(i){
    $('li#meal'+i).remove();
    
    curtime = '' + $.clock();
    email = getCookieValue('email').replace('\"','').replace('\"','');
    console.log(email, curtime);
    $.ajax(
        { 
            url: "../../DeleteMeal", // 클라이언트가 HTTP 요청을 보낼 서버의 URL 주소 
            data: {
                email : email,
                curtime : curtime,
                num : i
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

}

function sleep(j){
    $('li#sleep'+j).remove();
    
    
    curtime = '' + $.clock();
    email = getCookieValue('email').replace('\"','').replace('\"','');
    console.log(email, curtime);
    $.ajax(
        { 
            url: "../../DeleteSleep", // 클라이언트가 HTTP 요청을 보낼 서버의 URL 주소 
            data: {
                email : email,
                curtime : curtime,
                num : j
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
}

function defecate(k){
   $('li#defecate'+k).remove();

   curtime = '' + $.clock();
    email = ('email').replace('\"','').replace('\"','');
    console.log(email, curtime);
    $.ajax(
        { 
            url: "../../DeleteDefecate", // 클라이언트가 HTTP 요청을 보낼 서버의 URL 주소 
            data: {
                email : email,
                curtime : curtime,
                num : k
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
}



$(function(){

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

$.clockChange = function(t){
    var now = t;
    var hours = now.split(':')[0].slice(-2);
    var minutes = now.split(':')[1];
    var seconds = now.split(':')[2].slice(0, 2);

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
        minutes = minutes;
    }
    if(seconds < 10){
        seconds = seconds;
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

    email = getCookieValue('email').replace('\"','').replace('\"','');
    curtime = '' + $.clock();
	var path = window.location.pathname;
	console.log(path);
    $.ajax(
        { 
            url: "../../SelectMeal", // 클라이언트가 HTTP 요청을 보낼 서버의 URL 주소 
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
                    console.log(q+'번째 반복',arrayList_history[q]['rh_category']);
                    if(arrayList_history[q]['rh_category'] == 'meal'){
                        $.create_li_1(arrayList_history[q]['rh_num'], arrayList_history[q]['rh_time']);
                        console.log('for문 시간',arrayList_history[q]['rh_time']);
                        if(arrayList_history[q]['rh_meal'] != undefined){
                        	console.log('asdf', arrayList_history[q]['rh_num'], arrayList_history[q]['rh_meal']);
                        	$("#meal_pop"+arrayList_history[q]['rh_num']).text(arrayList_history[q]['rh_meal'] +" mL");
                        }
                    }
                    if(arrayList_history[q]['rh_category'] == 'sleep'){
                        $.create_li_3(arrayList_history[q]['rh_num'], arrayList_history[q]['rh_time']);
                        console.log('for문 시간',arrayList_history[q]['rh_time']);
                        console.log('rh_sleep', arrayList_history[q]['rh_num'], arrayList_history[q]['rh_sleep']);
                        if(arrayList_history[q]['rh_sleep'] != undefined){
                        	console.log('asdf2', arrayList_history[q]['rh_num'], arrayList_history[q]['rh_sleep']);
                    
                        	$("#sleep_pop"+arrayList_history[q]['rh_num']).text(arrayList_history[q]['rh_time'].replace('-','/').replace('-','/').substring(0,16) + " ~ " + arrayList_history[q]['rh_sleep'].replace('-','/').replace('-','/').substring(0,16));
                        }
                    }
                    if(arrayList_history[q]['rh_category'] == 'defecate'){
                        $.create_li_2(arrayList_history[q]['rh_num'], arrayList_history[q]['rh_time']);
                        console.log('for문 시간',arrayList_history[q]['rh_time']);
                        if(arrayList_history[q]['rh_defecate'] != undefined){
                        	console.log('asdf3', arrayList_history[q]['rh_num'],arrayList_history[q]['rh_defecate']);
                        	$("#defe_pop"+arrayList_history[q]['rh_num']).text(arrayList_history[q]['rh_defecate']);
                        }
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
$.ajax(
    { 
        url: "../../GetSequence_baby_life", // 클라이언트가 HTTP 요청을 보낼 서버의 URL 주소 
        //data: {
        //    email : email,
        //    curtime : curtime
        //}, // HTTP 요청과 함께 서버로 보낼 데이터 
        //method: "POST", // HTTP 요청 메소드(GET, POST 등) 
        //dataType: "json" // 서버에서 보내줄 데이터의 타입 
        }) // HTTP 요청이 성공하면 요청한 데이터가 done() 메소드로 전달됨.
    .done(function(data) { 
        console.log('sequence size' , data)
        i = Number(data) + 1;
    }) // HTTP 요청이 실패하면 오류와 상태에 관한 정보가 fail() 메소드로 전달됨. 
    .fail(function(xhr, status, errorThrown) { 
            alert("실패");
}) //;





$.create_li_1 = function(q, t){
    // a tag에 직접 onclick 이벤트를 걸어서 카운팅
    // document.getElementById("divClock").innerText = ampm + hours +":"+minutes+":"+seconds;
	$("<li class='meal' id='meal"+q+"'><a class='alam_left_p'>식사</a><span id='m_ck"+q+"'><br></span><spna class='meal_color'>식사 시간<a id='meal_pop"+q+"' onclick='meal_pop("+q+")'>check</a></span><a class='alam_icon' onclick='meal("+q+")'></a><a class='correction' onclick='meal_pop("+q+")'></a></li>").prependTo(".life_list");
    var m_ck = $("ck"+q);
    $("#m_ck"+q).text($.clockChange(t)+" 식사시간");
    curtime = '' + $.clockChange(t);
    i = q+1;
    email = getCookieValue('email').replace('\"','').replace('\"','');
    console.log(email, curtime);
}

$.create_li_2 = function(q, t){
	$("<li class='defecate' id='defecate"+q+"'><a class='alam_left_b'>배변</a><span id='s_ck"+q+"'></span><spna class='defecate_color'>배변 시간<a id='defe_pop" + q + "' onclick='defe_pop("+q+")'>check</a></span><a class='alam_icon' onclick='defecate("+q+")'></a><a class='correction' onclick='defe_pop("+q+")'></a></li>").prependTo(".life_list");
    var s_ck = $("ck"+q);
    $("#s_ck"+q).text($.clockChange(t) +" 배변시간");
    curtime = '' + $.clockChange(t);
    i = q+1;
    email = getCookieValue('email').replace('\"','').replace('\"','');
    console.log(email, curtime);
    
}

$.create_li_3 = function(q, t) {
	$("<li class='sleep' id='sleep"+q+"'><a class='alam_left_y'>수면</a><span id='d_ck"+q+"'></span><spna class='sleep_color'>취침 시간<a id='sleep_pop" + q + "' onclick='sleep_pop("+q+")'>check</a></span><a class='alam_icon' onclick='sleep("+q+")'></a><a class='correction' onclick='sleep_pop("+q+")'></a></li>").prependTo(".life_list");
    var d_ck = $("ck"+q);
    $("#d_ck"+q).text($.clockChange(t)+ " 취짐시간");
    curtime = '' + $.clockChange(t);
    i = q+1;
    email = getCookieValue('email').replace('\"','').replace('\"','');
    console.log(email, curtime);
}

$(".life_icon > li:nth-child(1) > img").on("click",function(){
    // a tag에 직접 onclick 이벤트를 걸어서 카운팅
    // document.getElementById("divClock").innerText = ampm + hours +":"+minutes+":"+seconds;
	$("<li class='meal' id='meal"+i+"'><a class='alam_left_p'>식사</a><span id='m_ck"+i+"'><br></span><spna class='meal_color'>식사 시간<a id='meal_pop"+i+"' onclick='meal_pop("+i+")'>check</a></span><a class='alam_icon' onclick='meal("+i+")'></a><a class='correction' onclick='sleep_pop("+i+")'></a></li>").prependTo(".life_list");
    var m_ck = $("ck"+i);
    $("#m_ck"+i).text($.clock()+" 식사시간");
    curtime = '' + $.clock();
    i++;
    email = getCookieValue('email').replace('\"','').replace('\"','');
    console.log(email, curtime);
    $.ajax(
        { 
            url: "../../SaveMeal", // 클라이언트가 HTTP 요청을 보낼 서버의 URL 주소 
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
	$("<li class='defecate' id='defecate"+i+"'><a class='alam_left_b'>배변</a><span id='s_ck"+i+"'></span><spna class='defecate_color'>배변 시간<a id='defe_pop" + i + "' onclick='defe_pop("+i+")'>check</a></span><a class='alam_icon' onclick='defecate("+i+")'></a><a class='correction' onclick='defe_pop("+i+")'></a></li>").prependTo(".life_list");
    var s_ck = $("ck"+i);
    $("#s_ck"+i).text($.clock() +" 배변시간");
    curtime = '' + $.clock();
    i++;
    email = getCookieValue('email').replace('\"','').replace('\"','');
    console.log(email, curtime);
    
    $.ajax(
        { 
            url: "../../SaveDefecate", // 클라이언트가 HTTP 요청을 보낼 서버의 URL 주소 
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


$(".life_icon > li:nth-child(3) > img").on("click",function(){
	$("<li class='sleep' id='sleep"+i+"'><a class='alam_left_y'>수면</a><span id='d_ck"+i+"'></span><spna class='sleep_color'>취침 시간<a id='sleep_pop" + i+ "' onclick='sleep_pop("+i+")'>check</a></span><a class='alam_icon' onclick='sleep("+i+")'></a><a class='correction' onclick='sleep_pop("+i+")'></a></li>").prependTo(".life_list");
     var d_ck = $("ck"+i);
    $("#d_ck"+i).text($.clock()+ " 수면시간");
    curtime = '' + $.clock();
    i++;
    email = getCookieValue('email').replace('\"','').replace('\"','');
    console.log(email, curtime);
    
    $.ajax(
        { 
            url: "../../SaveSleep", // 클라이언트가 HTTP 요청을 보낼 서버의 URL 주소 
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




   
 
});




