<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="/add">
	  <div class="container">
	    <h1>음악</h1>
	
	    <b>음악 제목</b>
	    <input type="text" placeholder="music title" name="song_title" required>
	
		<b>가수 </b>
	    <input type="text" placeholder="singer" name="song_title" required>
	    
	    <b>장르</b>
	    <input type="text" placeholder="genre" name="song_title" required>
	    
	    <b>가격</b>
	    <input type="text" placeholder="price" name="song_title" required>
	    
	    <b>비밀번호(수정 삭제시 필요)</b>
	    <input type="text" placeholder="password" name="song_title" required>
	    
	    <button type="submit">생성</button>
	  </div>
	
	  <div class="container signin">
	    <p>Already have an account? <a href="#">Sign in</a>.</p>
	  </div>
	</form> 
</body>
</html>