<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myPage</title>
<style>
	.whole{
		width: 1800px;
		min-width: 1800px;
		margin: 0 auto;
	}
	.container {
		text-align: center;
		position: relative;
		top: 100px;
	}
	
	.myPage{
		margin: 0 auto;
	}
	
	.myPage>a{
		display: block;
		margin: 20px;
	}

</style>
</head>
<body>
<div class="whole">
	<jsp:include page="header.jsp"></jsp:include>

	<div class="container">
		<div class="myPage">
			<a href="">정보수정</a><br />
			<a href="">문의내역</a><br />
			<a href="">의견 보내기</a><br />
			<a href="">공지사항(부가)</a><br />
			<a href="">설정</a>
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>