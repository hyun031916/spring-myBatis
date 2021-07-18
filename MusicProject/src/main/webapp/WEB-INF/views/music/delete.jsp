<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
	var pw = parseInt(prompt("비밀번호를 입력해주세요"));
	if(pw == ${dto.song_passwd}){
		alert("삭제되었습니다. ")
		location.href="delete?id=" + ${dto.id};
	}else {
		alert("비밀번호가 일치하지 않습니다.");
		location.href="list";		}

</script>
<h2> 삭제 되었습니다. </h2>
</body>
</html>