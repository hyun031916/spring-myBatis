<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>음악 추가 </title>
	<link rel="stylesheet" href="css/main.css"/>
	</head>
	<body>
		<form method="post" action="/add">
		  <div class="container">
		    <h1>음악</h1>
		
		    <b>음악 제목</b>
		    <input type="text" placeholder="music title" name="song_title" required />
		
			<b>가수 </b>
		    <input type="text" placeholder="singer" name="song_singer" required />
		    
		    <b>장르</b>
		    <input type="text" placeholder="genre" name="song_genre" required />
		    
		    <b>가격</b>
		    <input type="text" placeholder="price" name="song_price" required />
		    
		    <b>비밀번호(수정 삭제시 필요)</b>
		    <input type="password" placeholder="password" name="song_passwd" required />
		    
		    <b>발매년도</b>
		    <input type="text" placeholder="date" name="song_date" required />
		    
		    <button type="submit" class="SubmitButton">생성</button>
		  </div>
		</form> 
	</body>
</html>