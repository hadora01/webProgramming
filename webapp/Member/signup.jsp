<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    
<jsp:useBean id = "m" class ="student.Member"/>
<jsp:setProperty name ="m" property ="*"/>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>학생가입정보</title>
</head>
<body>

<h2>학생가입정보</h2>
 <!-- 
 		학번:<%=m.getMemberno()%>
  		이름:<%=m.getMembername() %>
		이메일 :<%=m.getMemberemail() %> 
		
 --> 

<%
	session.setAttribute("mno", m.getMemberno());
	session.setAttribute("mname", m.getMembername());
	session.setAttribute("memail", m.getMemberemail());
	response.sendRedirect(" home.jsp");

%>

</body>
</html>