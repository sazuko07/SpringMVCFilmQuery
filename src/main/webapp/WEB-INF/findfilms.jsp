<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Find Films</title>
</head>
<body>
<c:forEach items="${films }" var="film">
${film.title }
${film.description }
</c:forEach>
</body>
</html>