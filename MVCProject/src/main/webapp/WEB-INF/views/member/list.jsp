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
<h1>회원리스트</h1>
<table border width="700">
<tr><td>아이디<td>이름<td>이메일<td>가입날짜</td></tr>
<c:forEach var="test" items="${list1 }">
<tr><td>${test.userid }</td><td>${test.name }</td><td>${test.email }</td><td>${test.join_date }</td>
</tr>
</c:forEach>

</table>
<input type="button" value="회원가입" onclick="location.href='member/join'"/>
</body>
</html>