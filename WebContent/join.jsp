<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>join Page</p>
<form action="JoinServiceCon.do" method='post'>
	<label for="email">ID</label>
	<input type="text" id='email' name='email' value="" ><br/>
	<label for="pw">PW</label>
	<input type="password" id='pw' name='pw' value="" ><br/>
	<label for="name">NAME</label>
	<input type="text" id='name' name='name' value="" ><br/>
	<label for="age">AGE</label>
	<input type="text" id='age' name='age' value="" ><br/>
	<label for="gender">GENDER</label>
	<input type="text" id='gender' name='gender' value="" ><br/>	
	<input type="submit" value="join">
</form>
</body>
</html>