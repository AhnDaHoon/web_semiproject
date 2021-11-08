<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

.whole{
	width: 1800px;
	min-width: 1800px;
	margin: 0 auto;
}

.container{
	min-width: 1800px;
}

.title {
	margin-top: 25px;
	padding: 20px 0;
	text-align: center;
	display: block;
}

#titlespan {
	font-weight: bold;
	font-size: 30px;
	border: 1px solid black;
	border-radius: 20px;
	display: inline-block;
}

.uldiv{
	margin: 0 auto;
	text-align: center;
	width: 100%;
}

.icon {
	margin: 20px 50px 10px 50px;
}

.uldiv>ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	width: 100%;
	overflow: hidden;
	text-align: center;
}

.uldiv>ul>li{
	display: inline-block;
}

.product{
	font-weight: normal;
	font-size: 20px;
}

.icondiv:hover {
	cursor: pointer;
}

</style>
</head>
<body>

<div class="whole">
	
	<jsp:include page="header.jsp"></jsp:include>

	<div class="container">
		<div class="title">
			<span id="titlespan" style="width:200px"> 비교함 </span>
		</div>
		<br />
		<br />
		<div class="uldiv">
		
			
			<!-- NULL일 때 아이콘이 보이지 않게 설정 필요  -->
			<br />
			<br />
			<br />
			<h1>비교함이 비었습니다.</h1>
			
			
			<!-- NULL이 아닐 경우 해당 아이콘 화면에 출력 및 최소값 (1)  -->
			<br />
			<br />
			<br />
			<ul>
				<li>
					<div class="icondiv">
						<img src="../images/Ball01.png" alt="" class="icon" /><br />
						<span class="product">TV(<!-- 스크립트렛 적용 필요. 최솟값 1 비교함에 해당 제품군 담길 때마다 +1 -->)</span>
					</div>
				</li>
				<li>
					<div class="icondiv">
						<img src="../images/Ball01.png" alt="" class="icon" /><br />
						<span class="product">냉장고()</span>
					</div>
				</li>
				<li>
					<div class="icondiv">
						<img src="../images/Ball01.png" alt="" class="icon" /><br />
						<span class="product">청소기()</span>
					</div>
				</li>
				<li>
					<div class="icondiv">
						<img src="../images/Ball01.png" alt="" class="icon" /><br />
						<span class="product">세탁기()</span>
					</div>
				</li>
				<li>
					<div class="icondiv">
						<img src="../images/Ball01.png" alt="" class="icon" /><br />
						<span class="product">노트북()</span>
					</div>
				</li>
			</ul>
		</div>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>

</div>

</body>
</html>