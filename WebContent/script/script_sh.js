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
// -------------------------------
function meal_pop(){
    $(".meal_bg").css("display","block");
    $(".meal_con").css("display","block");
}
function defe_pop(){
    $(".defe_bg").css("display","block");
    $(".defe_con").css("display","block");
}
function sleep_pop(){
    $(".sleep_bg").css("display","block");
    $(".sleep_con").css("display","block");
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
        
    // creat
        var i = 0;
        $(".life_icon > li:nth-child(1) > img").on("click",function(){
            // a tag에 직접 onclick 이벤트를 걸어서 카운팅
            // document.getElementById("divClock").innerText = ampm + hours +":"+minutes+":"+seconds;
        
            $("<li class='meal' id='meal"+i+"'><a class='alam_left_p'>식사</a><span id='m_ck"+i+"'><br></span><spna class='meal_color'>식사 시간<a onclick='meal_pop()'>check</a></span><a class='alam_icon' onclick='meal("+i+")'></a><a class='correction' onclick='meal_pop()'></a></li>").prependTo(".life_list");
            var m_ck = $("ck"+i);
            $("#m_ck"+i).text($.clock());
            i++;
        });
        var j = 0;
        $(".life_icon > li:nth-child(2) > img").on("click",function(){
            $("<li class='defecate' id='defecate"+j+"'><a class='alam_left_b'>배변</a><span id='s_ck"+j+"'></span><spna class='defecate_color'>배변 시간<a onclick='defe_pop()'>check</a></span><a class='alam_icon' onclick='defecate("+j+")'></a><a class='correction' onclick='defe_pop()'></a></li>").prependTo(".life_list");
            var s_ck = $("ck"+j);
            $("#s_ck"+j).text($.clock());
            j++;
        });
        var k = 0;
        $(".life_icon > li:nth-child(3) > img").on("click",function(){
            $("<li class='sleep' id='sleep"+k+"'><a class='alam_left_y'>수면</a><span id='d_ck"+k+"'></span><spna class='sleep_color'>취침 시간<a onclick='sleep_pop()'>check</a></span><a class='alam_icon' onclick='sleep("+k+")'></a><a class='correction' onclick='sleep_pop()'></a></li>").prependTo(".life_list");
            var d_ck = $("ck"+k);
            $("#d_ck"+k).text($.clock());
            k++;
        });
    
        
    
    // BarChart ------------------------------------------------------
    
        $(".statistic > ul > li:nth-child(1)").on("click",function(){
            $("#columnchart_material1").css("display","block");
            $("#columnchart_material2").css("display","none");
            $("#columnchart_material3").css("display","none");
            $("#columnchart_material4").css("display","none");
            $(this).children("img").attr("src","../img/meal2.png");
            $(".statistic > ul > li:nth-child(2) > img ").attr("src","../img/defe1.png");
            $(".statistic > ul > li:nth-child(3) > img ").attr("src","../img/sleep1.png");
            $(".statistic > ul > li:nth-child(4) > img ").attr("src","../img/kg1.png");
        
        });
        $(".statistic > ul > li:nth-child(2)").on("click",function(){
            $("#columnchart_material1").css("display","none");
            $("#columnchart_material2").css("display","block");
            $("#columnchart_material3").css("display","none");
            $("#columnchart_material4").css("display","none");
            $(this).children("img").attr("src","../img/defe2.png");
            $(".statistic > ul > li:nth-child(1) > img ").attr("src","../img/meal1.png");
            $(".statistic > ul > li:nth-child(3) > img ").attr("src","../img/sleep1.png");
            $(".statistic > ul > li:nth-child(4) > img ").attr("src","../img/kg1.png");
        });
        
        $(".statistic > ul > li:nth-child(3)").on("click",function(){
            $("#columnchart_material1").css("display","none");
            $("#columnchart_material2").css("display","none");
            $("#columnchart_material3").css("display","block");
            $("#columnchart_material4").css("display","none");
            $(this).children("img").attr("src","../img/sleep2.png");
            $(".statistic > ul > li:nth-child(1) > img ").attr("src","../img/meal1.png");
            $(".statistic > ul > li:nth-child(2) > img ").attr("src","../img/defe1.png");
            $(".statistic > ul > li:nth-child(4) > img ").attr("src","../img/kg1.png");
    
        });
            
        $(".statistic > ul > li:nth-child(4)").on("click",function(){
            $("#columnchart_material1").css("display","none");
            $("#columnchart_material2").css("display","none");
            $("#columnchart_material3").css("display","none");
            $("#columnchart_material4").css("display","block");
            $(this).children("img").attr("src","../img/kg2.png");
            $(".statistic > ul > li:nth-child(1) > img ").attr("src","../img/meal1.png");
            $(".statistic > ul > li:nth-child(2) > img ").attr("src","../img/defe1.png");
            $(".statistic > ul > li:nth-child(3) > img ").attr("src","../img/sleep1.png");
    
        });

        


    });




    

      

 


