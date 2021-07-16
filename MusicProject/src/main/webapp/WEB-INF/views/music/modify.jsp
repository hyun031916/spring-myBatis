<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="css/main.css"/>
		<title>음악 수정</title>
	</head>
	<body>
		<form method="post" action="/modify">
		  <div class="container">
		    <h1>음악</h1>
		
		    <b>음악 제목</b>
		    <input type="text" placeholder="${dto.song_title }" name="song_title" required />
		
			<b>가수 </b>
		    <input type="text" placeholder="${dto.song_singer }" name="song_singer" required />
		    
		    <b>장르</b>
		    <input type="text" placeholder="${dto.song_genre }" name="song_genre" required />
		    
		    <b>가격</b>
		    <input type="text" placeholder="${dto.song_price }" name="song_price" required />
		    
		    <b>비밀번호(수정 삭제시 필요)</b>
		    <input type="password" placeholder="${dto.song_passwd }" name="song_passwd" required />
		    
		    <b>발매년도</b>
		    <input type="text" placeholder="${dto.song_date }" name="song_date" required />
		    
		    <button type="submit" class="SubmitButton">수정</button>
		  </div>
		</form>
	</body>
</html>