<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jstl 종합 예제</title>
</head>
<body>
	<h2>JSTL 종합 예제</h2>
	<hr>
	<!-- set, out -->
	<h3>set, out</h3>
	<c:set var ="product1" value ="<b>애플 아이폰</b>" />
	<c:set var ="product2" value = "삼성 갤럭시 노트" />
	<c:set var="intArray" value ="${[1,2,3,4,5]}" />
	<c:set var = "ediya" value ="true"/>
	<c:set var ="coffee" value = "yummy"/>
	<h5>set 이용해 값 저장</h5>
	
	<p>
	product1(jstl) 출력 :
		<c:out value = "${product1}" default = "Not registered" escapeXml="false" />
	</p>
	<p>product1(el) 출력에는 보통 EL 표준 언어를 사용 :${product1} </p>
	<p>intArray[2]:${intArray[2] } </p>
	
	<hr>
	forEach 예시, JSTL에서 가장 널리 사용되는 태그 
	<!-- for each  -->
	<h3>forEach: 배열 출력</h3>
	<ul>
		<c:forEach var="number"  items="${intArray}">
			<li>baby => ${number}</li>
		</c:forEach>
	</ul>
	<!-- if -->
	if문 예제
	<h3>if</h3>
	<c:set var = "checkout" value = "true"/>
	<c:if test ="${checkout}">
		<p>주문제품은 ${product1} </p>
	</c:if>
	
	<c:if test ="${checkout}">
		<p>주문제품이 아님!!</p>
	</c:if>
	
	<!-- choose,when,otherwise -->
	<h3>choose,when,otherwise</h3>
	<c:choose>
		<c:when test ="${ediya}">
			<p>주문제품:${coffee}</p>
	    </c:when>
	    <c:otherwise>
	    	<p>주문제품이 아님!</p>
	    </c:otherwise>
	</c:choose>
	
	<!-- forTokens -->
	<h3>forTokens</h3>
	<c:forTokens var ="city" items="Seoul|Tokyo|New york|Toronto" delims ="|" varStatus ="i">
		<c:if test ="${i.first}"> 도시 목록 :</c:if>
		${city}
		<c:if test ="${!i.last}">,</c:if>
		</c:forTokens>
		
	
	
	
</body>
</html>