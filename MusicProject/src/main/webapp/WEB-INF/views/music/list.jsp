<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>음악 목록 보기</title>
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>
	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100 ver1 m-b-110">
					<div class="table100-head">
						<table>
						    <thead>
						        <tr class="row100 head">
						        	<th class="cell100 column1">번호</th>
						            <th class="cell100 column2">제목</th>
						            <th class="cell100 column3">가수</th>
						            <th class="cell100 column4">장르</th>
						            <th class="cell100 column5">가격</th>
						            <th class="cell100 column6">생산날짜</th>
						            <th class="cell100 column7">기타</th>
						        </tr>
						    </thead>
						 </table>
						 </div>
						 <div class="table100-body js-pscroll">
						  	<table>
						  		<tbody>
								    <c:forEach var='name' items='${list }'>
										<tr class="row100 body">
								            <td class="cell100 column1">${name.id }</td>
								            <td class="cell100 column2">${name.song_title }</td>
								            <td class="cell100 column3">${name.song_singer }</td>
								            <td class="cell100 column4">${name.song_genre }</td>
								            <td class="cell100 column5">${name.song_price }</td>
								            <td class="cell100 column6">${name.song_date }</td>
								            <td class="cell100 column7"><a href="modify?id=${name.id }">수정</a>&nbsp;<a href="/delete?id=${name.id }">삭제</a>
							        	</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			var ps = new PerfectScrollbar(this);

			$(window).on('resize', function(){
				ps.update();
			})
		});
			
		
	</script>
</body>
</html>