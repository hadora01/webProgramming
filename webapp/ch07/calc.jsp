<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 <jsp:useBean id = "calc" class="ch07.Calculator"/>
 <jsp:setProperty name ="calc" property="*"/>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>계산결과-useBean</h2>
	<hr>
	결과:<%=calc.calc() %>
	<!-- calc는 위에 useBean 을 해서 불러온 객체를 지칭, 그 안에 메소드 calc를 부르는거 그럼 return 값이 출력 됌  -->
</body>
</html>