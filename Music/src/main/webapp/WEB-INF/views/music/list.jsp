<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>음악 리스트</h1>
<c:forEach var='name' items='${list }'>
${name.song_title }, ${name.song_singer }, ${name.song_genre }, ${name.song_price }<br>
</c:forEach>
</body>
</html>