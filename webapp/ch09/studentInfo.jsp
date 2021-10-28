<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>학생정보 db table</h2>
	<hr>
	<table border ="2">
	<tr>
		<th>id</th>
		<th>이름</th>
		<th>대학</th>
		<th>생일</th>
		<th>이메일</th>
	</tr>
	<c:forEach items="${students}" var="s">
		<tr>
			<td>${s.id}</td>
			<td>${s.username}</td>
			<td>${s.univ}</td>
			<td>${s.birth}</td>
			<td>${s.email}</td>
		</tr>
	</c:forEach>
	</table>
	<hr>
	<h2>학생추가</h2>
	<hr>
	<form method="post" action="/jwbook/StudentControl?action=insert">
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