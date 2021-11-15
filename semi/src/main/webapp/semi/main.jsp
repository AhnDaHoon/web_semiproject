<%@page import="java.util.ArrayList"%>
<%@page import="dao.TVDAO"%>
<%@page import="vo.TvVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>통하다 :: 하나로 통하다</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
// 	$(function(){
// 		$("#gosearch1").on("click", function(){
			
// 		})
// 	})
</script>

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
		height: 200px;
	}
	
	#logo{
		width: 300px;
		height: 300px;
	}
	
	#clickdiv{
		margin: 0 auto;
		position: relative;
		right: -130px;
		top: -130px;
	}
	
	#clickdiv img {
		width: 300px;
		height: 200px;
	}
	
	#main{
		width:1200px;
		height:700px;
		position: relative;
		margin: 0 auto;
		margin-top: 120px;
	}
	
	#main img {
		width: 1200px;
		height: 800px;
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
<%
	TVDAO tdao = new TVDAO();
	ArrayList<TvVO> tvoArr = tdao.getAll();
	ArrayList<String> energyArr = new ArrayList<String>();
	ArrayList<String> brandArr = new ArrayList<String>();
	ArrayList<String> psizeArr = new ArrayList<String>();
	
	if(tvoArr != null){
		session.setAttribute("tvoArr", tvoArr);
		session.setAttribute("tvoArrSecond", tvoArr);
		session.setAttribute("energyArr", energyArr);
		session.setAttribute("brandArr", brandArr);
		session.setAttribute("psizeArr", psizeArr);
		
	}
	// 데이터가 정상적으로 있는지 확인 후 세션으로 넘기기
// 	for(TvVO x: tvoArr){
// 		out.println("<h1>"+ x.getPno() +"</h1>");
// 		out.println("<h1>"+ x.getCode() +"</h1>");
// 		out.println("<h1>"+ x.getPname() +"</h1>");
// 		out.println("<h1>"+ x.getPdesc() +"</h1>");
// 		out.println("<h1>"+ x.getBrand() +"</h1>");
// 		out.println("<h1>"+ x.getPrice() +"</h1>");
// 		out.println("<h1>"+ x.getRegdate() +"</h1>");
// 		out.println("<h1>"+ x.getEnergy() +"</h1>");
// 		out.println("<h1>"+ x.getImgfile() +"</h1>");
// 		out.println("<h1>"+ x.getPsize() +"</h1>");
// 		out.println("<h1>"+ x.getPixel() +"</h1>");
// 		out.println("<h1>"+ x.getCodename() +"</h1>");
// 	}
	
// 	Object tvoObj = session.getAttribute("tvoArr");
// 	ArrayList<TvVO> tvoArr2 = (ArrayList<TvVO>) tvoObj;
// 	for(TvVO x: tvoArr2){
// 		out.println("<h1>tvoArr2</h1>");
// 		out.println("<h1>"+ x.getPno() +"</h1>");
// 		out.println("<h1>"+ x.getCode() +"</h1>");
// 		out.println("<h1>"+ x.getPname() +"</h1>");
// 		out.println("<h1>"+ x.getPdesc() +"</h1>");
// 		out.println("<h1>"+ x.getBrand() +"</h1>");
// 		out.println("<h1>"+ x.getPrice() +"</h1>");
// 		out.println("<h1>"+ x.getRegdate() +"</h1>");
// 		out.println("<h1>"+ x.getEnergy() +"</h1>");
// 		out.println("<h1>"+ x.getImgfile() +"</h1>");
// 		out.println("<h1>"+ x.getPsize() +"</h1>");
// 		out.println("<h1>"+ x.getPixel() +"</h1>");
// 		out.println("<h1>"+ x.getCodename() +"</h1>");
// 	}
%>
<div class="whole">
	<div class="container">
		<!-- 로고이미지 위치  -->
		<div id="logodiv">
			<a href="search1.jsp"><img src="../images/tong.png" alt="" id="logo" /></a>
		</div>
		<!-- 홈페이지 간략 설명&이미지  -->
		<div id="main">
			<img src="../images/main.gif" alt="" />
		</div>
		<!-- 비교하러가기 배너  -->
		<div id="clickdiv">
			<a href="search1.jsp"><img src="../images/ment.png" alt="" id="gosearch1" /></a> 
		</div>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>