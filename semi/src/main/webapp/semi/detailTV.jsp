
<%@page import="dao.ProductDAO"%>
<%@page import="vo.TvVO"%>

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
		background: silver;
	}
	.divclass{
		margin: 0 auto;
		
	}
	#imgdiv{
		margin-left : 10%;
		margin-top : 30px;
		margin-bottom : 30px;
		text-align:center;
		float: left;
	}
	#rightdiv{
		margin-top : 80px;
		margin-left: 80px;
		float: left;
	}
	#btn{
		position:relative;
		top:120px;
		width: 200px;
		height: 50px;
		border-radius: 10px;
		background: #76a7f7;
		color: white;
		font-size: 30px;
		font-weight: bold;
		cursor: pointer;
	}
	#pdesc{
		width:1100px;
		margin: 0 auto;
		border-top: 5px solid silver;
		clear: both;
		text-align: center;
		padding-top: 30px;
		padding-bottom: 30px;
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
	
	/* 더보기 기능 css */
     .show-more {
          margin: 0 auto;
     	  margin-bottom : 30px;
     	  margin-top: 30px;
          display: none;
          cursor: pointer;
          font-weight: bold;
          font-size: 30px;
          width: 350px;
          color: blue;
      }
      
      #empty{
      	  display: none;
      }
      #div1{
      	margin-top: 100px;
      	width: 800px;
      	height: 500px;
      }
      #imgid{
      	width: 400px;
      	height: 400px;
      }
      h2{
      	font-size: 30px;
      }
      #pdesc h1{
      	font-size: 40px;
      }
      #pdesc span{
      	font-size: 30px;
      }
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
/* 더보기 기능 javascript */	
   $(document).ready(function() { 
	  /*  console.log("콘솔 테스트"); */
     if ($('.analysis').length > 2) {
     // gt(n)은 해당번째(n) 다음 요소들에 스타알이나 동작이 적용
     // gt(0)이면 첫번째 다음번째, 즉 2,3,4번쨰 요소들을 가르킨다.
      $('.analysis:gt(0)').hide();
      $('.show-more').show();
      }

      $('.show-more').on('click', function() {
      $('.analysis:gt(0)').toggle();
      //눌렀을때 텍스트 바꾸기
      $(this).text() === '상품 상세설명 펼처보기 ▼' ? $(this).text('접어두기 ▲') : $(this).text('상품 상세설명 펼처보기 ▼');
      });      
  	});
  	
  	
   $(function () {
 		// 비교함에 넣기
 		$("#btn").on("click", function(){
	        $.ajax({
	            type:"GET", 
	            async: true, 
	            url: "compareSaveOk.jsp",
	            dataType: "html", 
	            data:{"codename":"TV"},	
	            success:function(response, status, request){  
	                console.log(response);
	                if(response.trim() != "false"){
	                	alert("해당 제품이 비교함에 저장되었습니다");
	                	compareSave();
	                }else{
	                	alert("비교함이 가득 차 있어 저장할 수 없습니다");
	                }
	            },
	            error: function(response, status, request){
	                console.log("에러");
	            },
	            complete: function(){
	            	console.log("Ajax통신 끝");
	            },
	            beforeSend: function(){
	            }
	        });
	    });
 		
 	})
 	
 	
 	function compareSave() {
 		$.ajax({
           type:"GET", 
           async: true, 
           url: "compareSave.jsp",
           dataType: "html", 
           data:{"pname":"S8620GG"},	
           success:function(response, status, request){  
               console.log(response);
           },
           error: function(response, status, request){
               console.log("에러");
           },
           complete: function(){
           	console.log("Ajax통신 끝");
           },
           beforeSend: function(){
           }
       });
 	}
</script>
</head>
<body>
<div class="whole">
	<jsp:include page="chatbotMain.jsp"></jsp:include>
	<jsp:include page="header.jsp"></jsp:include>
	
	<%
		String pname = "S8620GG";	
	
		ProductDAO dao = new ProductDAO();
		TvVO vo = dao.getTvInfo(pname);
		
		String pname2 = "S8620GG";	
		
		ProductDAO dao2 = new ProductDAO();
		TvVO vo2 = dao2.getTvInfo(pname2);
	%>
	
	<h1><%= vo %></h1>
	<h1><%= vo2 %></h1>
	
	<div id="container">
		<div class="divclass" id="div1">
			<div id="imgdiv">
				<img src="../images/monitor.png" alt="" id="imgid"/>
			</div>
			<div id="rightdiv">
				<h2>브랜드명 : <%= vo.getBrand() %></h2> <br />
				<h2>제품명 : <%= vo.getPname() %></h2> <br />
				<h2>가격 : <%= vo.getPrice() %></h2>
				<input type="button" value="비교함에 넣기" id="btn" />
			</div>
		</div>
		<br />
		<div id="pdesc">
			<h1>상품 요약설명 or 주요스펙</h1>
			<span>가격대</span>
			<span>타입</span>
			<span>용량</span>
			<span>해상도</span>
			<span>크기</span>
      	</div>
		
		
		 <!-- 더보기 기능 -->
		<div id="analysisdiv" class="wrapper">
				
				<div class="show-more">상품 상세설명 펼처보기 ▼</div>
				
				<div class="analysis" id="empty">
				</div>
				
				<div class="analysis">
				<h1>스펙분석</h1>
				</div>
							
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
				
				<div class="analysis">
				<h2>2. 화질 : 좋음</h2>
				<p>TV종류 : 존나좋은 TV <br />
					LCD 패널에 나노셀 처리가 된 제품으로 일반 LCD TV 대비 색재현력, 밝기, 시야각 등의 화질이 더 좋은 제품입니다. <br />
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
	
</div>
</body>
</html>