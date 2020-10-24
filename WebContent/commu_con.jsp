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
   
    <title>commu_write</title>
</head>
<body>
    <!-- content  -->
    <div id="bk">
        <!-- nav -->
        <div id="main_header">
            <div class="left_icon">
                <div class="menu"><img src="img/left_icon.png" width="50px"></div>
                <a href="index.jsp" class="logo"><img src="img/sub_title2.png" width="100px"></a>
            </div>
            <div class="right_icon"><a href="my_page.jsp"></a></div>
        </div>
        <!-- bottom_nav -->
        <div class="bottom_nav">
            <ul>
                <li><a href="statistic.jsp">통계</a></li>
                <li><a href="baby_life.jsp">육아리듬</a></li>
                <li><a href="commu.jsp">커뮤니티</a></li>
            </ul>
        </div>
        <!-- content -->
        <div id="content" class="page commu commu_write">
            <h1>게시글</h1>
            <form method="POST" action="BoardServlet">
                <table class="write_radio">
                    <tr>
                        <td class="commu_con"id="title_temp" ></td>
                    </tr>
                    <tr>
                        <td class="commu_con write_con" id="content_temp"></td>
                    </tr>
                    <tr class="check">
                        <th>공개여부</th>
                    </tr>
                    <tr>
                        <td>
                            <label for="email" id="private">공개</label>
                        </td>
                    </tr>
                </table>
                <br>
                <!-- <input class="commu_btn commu_write_btn" type="submit" value="등록">  -->
                <input class="commu_btn commu_write_btn commu_write_btn2" type="reset" value="작성하러 가기" onClick="ch_location()">

            </form>
        </div>

    </div>
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

	function getPost(i){	
		$.ajax({
			url : '../../SelectCommucationSpecific',
			method: 'post',
			data : {
				email : emails,
				po_num : i
			}
		}).done(function(data){
			console.log(data);
			data = JSON.parse(data);
			console.log(data);
			$('#title_temp').text(data[0].po_title);
			$('#content_temp').text(data[0].po_content);
			$('#private').text(data[0].po_pw);
		})
	}
	
	function getParameter(name) {
	    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
	    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
	        results = regex.exec(location.search);
	    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
	}
	
	var emails = getCookieValue('email');
	var po_num = getParameter('po_num');
	console.log('po_num', po_num);
	console.log('emails',emails);
	
	getPost(po_num);
	
	function ch_location(){
		location.replace('commu_write.jsp');
	}
	</script>
</body>
</html>


