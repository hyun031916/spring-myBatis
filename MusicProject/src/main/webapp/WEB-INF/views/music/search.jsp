<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="css/main.css"/>
<title>Insert title here</title>
</head>
<body>
		<form method="post" action="/search">
		  <div class="container">
		    <h1>음악 검색</h1>
		
		    <b>음악 제목</b>
		    <input type="text" placeholder="music title" name="song_title" />
		    
		    <button type="submit" class="SubmitButton">검색</button>
		  </div>
		</form> 
</body>
</html>