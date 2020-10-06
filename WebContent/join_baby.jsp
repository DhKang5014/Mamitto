<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<p>baby_join Page</p>
<form action="index.jsp">
<!-- 이미 폰번호랑 생일은 받았는데 다시 받아야할까? -->
	<label for="id">PHON_NUM</label>
	<input type="text" id='phon_num' name='phon_num' value="" ><br/>
	<label for="pw">BIRTH</label>
	<input type="password" id='birth' name='birth' value="" ><br/>
	
	<p>우리아기 등록하기</p>
	<label for="name">BABY_NAME</label>
	<input type="text" id='baby_name' name='baby_name' value="" ><br/>
	<label for="age">BABY_BIRTH</label>
	<input type="text" id='baby_age' name='baby_age' value="" ><br/>
	<label for="gender">BABY_GENDER</label>
	<input type="radio" id='baby_gender_man' name='baby_gender' value="남자">남자<input type="radio" id='baby_gender_woman' name='baby_gender' value="여자">여자<br/>	
	<input type="submit" value="join">
</form>

</body>
</html>