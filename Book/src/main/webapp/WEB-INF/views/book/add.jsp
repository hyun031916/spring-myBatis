<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>BOOK</title>
	</head>
	<body>
		<form method="post" action="/add"/>
			TITLE : <input type="text" name="title" />
			AUTHOR: <input type="text" name="author"/>
			PRICE: <input type="text" name="price"/>
			<input type="submit" value="전송"/>
		</form>
	</body>
</html>