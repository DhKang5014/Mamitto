

var alarm_red = `<li class="defecate" id="alarm_red">
<a class="alam_left_p" id="index_red">위험</a>
<spna>2020.10.17</spna>
<spna class='meal_color'id="index_red2">위험 합니다.</spna>
</li>`;


var alarm_yellow = `<li class="defecate" id="alarm_yellow">
<a class="alam_left_y">주의</a>
<spna>2020.10.17</spna>
<spna class='sleep_color'>주의가 필요 합니다.</spna>
</li>`;


var alarm_green = `<li class="defecate" id="alarm_safe">
<a class="alam_left_y" id="index_green">안전</a>
<spna>2020.10.17</spna>
<spna class='meal_color' id="index_green2">안전 합니다.</spna>
</li>`;






function ajax_traffic_light(sequence,category){
	$.ajax(
            { 
                url: "../../SelectTraffic", // 클라이언트가 HTTP 요청을 보낼 서버의 URL 주소 
                data: {
                    email : email
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
