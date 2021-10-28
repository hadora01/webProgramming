<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% request.setCharacterEncoding("UTF-8"); %>

  <jsp:useBean id="m" class="student.Member" scope="session"/>
  <jsp:setProperty name="m" property="*"/>
  
<%
	
	response.sendRedirect("home.jsp");

%>
  
  