<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>음악 목록 보기</title>
</head>
<body>
	<table class="styled-table">
	    <thead>
	        <tr>
	        	<th>번호</th>
	            <th>제목</th>
	            <th>가수</th>
	            <th>장르</th>
	            <th>가격</th>
	            <th>생산날짜</th>
	            <th>기타</th>
	        </tr>
	    </thead>
	    <tbody>
		    <c:forEach var='name' items='${list }'>
				<tr>
		            <td>${name.id }</td>
		            <td>${name.song_title }</td>
		            <td>${name.song_singer }</td>
		            <td>${name.song_genre }</td>
		            <td>${name.song_price }</td>
		            <td>${name.song_date }</td>
		            <td><a href="modify">수정</a><a href="/delete?id=${name.id }">삭제</a>
	        	</tr>
			</c:forEach>
	        
	    </tbody>
	</table>
</body>
</html>