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
    // $(".meal_bg").fadeIn();
    // $(".meal_con").fadeIn();
    

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
        
       
        //join --------------------------------------------------
//        function check(){
//        	
//        	var pw = $("#pw");
//        	
//        	 if(pw.value.length < 6 || pw.value.length > 8){
//        		pw.focus();
//        		alert("비밀번호는 6~8자리로 입력해 주세요.")
//        		
//        		return false;
//        	 }
//        	 return true;
//        }
//        
    
        // open --------------------------------------------------
        setInterval(function(){
            $("#open").fadeOut();
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
            $("#move").animate({"width":"8em"},"slow")
            $(".life_hr").animate({"width":"8em"},"slow")
        });
      
        //my_page ---------------------------------------------------
        $(".popup").on("click",function(){
            // $(".pop_bg").css("display","block");
            $(".pop_bg").fadeIn();
        });
    
        $(".btn").on("click",function(){
            $(".pop_bg").css("display","none");

        });
    
        //index_pop -------------------------------------------------
        $(".play_btn").on("click",function(){
            // $(".pop_bg").css("display","block");
            $(".pop_bg").fadeIn();
        });
        
        //alam_pop
        $(".menu").on("click", function(){
            $("#alam_pop").stop().animate({"top":"0px"},"slow");
            setInterval(function(){
                $("#alam_pop").animate({"display":"block"},"slow",function(){
                    $(this).css("display","none");
                });
            },100);
            setInterval(function(){
                $("#alam_pop").animate({"display":"none"},"slow",function(){
                    $(this).css("display","block");
                });
            },100);
        });


        $("#alam_pop > h2").on("click", function(){
            
            $("#alam_pop").animate({"top":"-81px"},"slow");
        });
        $('.menu').on('click',function(){
            $("#alam_pop").css('display','block')
        })
        $("#alam_pop").on('click',function(){
            $("#alam_pop").css('display','none')
        })
        


       

        
     
        
    


    
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
       
        
    
    // BarChart ------------------------------------------------------
    
        $(".statistic > ul > li:nth-child(1)").on("click",function(){
            $("#columnchart_material1").css("display","block");
            $("#columnchart_material2").css("display","none");
            $("#columnchart_material3").css("display","none");
            $(this).children("img").attr("src","../img/meal2.png");
            $(".statistic > ul > li:nth-child(2) > img ").attr("src","../img/defe1.png");
            $(".statistic > ul > li:nth-child(3) > img ").attr("src","../img/sleep1.png");
            $(".statistic > ul > li:nth-child(4) > img ").attr("src","../img/kg1.png");
        
        });
        $(".statistic > ul > li:nth-child(2)").on("click",function(){
            $("#columnchart_material1").css("display","none");
            $("#columnchart_material3").css("display","none");
            $("#columnchart_material2").css("display","block");
            $(this).children("img").attr("src","../img/defe2.png");
            $(".statistic > ul > li:nth-child(1) > img ").attr("src","../img/meal1.png");
            $(".statistic > ul > li:nth-child(3) > img ").attr("src","../img/sleep1.png");
            $(".statistic > ul > li:nth-child(4) > img ").attr("src","../img/kg1.png");
        });
        $(".statistic > ul > li:nth-child(3)").on("click",function(){
            $("#columnchart_material1").css("display","none");
            $("#columnchart_material2").css("display","none");
            $("#columnchart_material3").css("display","block");
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

function check() {

	console.log("email insert");
	var emails = $("#email").val();
	$.ajax(
		    { 
		        url: "../../SelectCheckEmail", // 클라이언트가 HTTP 요청을 보낼 서버의 URL 주소 
		        data: {
		            email : emails,
		        }, // HTTP 요청과 함께 서버로 보낼 데이터 
		        method: "POST", // HTTP 요청 메소드(GET, POST 등) 
		        //dataType: "json" // 서버에서 보내줄 데이터의 타입 
		    }) // HTTP 요청이 성공하면 요청한 데이터가 done() 메소드로 전달됨.
		    .done(function(data) { 
		           console.log(data);
  
					  if (data >0) {
						  $('#id_check_on').css('display','none'); 
						  $('#id_check_off').css('display','block');  // 필요한 문장보여주기, 불필요한것은 none으로 안보이게				
					} else {				
					  $('#id_check_on').css('display','block'); 
					  $('#id_check_off').css('display','none');
					}

		    }) // HTTP 요청이 실패하면 오류와 상태에 관한 정보가 fail() 메소드로 전달됨. 
		    .fail(function(xhr, status, errorThrown) { 
		            alert("실패"); 
		})
		
		// 클릭 있을 때 selectcheckemail 을 돌아 나온 data int 값에 따라 표시 값 변경

}


    

      

 


