<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	$(function(){
		$("#icon1").on("click", function(){
			$("#icondiv2").hide();
			$("#icondiv3").hide();
			$("#icondiv4").hide();
			$("#icondiv1").toggle();
		})
		$("#icon2").on("click", function(){
			$("#icondiv1").hide();
			$("#icondiv3").hide();
			$("#icondiv4").hide();
			$("#icondiv2").toggle();
		})
		$("#icon3").on("click", function(){
			$("#icondiv1").hide();
			$("#icondiv2").hide();
			$("#icondiv4").hide();
			$("#icondiv3").toggle();
		})
		$("#icon4").on("click", function(){
			$("#icondiv1").hide();
			$("#icondiv2").hide();
			$("#icondiv3").hide();
			$("#icondiv4").toggle();
		})
		
	})
</script>
<style>
	.container{
		background: silver;
	}
	.divclass{
		margin: 0 auto;
	}
	#imgdiv{
		margin-top : 30px;
		background: yellow;
		width: 1000px;
		height: 300px;
		text-align: center;
	}
	#img1{
		width: 1000px;
		height: 300px;
	}
	#branddiv{
		margin-top : 30px;
		width: 610px;
	}
	.brandimg{
		margin : 0px;
		width: 300px;
		height: 100px;
	}
	#icondiv{
		width: 630px;
	}
	.icon{
		margin : 50px;
		width: 50px;
		height: 50px
	}
	.icon,img:hover {
		cursor: pointer;
	}
	.pickimg{
		width: 300px;
		height: 300px;
		margin-left: 30px;
	}
	.pimg{
		width: 30px;
		height: 30px;
	}
	p{
		font-size: 30px;
		font-weight: bold;
	}
	.pick1{
		width : 1700px;
		margin: 0 auto;
		border: 1px solid black;
	}
	#icondiv1{
		border: 1px solid black;
		width: 620px;
	}
	#icondiv2{
		border: 1px solid black;
		width: 620px;
	}
	#icondiv3{
		border: 1px solid black;
		width: 620px;
	}
	#icondiv4{
		border: 1px solid black;
		width: 620px;
	}
	
</style>
</head>
<body>
	<jsp:include page="chatbotMain.jsp"></jsp:include>
	<jsp:include page="header.jsp"></jsp:include>
	
	<div class="container">
		<div id="imgdiv" class="divclass">
			<img src="../images/0930Q2.jpg" alt="" id="img1"/>
		</div>
		<div id="branddiv" class="divclass">
			<img src="../images/coupang.png" alt="" class="brandimg"/>
			<img src="../images/coupang.png" alt="" class="brandimg"/>
			<img src="../images/coupang.png" alt="" class="brandimg"/>
			<img src="../images/coupang.png" alt="" class="brandimg"/>
		</div>
		<div class="divclass" id="icondiv">
			<img src="../images/Ball01.png" alt="" class="icon" id="icon1"/>
			<img src="../images/Ball01.png" alt="" class="icon" id="icon2"/>
			<img src="../images/Ball01.png" alt="" class="icon" id="icon3"/>
			<img src="../images/Ball01.png" alt="" class="icon" id="icon4"/>
		</div>
		
		<div class="divclass" id="icondiv1" style="display:none">
			<img src="../images/ball1.png" alt="" class="icon"/>
			<img src="../images/ball2.png" alt="" class="icon"/>
			<img src="../images/ball3.png" alt="" class="icon"/>
			<img src="../images/ball4.png" alt="" class="icon"/>
			<img src="../images/ball5.png" alt="" class="icon"/>
			<img src="../images/ball6.png" alt="" class="icon"/>
		</div>
		<div class="divclass" id="icondiv2" style="display:none">
			<img src="../images/ball1.png" alt="" class="icon"/>
			<img src="../images/ball2.png" alt="" class="icon"/>
			<img src="../images/ball3.png" alt="" class="icon"/>
			<img src="../images/ball4.png" alt="" class="icon"/>
			<img src="../images/ball5.png" alt="" class="icon"/>
			<img src="../images/ball6.png" alt="" class="icon"/>
			<img src="../images/ball7.png" alt="" class="icon"/>
			<img src="../images/ball8.png" alt="" class="icon"/>
		</div>
		<div class="divclass" id="icondiv3" style="display:none">
			<img src="../images/ball1.png" alt="" class="icon"/>
			<img src="../images/ball2.png" alt="" class="icon"/>
			<img src="../images/ball3.png" alt="" class="icon"/>
			<img src="../images/ball4.png" alt="" class="icon"/>
			<img src="../images/ball5.png" alt="" class="icon"/>
		</div>
		<div class="divclass" id="icondiv4" style="display:none">
			<img src="../images/ball1.png" alt="" class="icon"/>
			<img src="../images/ball2.png" alt="" class="icon"/>
			<img src="../images/ball3.png" alt="" class="icon"/>
		</div>
		<br /><br />
		<div class="divclass" id="pickdiv">
			<div class="pick1">
				<p>4조의 노트북 추천픽 <img src="../images/e.jpg" alt="" class="pimg"/> </p><br />
				<img src="../images/DMW21559W2.jpg" alt="" class="pickimg"/>
				<img src="../images/DMW21559W2.jpg" alt="" class="pickimg"/>
				<img src="../images/DMW21559W2.jpg" alt="" class="pickimg"/>
				<img src="../images/DMW21559W2.jpg" alt="" class="pickimg"/>
				<img src="../images/DMW21559W2.jpg" alt="" class="pickimg"/>
			</div>
		</div>	<br /><br />
		<div class="divclass" id="pickdiv">
			<div class="pick1">
				<p>4조의 냉장고 추천픽 <img src="../images/e.jpg" alt="" class="pimg"/> </p><br />
				<img src="../images/oldskool.PNG" alt="" class="pickimg"/>
				<img src="../images/oldskool.PNG" alt="" class="pickimg"/>
				<img src="../images/oldskool.PNG" alt="" class="pickimg"/>
				<img src="../images/oldskool.PNG" alt="" class="pickimg"/>
				<img src="../images/oldskool.PNG" alt="" class="pickimg"/>
			</div>
		</div>	<br /><br />
		<div class="divclass" id="pickdiv">
			<div class="pick1">
				<p>4조의 TV 추천픽 <img src="../images/e.jpg" alt="" class="pimg"/> </p><br />
				<img src="../images/rainhat.jpg" alt="" class="pickimg"/>
				<img src="../images/rainhat.jpg" alt="" class="pickimg"/>
				<img src="../images/rainhat.jpg" alt="" class="pickimg"/>
				<img src="../images/rainhat.jpg" alt="" class="pickimg"/>
				<img src="../images/rainhat.jpg" alt="" class="pickimg"/>
			</div>
		</div>	<br /><br />
		<div class="divclass" id="pickdiv">
			<div class="pick1">
				<p>4조의 세탁기 추천픽 <img src="../images/e.jpg" alt="" class="pimg"/> </p><br />
				<img src="../images/samsonite.jpg" alt="" class="pickimg"/>
				<img src="../images/samsonite.jpg" alt="" class="pickimg"/>
				<img src="../images/samsonite.jpg" alt="" class="pickimg"/>
				<img src="../images/samsonite.jpg" alt="" class="pickimg"/>
				<img src="../images/samsonite.jpg" alt="" class="pickimg"/>
			</div>
		</div>	<br /><br />
		<div class="divclass" id="pickdiv">
			<div class="pick1">
				<p>4조의 청소기 추천픽 <img src="../images/e.jpg" alt="" class="pimg"/> </p><br />
				<img src="../images/cuckoo.jpg" alt="" class="pickimg"/>
				<img src="../images/cuckoo.jpg" alt="" class="pickimg"/>
				<img src="../images/cuckoo.jpg" alt="" class="pickimg"/>
				<img src="../images/cuckoo.jpg" alt="" class="pickimg"/>
				<img src="../images/cuckoo.jpg" alt="" class="pickimg"/>
			</div>
		</div>	<br /><br />
		
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>