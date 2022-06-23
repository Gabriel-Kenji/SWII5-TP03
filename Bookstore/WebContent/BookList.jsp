<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Books Store Application</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
</head>
<body>
	
	<div class="container">
		
			<h1 class="text-center">Gerenciamento de livros</h1>
			<h2 class="text-center">
				<a class="btn btn-primary btn-lg" href="new">Adicionar novo livro</a> &nbsp;&nbsp;&nbsp; 
				<a class="btn btn-primary btn-lg" href="list">Listar todos os livros</a> &nbsp;&nbsp;&nbsp; 
				<a class="btn btn-primary btn-lg" href="creditos">Creditos</a>
	
			</h2>
		
	
		<h2>Lista de livros</h2>  
		<table class="table table-dark">
			<thead>
				<tr>
					<th>ID</th>
					<th>Title</th>
					<th>Author</th>
					<th>Price</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="book" items="${listBook}">
					<tr>
						<td><c:out value="${book.id}" /></td>
						<td><c:out value="${book.title}" /></td>
						<td><c:out value="${book.author}" /></td>
						<td><c:out value="${book.price}" /></td>
						<td><a class="btn btn-warning btn-sm" href="edit?id=<c:out value='${book.id}' />">Editar</a>
							&nbsp;&nbsp;&nbsp;&nbsp; 
							<a class="btn btn-danger btn-sm" href="delete?id=<c:out value='${book.id}' />">Deletar</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
		crossorigin="anonymous"></script>
</body>
</html>
