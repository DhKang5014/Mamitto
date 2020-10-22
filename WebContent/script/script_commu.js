function tableCreate(dt){

    var tc = new Array();
    var html = `<thead>
                    <tr>
                        <th>제목</th>
                        <th>작성자</th>
                        <th>날짜</th>
                    </tr>
                </thead>
                <tbody>`;
   

    for(var q=0;q<dt.length;q++){
        html += '<tr>';
        html += '<td>'+dt[q].po_title+'</td>';
        html += '<td>'+dt[q].email+'</td>';
        html += '<td>'+dt[q].time.substring(0,16)+'</td>';
        html += '</tr>';
    }

    html += `</tbody>`;

   

                
    $("#contents").empty();
    $("#contents").append(html);
    
}

function tableCreateSearch(){
	
}

const getCookieValues = (key) => {
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

var emails = getCookieValues('email');
console.log('emails',emails);

$("#search_btn").on("click",function(){
	console.log("search_btn");
	var search_type = $("#search_type").val();
	var search_val = $("#search_val").val();
	$.ajax(
		    { 
		        url: "../../SelectCommunication", // 클라이언트가 HTTP 요청을 보낼 서버의 URL 주소 
		        data: {
		            email : emails,
		            search_type : search_type,
		            search_val : search_val
		        }, // HTTP 요청과 함께 서버로 보낼 데이터 
		        method: "POST", // HTTP 요청 메소드(GET, POST 등) 
		        //dataType: "json" // 서버에서 보내줄 데이터의 타입 
		        }) // HTTP 요청이 성공하면 요청한 데이터가 done() 메소드로 전달됨.
		    .done(function(data) { 
		           console.log(data);
		           data = JSON.parse(data);
		           console.log(data);//
		           tableCreate(data);
		        }) // HTTP 요청이 실패하면 오류와 상태에 관한 정보가 fail() 메소드로 전달됨. 
		    .fail(function(xhr, status, errorThrown) { 
		            alert("실패");
		})
});

$.ajax(
    { 
        url: "../../SelectCommunication", // 클라이언트가 HTTP 요청을 보낼 서버의 URL 주소 
        data: {
            email : emails
        }, // HTTP 요청과 함께 서버로 보낼 데이터 
        method: "POST", // HTTP 요청 메소드(GET, POST 등) 
        //dataType: "json" // 서버에서 보내줄 데이터의 타입 
        }) // HTTP 요청이 성공하면 요청한 데이터가 done() 메소드로 전달됨.
    .done(function(data) { 
           console.log(data);
           data = JSON.parse(data);
           console.log(data);//
           tableCreate(data);
        }) // HTTP 요청이 실패하면 오류와 상태에 관한 정보가 fail() 메소드로 전달됨. 
    .fail(function(xhr, status, errorThrown) { 
            alert("실패");
}) //;