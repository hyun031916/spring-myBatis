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
<h1>ȸ�� ����Ʈ</h1>
<table border width="700">
<tr><td>���̵�</td><td>�̸�</td><td>�̸���</td><td>���� ��¥</td></tr>
<c:forEach var="test" items="${list1 }">
<tr><td>${test.userid }</td><td>${test.name }</td><td>${test.email }</td><td>${test.join_date }</td>
</table>
</body>
</html>