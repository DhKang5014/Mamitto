<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="script/jquery-3.5.1.min.js"></script>
</head>
<body>
	<ul>
		<li id='mon0'>d</li>
		<li id='mon1'>f</li>
		<li id='mon2'>g</li>
	</ul>
<script>
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

	email = getCookieValue('email');
	$.ajax(
        { 
            url: "project1/GetTest", // 클라이언트가 HTTP 요청을 보낼 서버의 URL 주소 
            data: {
                email : email,
                rh_category : "meal"
            }, // HTTP 요청과 함께 서버로 보낼 데이터 
            method: "POST", // HTTP 요청 메소드(GET, POST 등) 
            //dataType: "json" // 서버에서 보내줄 데이터의 타입 
    }) // HTTP 요청이 성공하면 요청한 데이터가 done() 메소드로 전달됨.
    
    .done(function(data) { 
        data=JSON.parse(data);
        console.log(data);
        console.log(JSON.stringify(data));
               
        for(var i=0;i<data.length;i++){
           console.log(data[i]);
           $('#mon'+i).text(data[i]['rh_count'])
        }
    }) // HTTP 요청이 실패하면 오류와 상태에 관한 정보가 fail() 메소드로 전달됨. 
    
    .fail(function(xhr, status, errorThrown) { 
        alert("실패");
   	}) //;
</script>
</body>
</html>