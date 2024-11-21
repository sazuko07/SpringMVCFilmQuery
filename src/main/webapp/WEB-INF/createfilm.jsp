<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create New Film</title>
</head>
<body>
You have successfully entered a film into the database!<br>
<c:if test="${createAFilm != null}">
	 Title: ${createAFilm.title  }
	 Description: ${createAFilm.description }	 
</c:if>
</body>
</html>