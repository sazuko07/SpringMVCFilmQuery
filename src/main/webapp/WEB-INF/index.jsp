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
		<input type="text" name="title">
		<input type="submit" name="Find Film By Keyword" value="find">
		
	</form>
	<form action="findById.do">
		<input type="text" name="id">
		<input type="submit" name="Find Film By ID" value="find">
		
	</form>
</body>
</html>