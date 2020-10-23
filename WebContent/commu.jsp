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
    <!-- content  -->
    <div id="bk">
        <!-- nav -->
        <div id="main_header">
            <div class="left_icon">
                <div class="menu"><img src="img/left_icon.png" width="50px"></div>
                <a href="index.html" class="logo"><img src="img/sub_title2.png" width="100px"></a>
            </div>
            <div class="right_icon"><a href="my_page.html"></a></div>
        </div>
        <!-- bottom_nav -->
        <div class="bottom_nav">
            <ul>
                <li><a href="statistic.html">통계</a></li>
                <li><a href="baby_life.html">육아리듬</a></li>
                <li><a href="commu.html">커뮤니티</a></li>
            </ul>
        </div>
        <!-- content -->
        <div class="life_title">
            <a class="title"></a>
            <h1>커뮤니티 게시판</h1>
        </div>
        <hr class="life_hr commu_hr">
        <div id="content" class="page commu">
            <div id="search">
                <form action="">
                    <select name="">
                        <option value="제목">제목</option>
                        <option value="작성자">작성자</option>
                    </select>
                    <input type="search">
                    <input type="submit" value="검색">
                </form>
            </div>
            <table class="commu_table" id="content2">
                <tbody>
                    <tr>
                        <td>
                            <a href="#">[제목] 마미또 이용 후기</a>  <!--제목을 클릭하면 내용이 보여져야함 -->
                            <spna>
                                <a class="sub_title">2020.10.17</a>
                                <a class="sub_title sc_sub">호랑이 맘</a>
                            </spna>  
                        </td>     
                    </tr>
                    <!-- 여기까지 한줄 -->
                    <tr>
                        <td>
                            <a href="#">[제목] 마미또 이용 후기</a>  <!--제목을 클릭하면 내용이 보여져야함 -->
                            <spna>
                                <a class="sub_title">2020.10.17</a>
                                <a class="sub_title sc_sub">호랑이 맘</a>
                            </spna>  
                        </td>     
                    </tr>
                   
                </tbody>
            </table>
            <br>
            <a  href="commu_write.html" class="commu_btn">글쓰기</a>
        </div>
    </div>
    <script src="script/script_commu.js"></script>
    <script>
    
    function tableCreate(dt){
    	
	    var tc = new Array();
	    var html = "<tbody>";
	   
	    for(var q=0;q<dt.length;q++){
	    	html += `
            	<tr>
                <td>
                    <a href="#">[ 제목 ] `+dt[q].po_title+`</a>  <!--제목을 클릭하면 내용이 보여져야함 -->
                    <spna>
                        <a class="sub_title">`+ dt[q].time +`</a>
                        <a class="sub_title sc_sub">`+ dt[q].email +`      `+ dt[q].po_content.substring(0,30) +`</a>
                    </spna>  
                </td>     
            </tr>`;
	    }
	    html += '</tbody>';
	               
	    $("#content2").empty();
	    $("#content2").append(html);
	    
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
	
	}search();
	//
	
	function gotos(i){
		console.log("i",i);
		location.replace('commu_con.jsp?id="'+i+'\"')
	}
    </script>
</body>
</html>