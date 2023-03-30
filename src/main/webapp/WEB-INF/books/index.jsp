<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- For any Bootstrap that uses JS -->
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<title>Books</title>
</head>
<body>
	<div class="title text-center mx-auto">
		<h1>All Books</h1>
	</div>
	<table class="table table-bordered border-dark table-striped p-3 col-10 mx-auto" style="width: 65rem;">
	    <thead class="thead-dark bg-dark text-light">
	        <tr>
	            <th>ID</th>
	            <th>Title</th>
	            <th>Language</th>
	            <th>Number of Pages</th>
	        </tr>
	    </thead>
	    <tbody>
	         <!-- loop over all the books to show the details as in the wireframe! -->
	         <c:forEach var="books" items="${books}">
	         <tr>
	    		<td><c:out value="${books.id}"/></td>
	    		<td><a href="/books/<c:out value="${books.id}"/>"><c:out value="${books.title}"/></a></td>
	    		<td><c:out value="${books.language}"/></td>
	    		<td><c:out value="${books.numberOfPages}"/></td>
	         </tr>
	    		
			</c:forEach>
	    </tbody>
	</table>

</body>
</html>