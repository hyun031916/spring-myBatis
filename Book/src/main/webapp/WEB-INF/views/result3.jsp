<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>Book 수정</title>
	</head>
	<body>
		<form method="post" action="/update"/>
			TITLE : <input type="text" name= "title" value="${dto.title }" />
			AUTHOR: <input type="text" name="author" value="${dto.author }"/>
			PRICE: <input type="text" name="price" value="${dto.price }"/>
			<input type="submit" value="수정"/>
		</form>
	</body>
</html>