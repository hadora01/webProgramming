<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>학생정보 db table</h2><a href="/jwbook/studentControl">새로고침</a>
	<hr>
	<h2>학생추가</h2>
	<hr>
	<form method="post" action="/jwbook/studentControl?action=insert">
		<label>이름</label>
		<input type ="text" name="username"><br>
		<label>대학</label>
		<input type ="text" name="univ"><br>
		<label>생일</label>
		<input type ="text" name="birth"><br>
		<label>이메일</label>
		<input type ="text" name="email"><br>
		<button type ="submit">등록</button>
		
		</form>
	
</body>
</html>