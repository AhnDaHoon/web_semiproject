<%@page import="vo.TvVO"%>
<%@page import="dao.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비교함</title>
<style>

.whole{
	width: 1800px;
	min-width: 1800px;
	margin: 0 auto;
}

.container{
	min-width: 1800px;
	width: 100%;
}

.title {
	position:relative;
	top: 3px;
	margin-top: 25px;
	padding: 19px 0;
	text-align: center;
	display: block;
}

#titlespan {
	font-weight: bold;
	font-size: 50px;
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
	width: 70px;
	height: 70px;
}

.uldiv>ul {
	list-style-type: none;
	padding: 0;
	width: 1000px;
	overflow: hidden;
	position: relative;
	left: 100px;
}

.uldiv>ul>li a {
	text-align: center;
	border: 1px solid black;
}

.icondiv {
	display: inline-block;
	margin: 15px 50px 15px 50px;
}

.product{
	font-weight: normal;
	font-size: 20px;
}

.icondiv:hover {
	cursor: pointer;
}

.category{
	margin-top: 100px;
	font-size: 50px;
	border-bottom: 2px grey black;
	text-align: left;
}

#kitchen, #it {
	position: relative;
	left: -180px;
}
#hdiv{
	border-bottom: 3px solid rgba(180,180,180,0.5);
	padding-bottom: 10px;
}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="../js/httpRequest.js"></script>
<script type="text/javascript">

	$(function(){
		$(".icondiv").on("click", function(){
			
			$(".icondiv").children('input').attr("value", null);
			var pname = $(this).children('img').attr("name");
			var inputname = $(this).children('input').attr("name");
// 			var inputval = $(this).children('input').attr("value")];
			var inputval = $(this).children('input').attr("value", pname);

// 			console.log($("#formId"));
			console.log(inputname);
			console.dir(inputval);
			
			$("#formId").submit();
		});
	})

</script>
</head>
<body>
<%
	ProductDAO dao = new ProductDAO();
	TvVO vo = dao.getTvInfo("TEST TV");
	
	int size = dao.compareCount("TV");
%>
<form action="compare2.jsp" id="formId">
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
				<ul>
					<li>
						<div id="hdiv"><h1 class="category">생활가전</h1></div>
						<div class="icondiv">
							<img src="../images/tv.png" alt="" class="icon" name="tv"/><br />
							<input type="hidden" name="tv"><span class="product">TV(<%= size %>)</span></input>
							
				<!-- 		<span class="product">TV(스크립트렛 적용 필요. 최솟값 1 비교함에 해당 제품군 담길 때마다 +1)</span> -->
						</div>
						<div class="icondiv">
							<img src="../images/cleaner.png" alt="" class="icon" name="cleaner"/><br />
							<input type="hidden" name="cleaner"><span class="product">청소기()</span></input>
						</div>
						<div class="icondiv">
							<img src="../images/washing.png" alt="" class="icon" name="washing"/><br />
							<input type="hidden" name="washing"><span class="product">세탁기()</span></input>
						</div>
					</li>
					<li>
						<div id="hdiv"><h1 class="category">주방가전</h1></div>
						<div class="icondiv" id="kitchen">
							<img src="../images/refri.png" alt="" class="icon" name="refri"/><br />
							<input type="hidden" name="refri"><span class="product">냉장고()</span></input>
						</div>
					</li>
					<li>
						<div id="hdiv"><h1 class="category">디지털IT</h1></div>
						<div class="icondiv" id="it">
							<img src="../images/laptop.png" alt="" class="icon" name="laptop"/><br />
							<input type="hidden" name="laptop"><span class="product">노트북()</span></input>
						</div>
					</li>
				</ul>
			</div>
		</div>
		
		<jsp:include page="footer.jsp"></jsp:include>
	
	</div>
</form>
</body>
</html>