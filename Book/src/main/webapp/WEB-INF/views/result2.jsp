<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Book List</h1>
<c:forEach var='name' items='${list }'>
${name.title }, ${name.author }, ${name.price }<br>
</c:forEach>
</body>
</html>