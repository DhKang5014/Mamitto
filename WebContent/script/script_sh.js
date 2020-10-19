

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
    
    

// BarChart ------------------------------------------------------

    $(".statistic > ul > li:nth-child(1)").on("click",function(){
        $("#columnchart_material1").css("display","block");
        $("#columnchart_material2").css("display","none");
        $("#columnchart_material3").css("display","none");
        $("#columnchart_material4").css("display","none");
    });
    $(".statistic > ul > li:nth-child(2)").on("click",function(){
        $("#columnchart_material1").css("display","none");
        $("#columnchart_material2").css("display","block");
        $("#columnchart_material3").css("display","none");
        $("#columnchart_material4").css("display","none");
    });
    $(".statistic > ul > li:nth-child(3)").on("click",function(){
        $("#columnchart_material1").css("display","none");
        $("#columnchart_material2").css("display","none");
        $("#columnchart_material3").css("display","block");
        $("#columnchart_material4").css("display","none");

    });
    $(".statistic > ul > li:nth-child(4)").on("click",function(){
        $("#columnchart_material1").css("display","none");
        $("#columnchart_material2").css("display","none");
        $("#columnchart_material3").css("display","none");
        $("#columnchart_material4").css("display","block");

    });
        
      

 


});