<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SDPTFilms</title>
</head>
<body>
	<form action="findByKeyword.do">
		<input type="text" name="title" placeholder="input keyword here">
		<input type="submit" name="Find Film By Keyword" value="find film by Keyword">
		
	</form>
	<form action="findById.do">
		<input type="text" name="id" placeholder="input film ID here">
		<input type="submit" name="Find Film By ID" value="find film by ID">
		
	</form>
	<form action="createAFilm.do" method="post">
		<input type="text" name="input a title" placeholder="input title here">
		<input type="text" name="input a description" placeholder="input description here">
		<input type="submit" name="create new film" value="create new film">
	
	
	</form>
</body>
</html>