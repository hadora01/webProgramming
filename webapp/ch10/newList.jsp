<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>


<title>뉴스 관리 앱</title>
</head>

<body>
	<div class="container w-75 mt-5 mx-auto">
	<h2>뉴스관리웹</h2>
	<hr>
	<ul class="list-group">
		<c:forEach var="news" items="${newslist}" varStatus="status">
			<li class="list-group-item list-group-item-action d-flex justify-content-between aligh-items-center">
			<a href="news.nhn?action=getNews&aid=${news.aid}" class="text-decoration-none">[${status.count}]
			${news.title},${news.date}</a>
			<a href="news.nhn?action=deleteNews&aid=${news.aid}">
			<span class="badge bg-secondary">&times;</span></a>
			</li>
		</c:forEach>
	</ul>
	
			<hr>
			<c:if test="${error!=null}">
				<div class="alert alert-danger alert-dismissible fade show mt-3">
				에러발생:${error}
				<button type="button" class="btn-close" data-bs-dismiss="alert"></button>
				</div>
			</c:if>
			<button class="btn btn-outline-info mb-3 type="button" data-bs-toggle="collapse" data-bs-target="#addForm"
			aria-expanded="false" aria-controls="addForm">뉴스등록</button>
			<div class="collapse" id="addForm">
			<div class="card card-body">
				<form method="post" action="/jwbook/news.nhn?action=addNews" enctype="multipart/form-data">
					<label class="form-label">제목</label>
					<input type="text" name="title" class="form-control">
					<label class="form-label">이미지</label>
					<input type="file" name="file" class="form-control">
					<label class="form-label">기사 내용</label>
					<textarea cols="50" rows="5" name="content" class="form-control"></textarea>
					<button type ="submit" class="btn btn-success mt-3">저장</button>
					
					</form>
				</div>
		</div>
				
			
	</div>

</body>
</html>