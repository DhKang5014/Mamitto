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
    
    
   



 





})