<%@page import="vo.RefriVO"%>
<%@page import="vo.TvVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>통하다 :: 제품탐색</title>
<style>
.whole{
		width: 1800px;
		min-width: 1800px;
		margin: 0 auto;
}

*{
	padding:0;
	margin: 0px auto;
}
    #container {
    	position:relative;
        top: 50px;
    }
    
    .hdiv{
    	text-align:center;
    	margin: 0 auto;
    	width: 460px;
    	margin-bottom: 50px;
    }    
    h1{
    	font-size: 50px;
    	border-bottom: 2px solid silver;
    }
    #lineh1{
    	border-bottom: 8px solid rgba(120,120,120,0.2);
    	margin-bottom: 50px;
    	margin-top: 50px;
    }
    .thclass{
    	background: rgba(118,167,247,0.8);
    	border-radius: 5px;
    	height: 50px;
    	width: 200px;
    }
    #optiontable{
    	width : 1110px;
    	border-bottom: 1px solid silver;
    	border-top: 1px solid silver;
    }
    .optionclass{
    	cursor:pointer;
    	height: 50px;
    	width: 150px;
    	color: gray;
    	font-size: 20px;
    }
    #tablediv{
    	margin: 0 auto;
    	width: 1150px;
    }
 	.divclass{
 		width : 800px;
		margin: 0 auto;
		border: 1px solid black;
	}
	#imgdiv{
		margin-left : 30px;
		margin-top : 30px;
		margin-bottom : 30px;
		border: 1px solid black;
		text-align:center;
		display: inline-block;
	}
	#rightdiv{
		position:relative;
		top:-70px;
		margin-left: 80px;
		display: inline-block;
	}
	#btn{
		position:relative;
		left: 200px;
		top: 50px;
		width: 200px;
		height: 50px;
		border-radius: 30px;
		background: rgba(118,167,247,0.8);
		color: white;
		font-size: 20px;
		font-weight: bold;
		cursor: pointer;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	$(function(){
		var energy;
		var brand;
		var door;
		var doorreset
		$(".optionclass").on("click", function(){
// 			console.log($(this).text());
			
			// searchTVOk.jsp에 id 값을 넘겨줌
			console.log($(this).attr("name"));
			
			// 클릭한 옵션 배열에 담기
			if($(this).attr("name") <= 6){
				energy = $(this).attr("name");				
			}else if($(this).attr("name") == 'energyreset'){
				energy = 'energyreset';			
			}else if($(this).attr("name") == "'SAMSUNG'" || $(this).attr("name") == "'LG'" || $(this).attr("name") == "'CARRIER'" || $(this).attr("name") == "'HAIER'"){
				brand = $(this).attr("name");
			}else if($(this).attr("name") == 'brandreset'){
				brand = 'brandreset';
			}else if($(this).attr("name") == '1개' || $(this).attr("name") == '2개' || $(this).attr("name") == '3개' || $(this).attr("name") == '4개'){
				door = $(this).attr("name");
			}else if($(this).attr("name") == 'doorreset'){
				doorreset = 'doorreset';
			}

			$.ajax({
	            type:"POST",
	            async: true, 
	            url: "searchRefriOk.jsp", 
	            dataType: "html", 
	            data:{"energy":energy, "brand":brand, "door":door, "doorreset":doorreset}, 
	            success:function(response, status, request, data){
// 	            	console.log(response.trim());
	            	location.reload();
	               
	            },
	            error: function(response, status, request){
	            	console.log(response.trim());
	                console.log("에러");
	            },
	       
	            complete: function(){
	            	console.log("Ajax통신 끝");
	            	
	            },
	   
	            beforeSend: function(){
	            }
	
			});
		})
		
		
	})

</script>
</head>
<body>
<form action="searchTVOk.jsp">
	<div class="whole">
		<jsp:include page="header.jsp"></jsp:include>
		<div id="container">
			
		<div class="hdiv">
			<h1>제품탐색</h1>
		</div>
			<div id="tablediv">
				<table id="optiontable">
					<tr class="option">
						<th class="thclass">에너지소비효율등급</th>
						<th class="optionclass" name ="energyreset">전체</th>
						<th class="optionclass" name ="1">1등급</th>
						<th class="optionclass" name ="2">2등급</th>
						<th class="optionclass" name ="3">3등급</th>
						<th class="optionclass" name ="4">4등급</th>
						<th class="optionclass" name ="5">5등급</th>
						<th class="optionclass" name ="0">비대상제품</th>
					</tr>
					<tr class="option">
						<th class="thclass">브랜드</th>
						<th class="optionclass" name ="brandreset">전체</th>
						<th class="optionclass" name ="'SAMSUNG'">삼성전자</th>
						<th class="optionclass" name ="'LG'">LG</th>
						<th class="optionclass" name ="'CARRIER'">캐리어</th>
						<th class="optionclass" name = "'HAIER'">HAIER</th>
					</tr>
					<tr class="option">
						<th class="thclass">도어</th>
						<th class="optionclass" name ="doorreset">전체</th>
						<th class="optionclass" name ="1개">1개</th>
						<th class="optionclass" name ="2개">2개</th>
						<th class="optionclass" name ="3개">3개</th>
						<th class="optionclass" name ="4개">4개</th>
					</tr>
					<tr class="option">
						<th class="thclass">검색사항4</th>
						<th class="optionclass">전체</th>
						<th class="optionclass">옵션1</th>
						<th class="optionclass">옵션2</th>
						<th class="optionclass">옵션3</th>
						<th class="optionclass">옵션4</th>
						<th class="optionclass">옵션5</th>
					</tr>
					<tr class="option">
						<th class="thclass">검색사항5</th>
						<th class="optionclass">전체</th>
						<th class="optionclass">옵션1</th>
						<th class="optionclass">옵션2</th>
						<th class="optionclass">옵션3</th>
						<th class="optionclass">옵션4</th>
						<th class="optionclass">옵션5</th>
					</tr>
				</table>
			</div>
			<h1 id="lineh1"></h1>
			<div class="divclass">
				<div id="imgdiv">
					<img src="../images/tv.png" alt="" />
				</div>
				<div id="rightdiv">
					<h2>제품명</h2> <br />
					<h2>디비내용1</h2> <br />
					<h2>디비내용2</h2>
					<input type="button" value="비교함에 넣기" id="btn" />
				</div>
			</div>
			
			<%
			Object rObj = session.getAttribute("tvoArr");
			ArrayList<RefriVO> tvoArr = (ArrayList<RefriVO>) rObj;
			if(tvoArr != null ){
				for(RefriVO x: tvoArr){
					
	// 				out.println("<h1 id='lineh1'></h1>");
					out.println("<div class='divclass'>");
					out.println("<div id='imgdiv'>");
// 					out.println("<img src='" + x.getImgfile() + "' alt='' />");
					out.println("</div>");
					out.println("<div id='rightdiv'>");
						out.println("<h2>"+ x.getPname() +"</h2> <br />");
						out.println("<h2>"+ x.getPdesc() +"</h2> <br />");
						out.println("<h2>디비내용2</h2>");
						out.println("<input type='button' value='비교함에 넣기' id='btn' />");
					out.println("</div>");
				}
				
			}else{
				out.println("<h1>asd</h1>");
				
			}
			
			%>
		</div>
		
		<jsp:include page="recentside.jsp"></jsp:include>
		<jsp:include page="footer.jsp"></jsp:include>
	
	</div>
</form>
</body>
</html>