<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.container{
		background: silver;
	}
	.divclass{
		margin: 0 auto;
	}
	#imgdiv{
		margin-left : 35%;
		margin-top : 30px;
		margin-bottom : 30px;
		border: 1px solid black;
		text-align:center;
		float: left;
	}
	#rightdiv{
		margin-top : 30px;
		margin-left: 80px;
		float: left;
	}
	#btn{
		position:relative;
		top:120px;
		width: 200px;
		height: 50px;
		border-radius: 30px;
		background: skyblue;
		color: white;
		font-size: 20px;
		font-weight: bold;
		cursor: pointer;
	}
	#pdesc{
		width:1100px;
		margin: 0 auto;
		border-top: 5px solid silver;
		clear: both;
		text-align: center;
	}
	#pdesc>span,h1{
		margin-top:  20px;
		margin-bottom : 20px;
	}
	#analysisdiv{
		margin-top: 20px;
		border-top: 5px solid silver;
		text-align:center;
	}
	.analysis{
		width: 600px;
		margin: 0 auto;
		text-align: left;
		margin-bottom: 30px;
		border-bottom: 2px solid silver; 
	}
	#recomdiv{
		width: 1630px;
		margin: 0 auto;
		text-align: left;
		border: 1px solid black;
	}
	.recomimg{
		margin-right: 20px;
		width: 300px;
		height: 300px;
	}
</style>
</head>
<body>
	<jsp:include page="chatbotMain.jsp"></jsp:include>
	<jsp:include page="header.jsp"></jsp:include>
	
	<div id="container">
		<div class="divclass">
			<div id="imgdiv">
				<img src="../images/computer1.png" alt="" />
			</div>
			<div id="rightdiv">
				<h2>브랜드명</h2> <br />
				<h2>제품명</h2> <br />
				<h1>가격</h1>
				<input type="button" value="비교함에 넣기" id="btn" />
			</div>
		</div>
		<br />
		<div id="pdesc">
			<h1>상품설명 및 주요스펙, 요약 보여주는 곳</h1>
			<span>가격대</span>
			<span>타입</span>
			<span>용량</span>
			<span>해상도</span>
			<span>크기</span>
		</div>
		<div id="analysisdiv">
				<h1>스펙분석</h1>
				<div class="analysis">
				<h2>1. 가격 : 보통</h2>
				<p>170만원 <br />
					현재 온라인 최저가는 170만원으로 보통 수준인 제품입니다. <br /><br />
 
					① 용량이 큰 제품일수록 가격대가 높아지며 <br />
					② 동급인 '750~950ℓ 수준의 대형 냉장고' 중에서는(도) 용량 대비 가격대가 저렴한 편입니다.
				</p> <br />
				</div>
				
				<div class="analysis">
				<h2>2. 화질 : 좋음</h2>
				<p>TV종류 : 존나좋은 TV <br />
					LCD 패널에 나노셀 처리가 된 제품으로 일반 LCD TV 대비 색재현력, 밝기, 시야각 등의 화질이 더 좋은 제품입니다. <br />
				</p> <br />
				
				</div>
		</div>
		<div id="recomdiv">
			<h2>이런 제품은 어떠신가요?</h2>
			<img src="../images/computer1.png" alt="" class="recomimg"/>
			<img src="../images/computer1.png" alt="" class="recomimg"/>
			<img src="../images/computer1.png" alt="" class="recomimg"/>
			<img src="../images/computer1.png" alt="" class="recomimg"/>
			<img src="../images/computer1.png" alt="" class="recomimg"/>
		</div>
		
	</div>	
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>