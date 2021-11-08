<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
	.whole{
		width: 1800px;
		min-width: 1800px;
		margin: 0 auto;
	}

	.container{
		margin-top:100px;
		text-align: center;
	}

	#logodiv{
		margin: 0 auto;
	}
	
	#logo{
		width: 180px;
		height: 180px;
	}
	
	#clickdiv{
		margin: 50px;
	}
	
	#main{
		width:700px;
		height:400px;
		border:1px solid black;
		background-color:yellow;
		position: relative;
		margin: 0 auto;
		margin-top: 50px;
	}
	
	#gosearch1:hover {
		cursor: pointer;
	}
	
	#gosearch1 {
		width: 200px;
		height: 70px;
		position: relative;
		left: 300px;
	}
	
</style>
</head>
<body>
<div class="whole">
	<div class="container">
		<!-- 로고이미지 위치  -->
		<div id="logodiv">
			<a href="search1.jsp"><img src="../images/tong.png" alt="" id="logo" /></a>
		</div>
		<!-- 홈페이지 간략 설명&이미지  -->
		<div id="main">
			<img src="" alt="" />
		</div>
		<!-- 비교하러가기 배너  -->
		<div id="clickdiv">
			<a href="search1.jsp"><img src="../images/puppy.jpg" alt="" id="gosearch1" /></a> 
		</div>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>