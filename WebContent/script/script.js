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
    today = yyyy+'. '+mm+'. '+dd;
    // document.write(today);
    var element = document.getElementById("date");
    element.innerText = today;
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
    var i = 0;
    $(".life_icon > li:nth-child(1) > img").on("click",function(){
        // a tag에 직접 onclick 이벤트를 걸어서 카운팅
        // document.getElementById("divClock").innerText = ampm + hours +":"+minutes+":"+seconds;
        $("<li class='meal' id='meal"+i+"'><span id='m_ck"+i+"'>식사 시간</span><span><a class='alam_icon' onclick='meal("+i+")'></a></span></li>").appendTo(".life_list");
        var m_ck = $("ck"+i);
        $("#m_ck"+i).text($.clock()+" 식사시간");
        i++;
    });
    var j = 0;
    $(".life_icon > li:nth-child(2) > img").on("click",function(){
        $("<li class='sleep' id='sleep"+j+"'><span id='s_ck"+j+"'>취침 시간</span><span><a class='alam_icon' onclick='sleep("+j+")'></a></span></li>").appendTo(".life_list");
        var s_ck = $("ck"+j);
        $("#s_ck"+j).text($.clock() +" 취침시간");
        j++;
    });
    var k = 0;
    $(".life_icon > li:nth-child(3) > img").on("click",function(){
        $("<li class='defecate' id='defecate"+k+"'><span id='d_ck"+k+"'>배변 시간</span><span><a class='alam_icon' onclick='defecate("+k+")'></a></span></li>").appendTo(".life_list");
        var d_ck = $("ck"+k);
        $("#d_ck"+k).text($.clock()+ " 배변시간");
        k++;
    });
   
    
    
        
        
      

 





});