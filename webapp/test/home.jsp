<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<% request.setCharacterEncoding("UTF-8"); %>   <!-- 한글출력위해서  -->


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>가입결과 </title>
</head>
<body>

	<H3>가입결과</H3>
    <h3>학생학번:${m.memberno}</h3>  
	<h3>학생이름 :${m.membername}</h3>
	<h3>학생 이메일 : ${m.memberemail}</h3>
	
</body>
</html>