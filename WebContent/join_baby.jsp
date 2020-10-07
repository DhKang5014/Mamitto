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
<form action="JoinBabyServiceCon.dot">
<!-- 이미 폰번호랑 생일은 받았는데 다시 받아야할까? -->
	<label for="phon_num">PHON_NUM</label>
	<input type="text" id='phon_num' name='phon_num' value="" ><br/>
	
	<p>우리아기 등록하기</p>
	<label for="name">BABY_NAME</label>
	<input type="text" id='baby_name' name='baby_name' value="" ><br/>
	<label for="birth">BIRTH</label>
	<input type="date" id='birth' name='birth' value="" ><br/>
	<label for="gender">BABY_GENDER</label>
	<input type="radio" id='baby_gender_male' name='baby_gender' value="1">남자<input type="radio" id='baby_gender_woman' name='baby_gender' value="2">여자<br/>	
	<input type="submit" value="join">
</form>

</body>
</html>