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
			<a class="btn btn-primary btn-lg" href="new">Adicionar novo livro</a>
			&nbsp;&nbsp;&nbsp; <a class="btn btn-primary btn-lg" href="list">Listar
				todos os livros</a> &nbsp;&nbsp;&nbsp; <a class="btn btn-primary btn-lg"
				href="creditos">Creditos</a>

		</h2>
		<c:if test="${book != null}">
			<h3>Editar livro</h3>
		</c:if>
		<c:if test="${book == null}">
			<h3>Adicionar novo livro</h3>
		</c:if>
		<c:if test="${book != null}">
			<form action="update" method="post">
		</c:if>
		<c:if test="${book == null}">
			<form action="insert" method="post">
		</c:if>
		<c:if test="${book != null}">
			<input type="hidden" name="id" value="<c:out value='${book.id}' />" />
		</c:if>
		<div class="form-group">
			<label for="email">Titulo:</label> <input class="form-control"
				type="text" name="title" size="45" placeholder="Titulo"
				value="<c:out value='${book.title}' />" />

		</div>
		<div class="form-group">
			<label for="pwd">Autor:</label> 
			<input class="form-control" type="text" name="author" size="45"
					placeholder="Autor" value="<c:out value='${book.author}' />" />
		</div>
		
		<div class="form-group">
			<label for="pwd">Preço:</label> 
			<input class="form-control" type="text" name="price" size="5"
				placeholder="Preço"	value="<c:out value='${book.price}' />" />
		</div>
		
		<button type="submit" class="btn btn-success">Salvar</button>
		</form>
	</div>
	
	
	
			
	</div>
</body>
</html>