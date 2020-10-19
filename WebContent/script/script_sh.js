




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




//pop meal------------------------------------------------
temp = 0;
function meal_pop(num){
    $(".meal_bg").css("display","block");
    temp = num;
    $(".meal_con").css("display","block");
}
function meal_bg_save(){
	email = getCookieValue('email');
    curtime = '' + $.clock();
    func_ajax(email,curtime,temp,"meal");
}
//pop defecate------------------------------------------------
function defe_pop(num){
    $(".defe_bg").css("display","block");
    temp = num;
    $(".defe_con").css("display","block");
}
function defe_bg_save(){
	email = getCookieValue('email');
    curtime = '' + $.clock();
    func_ajax(email,curtime,temp,"defecate");
}
//pop sleep------------------------------------------------
function sleep_pop(num){
    $(".sleep_bg").css("display","block");
    temp = num;
    $(".sleep_con").css("display","block");
}
function sleep_bg_save(){
	email = getCookieValue('email');
    curtime = '' + $.clock();
    func_ajax(email,curtime,temp,"sleep");
}

//------------------------------------------------------


function func_ajax(email,curtime,num,category){
	$.ajax(
            { 
                url: "../../SaveMealBG", // 클라이언트가 HTTP 요청을 보낼 서버의 URL 주소 
                data: {
                    email : email,
                    curtime : curtime,
                    num : num,
                    category : category
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


//statistic -------------------------------------------------
 

// jquery ----------------------------------------------------------------------------
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
    var cnt = 1;
    $(".menu").on("click",function(){
        if(cnt %2 != 0){
            $(".menu_bar").animate({left:"0em"},"slow");
            cnt++;
        }else if(cnt %2 == 0){
            $(".menu_bar").animate({left:"-25em"},"slow");
            cnt++;
        }
    });

     $(".menu_bar").on("click",function(){
        $(".menu_bar").animate({left:"-25em"},"slow");
        cnt++;
    });

    // content-page----------------------------------------------
    setInterval(function(){
        $(".page").animate({"margin-top":"0em"},"slow");
    });
  
    //my_page ---------------------------------------------------
    $(".popup").on("click",function(){
        $(".pop_bg").css("display","block");
    });

    $(".btn").on("click",function(){
        $(".pop_bg").css("display","none");
    });

    //index_pop -------------------------------------------------
    $(".play_btn").on("click",function(){
        $(".pop_bg").css("display","block");
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
    
// creat life
/*    var i = 0;
    $(".life_icon > li:nth-child(1) > img").on("click",function(){
        // a tag에 직접 onclick 이벤트를 걸어서 카운팅
        // document.getElementById("divClock").innerText = ampm + hours +":"+minutes+":"+seconds;
    
        $("<li class='meal' id='meal"+i+"'><a class='alam_left_p'>식사</a><span id='m_ck"+i+"'><br></span><spna class='meal_color'>식사 시간<a onclick='meal_pop()'>check</a></span><a class='alam_icon' onclick='meal("+i+")'></a></li>").prependTo(".life_list");
        var m_ck = $("ck"+i);
        $("#m_ck"+i).text($.clock());
        i++;
    });
    var j = 0;
    $(".life_icon > li:nth-child(2) > img").on("click",function(){
        $("<li class='defecate' id='defecate"+j+"'><a class='alam_left_b'>배변</a><span id='s_ck"+j+"'></span><spna class='defecate_color'>배변 시간<a onclick='defe_pop()'>check</a></span><a class='alam_icon' onclick='defecate("+j+")'></a></li>").prependTo(".life_list");
        var s_ck = $("ck"+j);
        $("#s_ck"+j).text($.clock());
        j++;
    });
    var k = 0;
    $(".life_icon > li:nth-child(3) > img").on("click",function(){
        $("<li class='sleep' id='sleep"+k+"'><a class='alam_left_y'>수면</a><span id='d_ck"+k+"'></span><spna class='sleep_color'>취침 시간<a onclick='sleep_pop()'>check</a></span><a class='alam_icon' onclick='sleep("+k+")'></a></li>").prependTo(".life_list");
        var d_ck = $("ck"+k);
        $("#d_ck"+k).text($.clock());
        k++;
    });
*/
    

// BarChart ------------------------------------------------------

    $(".statistic > ul > li:nth-child(1)").on("click",function(){
        $("#columnchart_material1").css("display","block");
        $("#columnchart_material2").css("display","none");
        $("#columnchart_material3").css("display","none");
    });
    $(".statistic > ul > li:nth-child(2)").on("click",function(){
        $("#columnchart_material1").css("display","none");
        $("#columnchart_material3").css("display","none");
        $("#columnchart_material2").css("display","block");
    });
    $(".statistic > ul > li:nth-child(3)").on("click",function(){
        $("#columnchart_material1").css("display","none");
        $("#columnchart_material2").css("display","none");
        $("#columnchart_material3").css("display","block");

    });
        
      

 


});