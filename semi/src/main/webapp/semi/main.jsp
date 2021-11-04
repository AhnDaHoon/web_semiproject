<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	$(function () {
		$("#click").on("click", function () {
			location.href="search1.jsp";
		})
	})
</script>
<style>
	*{
		padding:0;
		margin: 0px auto;
	}
	
	.container{
		margin-top:100px;
		text-align: center;
	}

	#logo{
		width:200px;
		height:100px;
		border:1px solid black;
		background-color:red;
		
	}
	
	#click{
		width:300px;
		height:100px;
		border:1px solid black;
		background-color:green;	
		position:absolute;
		/* top:550px;
		right:400px; */
		top: 68%;
		right: 30%;
	}
	
	#main{
		margin-top:50px;
		width:700px;
		height:400px;
		border:1px solid black;
		background-color:yellow;
		position: relative;
	}
	
	#click:hover {
		cursor: pointer;
	}
	
</style>
</head>
<body>
	<div class="container">
		<!-- 로고이미지 위치  -->
		<div id="logo">
			<img src="" alt="" />
		</div>
		<!-- 홈페이지 간략 설명&이미지  -->
		<div id="main">
			<img src="" alt="" />
		</div>
		<!-- 비교하러가기 배너  -->
		<div id="click">
			<img src="" alt="" />
		</div>
	</div>
</body>
</html>