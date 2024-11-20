<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create New Film</title>
</head>
<body>
You have successfully entered a film into the database!<br>
<c:if test="${! empty film}">
	 Title: ${film.title  }
	 Description: ${film.description }	 
</c:if>
</body>
</html>