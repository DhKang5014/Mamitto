
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