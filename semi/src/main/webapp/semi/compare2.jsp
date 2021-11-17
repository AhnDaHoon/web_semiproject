<%@page import="dao.TVDAO"%>
<%@page import="vo.ProductVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="vo.TvVO"%>
<%@page import="dao.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	$(function () {
		// 전체선택 체크 이프문
		
		// img 태그에 체크박스를 띄울 건지, div에 보더를 주는 이벤트를 만들건지 결정 필요
// 		function ajaxSend(arr){
// 			$.ajax({
// 	            type:"GET",
// 	            async: true, 
// 	            url: "CompareOk.jsp", 
// 	            dataType: "html", 
// 	            data:{"arr":arr}, 
// 	            success:function(response, status, request, data){
// //		               console.log(response.trim());
// 	               console.log(data);
// 	            },
// 	            error: function(response, status, request){
// 	                console.log("에러");
// 	            },
	       
// 	            complete: function(){
// 	            	console.log("Ajax통신 끝");
// 	            },
	   
// 	            beforeSend: function(){
// 	            }

// 			});
// 		}
		
		$("#ckall").on("click", function () {
			if($("#ckall").is(":checked")) {
				$(".check").prop("checked", true);
			}else {
				$(".check").prop("checked", false);
			}
		});
		
		var arrpno = [];
		var arrpname = [];
// 		// 비교함 제품 삭제
		$("#btn").on("click", function () {
			$("input[type=checkbox]")
			console.log($("input[type=checkbox]:checked").attr("name"));
			$("input[type=checkbox]:checked").each(function(){
				arrpno.push($(this).attr("name"));
				arrpname.push($(this).attr("value"));
			});
			
// 			for(var i = 0; i < arr.length; i++){
// 				console.log(arr[i]);
				
// 			}
			console.log(arrpno);
			
			$.ajax({
	            type:"GET",
	            async: true, 
	            url: "compareOk.jsp", 
	            dataType: "html", 
	            traditional : true, 
	            data:{"arrpno":arrpno, "arrpname":arrpname}, 
	            success:function(response, status, request, data){
//		               console.log(response.trim());
	               console.log(response.trim());
	               
	            },
	            error: function(response, status, request){
	                console.log("에러");
	            },
	       
	            complete: function(){
	            	console.log("Ajax통신 끝");
	            	location.reload();
	            	
	            },
	   
	            beforeSend: function(){
	            }

			});
// 			console.log($("input[type=checkbox]:checked"));
		});

		
	})
	

</script>
<style>

.whole{
	width: 1800px;
	min-width: 1800px;
	margin: 0 auto;
}

.container{
	z-index: 10;
}

.title {
	margin-top: 25px;
	padding: 20px 0;
	text-align: center;
}

.title>table{
	margin: 0 auto;
}

#titlespan {
	font-weight: bold;
	font-size: 30px;
	border: 1px solid black;
	border-radius: 20px;
	display: inline-block;
}

#ckall{
	zoom:1.5;
}

.select {
	float:right;
	margin-right: 10%;
	font-size: 20px;
	vertical-align: bottom;
	position: relative;
	top: 60px;
	left: 60px;
}

#btn {
	width: 170px;
	height: 40px;
	margin-left: 20px;
	font-size: 20px;
	background: white;
	color: grey;
}

.compare{
	margin: 0 auto;
	text-align: center;
}

.compare>table{
	width: 1000px;
	border: 1px solid grey;
	margin: 0 auto;
	border-collapse: collapse;
}

#btn:active {
	background: black;
	color: white;
}

#product {
	width: 300px;
	height: 300px;
}

.check {
	vertical-align: top;
	margin: 0;
	zoom: 1.5;
}

#productdiv {
	background: red;
	width: 1000px;
}

.trborder:hover {
	cursor: pointer;
}


</style>
</head>
<body>
<%
// 	String tv = request.getParameter("tv");
	String cleaner = request.getParameter("cleaner");
	String washing = request.getParameter("washing");
	String refri = request.getParameter("refri");
	String laptop = request.getParameter("laptop");
	
	String name;
	if(request.getParameter("tv") != null) {
		name = request.getParameter("tv");
	}else if(request.getParameter("washing") != null){
		name = request.getParameter("washing");
	}else if(request.getParameter("refri") != null){
		name = request.getParameter("refri");
	}else if(request.getParameter("laptop") != null){
		name = request.getParameter("laptop");
	}
	
	
	TVDAO dao = new TVDAO();
	ArrayList<TvVO> a = dao.getAll();
	
// 	if(a.size() >= 5) {
// 		a.remove(5);
// 		dao.deleteCompare(name, pno)	
// 	}
%>



<div class="whole">
	<jsp:include page="header.jsp"></jsp:include>

	<div class="container">
		<div class="title">
			<table>
				<tr>
					<th></th>
					<th>
						<span id="titlespan" style="width: 200px"> 비교함 </span>
					</th>
					<th>
						<div class="select">
							<input type="checkbox" name="ckall" id="ckall"/> <span> 전체 선택</span>
							<input type="checkbox" name="ckall" id="ckall"/> <span> </span>
							<input type="button" value="선택 항목 삭제" id="btn" />
						</div>
					</th>
				</tr>
			</table>
		</div>
		<br />
		<br />
		<br />
		
		<div class="compare">
			<!-- 비교함이 null일 경우 + compare2 주소를 직접 입력하고 온 경우 비교함이 null 일 경우 
				 br테그부터 h태그 표시 -->
			<br />
			<br />
			<br />
			<h1>비교함이 비었습니다.</h1>
			
			<!--null이 아닐 경우 표 + div 표시 -->
			<br />
			<br />
			<br />
			<table border="1">
				<tr>
					<th>제품정보</th>
					<th>가격</th>
					<th>에너지소비등급</th>
					<th>세부사항1</th>
					<th>세부사항2</th>
				</tr>
<%
				for(TvVO x : a) {
					out.println("<tr class='trborder'>");
						out.println("<th>");
							out.println("<br />");
							out.println("<input type='checkbox' name='"+ x.getPno() +"' value="+ x.getCode() +" class='check'/>");
							out.println("<img src='" + x.getImgfile() + "' alt='' id='product'/>");
							out.println("<br />"+x.getPname());
						out.println("</th>");
						out.println("<th><span>"+x.getPrice()+"</span></th>");
						out.println("<th>"+ x.getEnergy() +"</th>");
						out.println("<th>"+ x.getPdesc() +"</th>");
						out.println("<th>"+ "없음" +"</th>");
					out.println("</tr>");
				}
%>				
			
<!-- 				<tr class="trborder"> -->
<!-- 					vo로 가져온 값 출력 -->
<!-- 					<th> -->
<!-- 						<br /> -->
<!-- 						<input type="checkbox" name="check" class="check"/> -->
<!-- 						<img src="../images/product1.JPG" alt="" id="product"/> -->
<!-- 						<br />바디워시 -->
<!-- 					</th> -->
<!-- 					<th><span>10,000원</span></th> -->
<!-- 					<th>1</th> -->
<!-- 					<th>1</th> -->
<!-- 					<th>1</th> -->
<!-- 				</tr>	 -->
			
			</table>
			
			
		</div>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>
	
</div>
	
</body>
</html>