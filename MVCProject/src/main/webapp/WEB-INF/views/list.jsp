<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>회원 리스트</h1>
<table border width="700">
<tr><td>아이디</td><td>이름</td><td>이메일</td><td>가입 날짜</td></tr>
<c:forEach var="test" items="${list1 }">
<tr><td>${test.userid }</td><td>${test.name }</td><td>${test.email }</td><td>${test.join_date }</td>
</table>
</body>
</html>