<%@page import="com.DAO.selectDAO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 여기 복사 -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <link rel="stylesheet" href="css/style.css">
    <!-- font -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <script src="script/jquery-3.5.1.min.js"></script>
    <script src="script/script_sh.js"></script>
    <script src="script/redirect_login.js"></script>
    
    <title>commu</title>
</head>
<body>
    <!-- content  -->
    <div id="bk">
        <!-- nav -->
		<%@ include file = "menu.jsp" %>
        <!-- content -->
        <div class="life_title">
            <a class="title"></a>
            <h1>커뮤니티 게시판</h1>
        </div>

        <hr class="life_hr commu_hr">
        
        <div class="page commu">
            <div id="search">
                <form action="" method="post">
                    <select id="search_type" name="search_type">
                        <option value="po_title">제목</option>
                        <option value="email">작성자</option>
                    </select>
                    <input type="search" id="search_val" name="search_val">
<!--                     <button onclick="" id="search_btn">검색</button> -->
                    <input type="button" id="search_btn" value="검색" onclick="search()">
                </form>
            </div>
            <table class="commu_table" id='contents'>
                <thead>
                    <tr>
                        <th>번호</th>
                        <th>제목</th>
                        <th>작성자</th>
                        <th>날짜</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                    </tr>
             
                </tbody>
            </table>
            <br>
            <a  href="commu_write.jsp" class="commu_btn">글쓰기</a>
        </div>
    </div>
    <script src="script/script_commu.js"></script>
    <script>
    
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
	//
	var emails = getCookieValue('email');
	console.log('emails',emails);
	//
    
    
    function search() {
    	
		console.log("search_btn");
		var search_types = $("#search_type").val();
		var search_vals = $("#search_val").val();
		$.ajax(
			    { 
			        url: "../../SelectCommunication", // 클라이언트가 HTTP 요청을 보낼 서버의
														// URL 주소
			        data: {
			            email : emails,
			            search_type : search_types,
			            search_val : search_vals
			        }, // HTTP 요청과 함께 서버로 보낼 데이터
			        method: "POST", // HTTP 요청 메소드(GET, POST 등)
			        // dataType: "json" // 서버에서 보내줄 데이터의 타입
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
	
	}
	//
    </script>
</body>
</html>