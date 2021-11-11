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
			$("#icondiv2_1").hide();
			$("#icondiv3").hide();
			$("#icondiv3_1").hide();
			$("#icondiv3_2").hide();
			$("#icondiv4").hide();
			$("#icondiv4_1").hide();
			$("#icondiv5").hide();
			$("#icondiv1").toggle();
		})
		$("#icon2").on("click", function(){
			$("#icondiv1").hide();
			$("#icondiv2_1").hide();
			$("#icondiv3").hide();
			$("#icondiv3_1").hide();
			$("#icondiv3_2").hide();
			$("#icondiv4").hide();
			$("#icondiv4_1").hide();
			$("#icondiv5").hide();
			$("#icondiv2").toggle();
		})
		$("#icon3").on("click", function(){
			$("#icondiv1").hide();
			$("#icondiv2").hide();
			$("#icondiv2_1").hide();
			$("#icondiv3_1").hide();
			$("#icondiv3_2").hide();
			$("#icondiv4").hide();
			$("#icondiv4_1").hide();
			$("#icondiv5").hide();
			$("#icondiv3").toggle();
		})
		$("#icon4").on("click", function(){
			$("#icondiv1").hide();
			$("#icondiv2").hide();
			$("#icondiv2_1").hide();
			$("#icondiv3_1").hide();
			$("#icondiv3_2").hide();
			$("#icondiv3").hide();
			$("#icondiv5").hide();
			$("#icondiv4_1").hide();
			$("#icondiv4").toggle();
		})
		$("#icon5").on("click", function(){
			$("#icondiv1").hide();
			$("#icondiv2").hide();
			$("#icondiv2_1").hide();
			$("#icondiv3_1").hide();
			$("#icondiv3_2").hide();
			$("#icondiv3").hide();
			$("#icondiv4").hide();
			$("#icondiv4_1").hide();
			$("#icondiv5").toggle();
		})
		$("#btn1").on("click", function(){
			$("#icondiv1").hide();
			$("#icondiv2").hide();
			$("#icondiv3_1").hide();
			$("#icondiv3_2").hide();
			$("#icondiv3").hide();
			$("#icondiv4").hide();
			$("#icondiv4_1").hide();
			$("#icondiv5").hide();
			$("#icondiv2_1").toggle();
		})
		$("#btn2").on("click", function(){
			$("#icondiv1").hide();
			$("#icondiv2_1").hide();
			$("#icondiv3").hide();
			$("#icondiv3_1").hide();
			$("#icondiv3_2").hide();
			$("#icondiv4").hide();
			$("#icondiv4_1").hide();
			$("#icondiv5").hide();
			$("#icondiv2").toggle();
		})
		$("#btn3").on("click", function(){
			$("#icondiv1").hide();
			$("#icondiv2").hide();
			$("#icondiv2_1").hide();
			$("#icondiv4").hide();
			$("#icondiv4_1").hide();
			$("#icondiv5").hide();
			$("#icondiv3").hide();
			$("#icondiv3_2").hide();
			$("#icondiv3_1").toggle();
		})
		$("#btn4").on("click", function(){
			$("#icondiv1").hide();
			$("#icondiv2").hide();
			$("#icondiv2_1").hide();
			$("#icondiv4").hide();
			$("#icondiv4_1").hide();
			$("#icondiv5").hide();
			$("#icondiv3_1").hide();
			$("#icondiv3_2").hide();
			$("#icondiv3").toggle();
		})
		$("#btn5").on("click", function(){
			$("#icondiv1").hide();
			$("#icondiv2").hide();
			$("#icondiv2_1").hide();
			$("#icondiv4").hide();
			$("#icondiv4_1").hide();
			$("#icondiv5").hide();
			$("#icondiv3").hide();
			$("#icondiv3_1").hide();
			$("#icondiv3_2").toggle();
		})
		$("#btn6").on("click", function(){
			$("#icondiv1").hide();
			$("#icondiv2").hide();
			$("#icondiv2_1").hide();
			$("#icondiv4").hide();
			$("#icondiv4_1").hide();
			$("#icondiv5").hide();
			$("#icondiv3").hide();
			$("#icondiv3_2").hide();
			$("#icondiv3_1").toggle();
		})
		$("#btn7").on("click", function(){
			$("#icondiv1").hide();
			$("#icondiv2").hide();
			$("#icondiv2_1").hide();
			$("#icondiv4").hide();
			$("#icondiv5").hide();
			$("#icondiv3").hide();
			$("#icondiv3_1").hide();
			$("#icondiv3_2").hide();
			$("#icondiv4_1").toggle();
		})
		$("#btn8").on("click", function(){
			$("#icondiv1").hide();
			$("#icondiv2").hide();
			$("#icondiv2_1").hide();
			$("#icondiv4_1").hide();
			$("#icondiv5").hide();
			$("#icondiv3").hide();
			$("#icondiv3_2").hide();
			$("#icondiv3_1").hide();
			$("#icondiv4").toggle();
		})
		
		$("img[src='../images/refri.png']").on("click" , function(){
			location.href = "searchRefri.jsp";
		})
		$("img[src='../images/laptop.png']").on("click" , function(){
			location.href = "searchComputer.jsp";
		})
		$("img[src='../images/tv.png']").on("click" , function(){
			location.href = "searchTV.jsp";
		})
		$("img[src='../images/washing.png']").on("click" , function(){
			location.href = "searchRefri.jsp";
		})
		$("img[src='../images/cleaner.png']").on("click" , function(){
			location.href = "searchCleaner.jsp";
		})
		
	})
	window.onload=changeimg;
	
	    var nextimg = 1;
        function changeimg(){
           var img1 = document.getElementById("img1");
            
            if(nextimg == 1){
            	img1.src = "../images/0930Q1.jpg";
            }
            else if(nextimg == 2){
            	img1.src = "../images/0930Q2.jpg";
            }
            else if(nextimg == 3){
            	img1.src = "../images/0930Q3.jpg";
            }
            else if(nextimg == 4){
            	img1.src = "../images/0930Q4.jpg";
            }
            else if(nextimg == 5){
            	img1.src = "../images/0930Q5.jpg";
            }
            else if(nextimg == 6){
            	img1.src = "../images/0930Q6.jpg";
            }
            nextimg++;
            window.setTimeout(changeimg,3000);
            if(nextimg == 7){
                nextimg = 1;
            }
            

        }
</script>

<style>
	*{
		font-size: 25px;
		font-family: "야놀자 야체";
	}
	.whole{
		width: 1800px;
		min-width: 1800px;
		margin: 0 auto;
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
		border: 1px solid black;
		width: 1000px;
		height: 300px;
	}
	#branddiv{
		margin-top : 30px;
		width: 620px;
	}
	.brandimg{
		border: 1px solid black;
		margin : 0px;
		width: 300px;
		height: 100px;
	}
	#icondiv{
		width: 870px;
		height: 150px;
	}
	.icon{
		margin-top : 50px;
		margin-right: 50px;
		margin-left: 50px;
		width: 70px;
		height: 70px
	}
	.icon,img:hover {
		cursor: pointer;
	}
	.pickimg{
		width: 300px;
		height: 300px;
		margin-left: 30px;
		border: 1px solid black;
	}
	.pimg{
		width: 30px;
		height: 30px;
	}
	p{
		font-size: 40px;
		font-weight: bold;
		font-family: "야놀자 야체";
	}
	.pick1{
		width : 1700px;
		height: 420px;
		margin: 0 auto;
		border: 1px solid black;
	}
	#icondiv1{
		position:relative;
		top: 40px;
		margin-bottom:20px;
		border: 1px solid black;
		width: 680px;
		height: 350px;
	}
	#icondiv2{
		position:relative;
		top: 40px;
		margin-bottom:20px;
		border: 1px solid black;
		width: 680px;
		height: 350px;
	}
	#icondiv2_1{
		position:relative;
		top: 40px;
		margin-bottom:20px;
		border: 1px solid black;
		width: 680px;
		height: 350px;
	}
	#icondiv3{
		position:relative;
		top: 40px;
		margin-bottom:20px;
		border: 1px solid black;
		width: 680px;
		height: 350px;
	}
	#icondiv3_1{
		position:relative;
		top: 40px;
		margin-bottom:20px;
		border: 1px solid black;
		width: 680px;
		height: 350px;
	}
	#icondiv3_2{
		position:relative;
		top: 40px;
		margin-bottom:20px;
		border: 1px solid black;
		width: 680px;
		height: 350px;
	}
	#icondiv4{
		position:relative;
		top: 40px;
		margin-bottom:20px;
		border: 1px solid black;
		width: 680px;
		height: 350px;
	}
	#icondiv4_1{
		position:relative;
		top: 40px;
		margin-bottom:20px;
		border: 1px solid black;
		width: 680px;
		height: 350px;
	}
	#icondiv5{
		position:relative;
		top: 40px;
		margin-bottom:20px;
		border: 1px solid black;
		width: 680px;
		height: 350px;
	}
	.icon1div{
		float: left;
		text-align: center;
	}
	.iconp{
		font-size:25px;
		color : black;
		font-family: "야놀자 야체";
	}
	.icon2div{
		float: left;
		text-align: center;
	}
	.btn{
		text-align: center;
	}
	.picktddiv{
		float: left;
		text-align: center;
	}
	
</style>
</head>
<body>
<div class="whole">
	<jsp:include page="chatbotMain.jsp"></jsp:include>
	<jsp:include page="header.jsp"></jsp:include>
	
	<div class="container">
		<div id="imgdiv" class="divclass">
			<img src="../images/0930Q6.jpg" alt="" id="img1"/>
		</div>
		<div id="branddiv" class="divclass">
			<img src="../images/coupang.png" alt="" class="brandimg"/>
			<img src="../images/coupang.png" alt="" class="brandimg"/>
			<img src="../images/coupang.png" alt="" class="brandimg"/>
			<img src="../images/coupang.png" alt="" class="brandimg"/>
		</div>
		<div class="divclass" id="icondiv">
			<div class="icon1div">
				<img src="../images/star1.png" alt="" class="icon" id="icon1"/><br />
				<p class="iconp">인기제품</p>
			</div>
			<div class="icon1div">
				<img src="../images/dryer.png" alt="" class="icon" id="icon2"/><br />
				<p class="iconp">생활가전</p>
			</div>
			<div class="icon1div">
				<img src="../images/ricecooker.png" alt="" class="icon" id="icon3"/><br />
				<p class="iconp">주방가전</p>
			</div>
			<div class="icon1div">
				<img src="../images/fan.png" alt="" class="icon" id="icon4"/><br />
				<p class="iconp">계절가전</p>
			</div>
			<div class="icon1div">
				<img src="../images/computer.png" alt="" class="icon" id="icon5"/><br />
				<p class="iconp">디지털IT</p>
			</div>
		</div>
		
		<div class="divclass" id="icondiv1" style="display:none">
		<table>
		  <tr>
			<td>
				<div class="icon2div">
					<img src="../images/refri.png" alt="" class="icon"/> <br />
					<p class="iconp">냉장고</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/laptop.png" alt="" class="icon"/> <br />
					<p class="iconp">노트북</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/cleaner.png" alt="" class="icon"/> <br />
					<p class="iconp">청소기</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/washing.png" alt="" class="icon"/> <br />
					<p class="iconp">세탁기</p>
				</div>
			</td>
		  </tr>
		  <tr>
			<td>
				<div class="icon2div">
					<img src="../images/tv.png" alt="" class="icon"/> <br />
					<p class="iconp">TV</p>
				</div>
			</td>
		  </tr>
		</table>
		</div>
		<div class="divclass" id="icondiv2" style="display:none">
			<table>
		  <tr>
			<td>
				<div class="icon2div">
					<img src="../images/cleaner.png" alt="" class="icon"/> <br />
					<p class="iconp">청소기</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/handcleaner.png" alt="" class="icon"/> <br />
					<p class="iconp">핸디형청소기</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/tv.png" alt="" class="icon"/> <br />
					<p class="iconp">TV</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/robot.png" alt="" class="icon"/> <br />
					<p class="iconp">로봇청소기</p>
				</div>
			</td>
		  </tr>
		  <tr>
			<td>
				<div class="icon2div">
					<img src="../images/washing.png" alt="" class="icon"/> <br />
					<p class="iconp">세탁기</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/dryer.png" alt="" class="icon"/> <br />
					<p class="iconp">건조기</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/hairdryer.png" alt="" class="icon"/> <br />
					<p class="iconp">헤어드라이어</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/massage.png" alt="" class="icon"/> <br />
					<p class="iconp">마사지건</p>
				</div>
			</td>
		  </tr>
		  <tr>
			<td colspan="4" class="btn">
				<input type="button" value="더보기" id="btn1"/>
			</td>
		  </tr>
		</table>
		</div>
		
		<div class="divclass" id="icondiv2_1" style="display:none">
			<table>
		  <tr>
			<td>
				<div class="icon2div">
					<img src="../images/steam.png" alt="" class="icon"/> <br />
					<p class="iconp">스팀다리미</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/floormop.png" alt="" class="icon"/> <br />
					<p class="iconp">물걸레청소기</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/clothes.png" alt="" class="icon"/> <br />
					<p class="iconp">의류관리기</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/shoulder.png" alt="" class="icon"/> <br />
					<p class="iconp">어깨안마기</p>
				</div>
			</td>
		  </tr>
		  <tr>
			<td>
				<div class="icon2div">
					<img src="../images/remover.png" alt="" class="icon"/> <br />
					<p class="iconp">보풀제거기</p>
				</div>
			</td>
		  </tr>
		  <tr>
			<td colspan="4" class="btn">
				<input type="button" value="뒤로가기" id="btn2"/>
			</td>
		  </tr>
		</table>
		</div>
		
		
		<div class="divclass" id="icondiv3" style="display:none">
			<table>
		  <tr>
			<td>
				<div class="icon2div">
					<img src="../images/grill.png" alt="" class="icon"/> <br />
					<p class="iconp">전기그릴</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/refri.png" alt="" class="icon"/> <br />
					<p class="iconp">냉장고</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/kimchi.png" alt="" class="icon"/> <br />
					<p class="iconp">김치냉장고</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/airfrier.png" alt="" class="icon"/> <br />
					<p class="iconp">에어프라이어</p>
				</div>
			</td>
		  </tr>
		  <tr>
			<td>
				<div class="icon2div">
					<img src="../images/dishwasher.png" alt="" class="icon"/> <br />
					<p class="iconp">식기세척기</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/ricecooker.png" alt="" class="icon"/> <br />
					<p class="iconp">전기밥솥</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/microwave.png" alt="" class="icon"/> <br />
					<p class="iconp">전자레인지</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/kettle.png" alt="" class="icon"/> <br />
					<p class="iconp">전기포트</p>
				</div>
			</td>
		  </tr>
		  <tr>
			<td colspan="4" class="btn">
				<input type="button" value="더보기" id="btn3"/>
			</td>
		  </tr>
		</table>
		
		</div>
				<div class="divclass" id="icondiv3_1" style="display:none">
			<table>
		  <tr>
			<td>
				<div class="icon2div">
					<img src="../images/electricwave.png" alt="" class="icon"/> <br />
					<p class="iconp">전기레인지</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/purifier.png" alt="" class="icon"/> <br />
					<p class="iconp">정수기</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/garbage.png" alt="" class="icon"/> <br />
					<p class="iconp">음식물처리기</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/blender.png" alt="" class="icon"/> <br />
					<p class="iconp">초고속블렌더</p>
				</div>
			</td>
		  </tr>
		  <tr>
			<td>
				<div class="icon2div">
					<img src="../images/oven.png" alt="" class="icon"/> <br />
					<p class="iconp">전기오븐</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/waffle.png" alt="" class="icon"/> <br />
					<p class="iconp">와플메이커</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/handblender.png" alt="" class="icon"/> <br />
					<p class="iconp">핸드블렌더</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/coffee.png" alt="" class="icon"/> <br />
					<p class="iconp">커피머신</p>
				</div>
			</td>
		  </tr>
		  <tr>
			<td colspan="4" class="btn">
				<input type="button" value="뒤로가기" id="btn4"/>
				<input type="button" value="더보기" id="btn5"/>
			</td>
		  </tr>
		</table>
		</div>
		
	<div class="divclass" id="icondiv3_2" style="display:none">
		<table style="height: 290px;">
		  <tr style="vertical-align: top;">
			<td>
				<div class="icon2div">
					<img src="../images/toaster.png" alt="" class="icon"/> <br />
					<p class="iconp">스팀토스터기</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/ice.png" alt="" class="icon"/> <br />
					<p class="iconp">제빙기</p>
				</div>
			</td>
			<td width="150px"></td>
			<td width="150px"></td>
		  </tr>
		  <tr>
			<td colspan="4" class="btn">
				<input type="button" value="뒤로가기" id="btn6"/>
			</td>
		  </tr>
		</table>
		</div>
		
		<div class="divclass" id="icondiv4" style="display:none">
			<table>
		  <tr>
			<td>
				<div class="icon2div">
					<img src="../images/blanket.png" alt="" class="icon"/> <br />
					<p class="iconp">전기패드</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/humidifier.png" alt="" class="icon"/> <br />
					<p class="iconp">가습기</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/aircleaner.png" alt="" class="icon"/> <br />
					<p class="iconp">공기청정기</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/waterblanket.png" alt="" class="icon"/> <br />
					<p class="iconp">온수매트</p>
				</div>
			</td>
		  </tr>
		  <tr>
			<td>
				<div class="icon2div">
					<img src="../images/aircon.png" alt="" class="icon"/> <br />
					<p class="iconp">에어컨</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/fanheater.png" alt="" class="icon"/> <br />
					<p class="iconp">온풍기</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/heater.png" alt="" class="icon"/> <br />
					<p class="iconp">전기히터</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/dehumidifier.png" alt="" class="icon"/> <br />
					<p class="iconp">제습기</p>
				</div>
			</td>
		  </tr>
		  <tr>
			<td colspan="4" class="btn">
				<input type="button" value="더보기" id="btn7"/>
			</td>
		  </tr>
		</table>
		</div>
		
		<div class="divclass" id="icondiv4_1" style="display:none">
			<table>
		  <tr>
			<td>
				<div class="icon2div">
					<img src="../images/ciculator.png" alt="" class="icon"/> <br />
					<p class="iconp">서큘레이터</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/fan.png" alt="" class="icon"/> <br />
					<p class="iconp">선풍기</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/portablefan.png" alt="" class="icon"/> <br />
					<p class="iconp">휴대용선풍기</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/windowaircon.png" alt="" class="icon"/> <br />
					<p class="iconp">창문형에어컨</p>
				</div>
			</td>
		  </tr>
		  <tr>
			<td>
				<div class="icon2div">
					<img src="../images/poratbleaircon.png" alt="" class="icon"/> <br />
					<p class="iconp">이동식에어컨</p>
				</div>
			</td>
		  </tr>
		   <tr>
			<td colspan="4" class="btn">
				<input type="button" value="뒤로가기" id="btn8"/>
			</td>
		  </tr>
		</table>
		</div>
		
		<div class="divclass" id="icondiv5" style="display:none">
		<table>
		  <tr>
			<td>
				<div class="icon2div">
					<img src="../images/beam.png" alt="" class="icon"/> <br />
					<p class="iconp">빔프로젝터</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/laptop.png" alt="" class="icon"/> <br />
					<p class="iconp">노트북</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/tablet.png" alt="" class="icon"/> <br />
					<p class="iconp">테블릿</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/monitor.png" alt="" class="icon"/> <br />
					<p class="iconp">모니터</p>
				</div>
			</td>
		  </tr>
		</table>
		</div>
		
		<br /><br />
		<div class="divclass" id="pickdiv">
			<div class="pick1">
				<p>4조의 노트북 추천픽 <img src="../images/e.jpg" alt="" class="pimg"/> </p><br />
		<table>
		  <tr>
			<td>
				<div class="picktddiv">
					<img src="../images/computer1.png" alt="" class="pickimg"/> <br />
					<p class="iconp">노트북1</p>
				</div>
			</td>
			<td>
				<div class="picktddiv">
					<img src="../images/computer1.png" alt="" class="pickimg"/> <br />
					<p class="iconp">노트북2</p>
				</div>
			</td>
			<td>
				<div class="picktddiv">
					<img src="../images/computer1.png" alt="" class="pickimg"/> <br />
					<p class="iconp">노트북3</p>
				</div>
			</td>
			<td>
				<div class="picktddiv">
					<img src="../images/computer1.png" alt="" class="pickimg"/> <br />
					<p class="iconp">노트북4</p>
				</div>
			</td>
			<td>
				<div class="picktddiv">
					<img src="../images/computer1.png" alt="" class="pickimg"/> <br />
					<p class="iconp">노트북5</p>
				</div>
			</td>
		  </tr>
		</table>
			</div>
		</div>	<br /><br />
		<div class="divclass" id="pickdiv">
			<div class="pick1">
				<p>4조의 냉장고 추천픽 <img src="../images/e.jpg" alt="" class="pimg"/> </p><br />
		<table>
		  <tr>
			<td>
				<div class="picktddiv">
					<img src="../images/aa.jpg" alt="" class="pickimg"/> <br />
					<p class="iconp">냉장고1</p>
				</div>
			</td>
			<td>
				<div class="picktddiv">
					<img src="../images/aa.jpg" alt="" class="pickimg"/> <br />
					<p class="iconp">냉장고2</p>
				</div>
			</td>
			<td>
				<div class="picktddiv">
					<img src="../images/aa.jpg" alt="" class="pickimg"/> <br />
					<p class="iconp">냉장고3</p>
				</div>
			</td>
			<td>
				<div class="picktddiv">
					<img src="../images/aa.jpg" alt="" class="pickimg"/> <br />
					<p class="iconp">냉장고4</p>
				</div>
			</td>
			<td>
				<div class="picktddiv">
					<img src="../images/aa.jpg" alt="" class="pickimg"/> <br />
					<p class="iconp">냉장고5</p>
				</div>
			</td>
		  </tr>
		</table>
			</div>
		</div>	<br /><br />
		<div class="divclass" id="pickdiv">
			<div class="pick1">
				<p>4조의 TV 추천픽 <img src="../images/e.jpg" alt="" class="pimg"/> </p><br />
					<table>
		  <tr>
			<td>
				<div class="picktddiv">
					<img src="../images/cc.jpg" alt="" class="pickimg"/> <br />
					<p class="iconp">TV1</p>
				</div>
			</td>
			<td>
				<div class="picktddiv">
					<img src="../images/cc.jpg" alt="" class="pickimg"/> <br />
					<p class="iconp">TV2</p>
				</div>
			</td>
			<td>
				<div class="picktddiv">
					<img src="../images/cc.jpg" alt="" class="pickimg"/> <br />
					<p class="iconp">TV3</p>
				</div>
			</td>
			<td>
				<div class="picktddiv">
					<img src="../images/cc.jpg" alt="" class="pickimg"/> <br />
					<p class="iconp">TV4</p>
				</div>
			</td>
			<td>
				<div class="picktddiv">
					<img src="../images/cc.jpg" alt="" class="pickimg"/> <br />
					<p class="iconp">TV5</p>
				</div>
			</td>
		  </tr>
		</table>
			</div>
		</div>	<br /><br />
		<div class="divclass" id="pickdiv">
			<div class="pick1">
				<p>4조의 세탁기 추천픽 <img src="../images/e.jpg" alt="" class="pimg"/> </p><br />
			<table>
		  <tr>
			<td>
				<div class="picktddiv">
					<img src="../images/dd.jpg" alt="" class="pickimg"/> <br />
					<p class="iconp">세탁기1</p>
				</div>
			</td>
			<td>
				<div class="picktddiv">
					<img src="../images/dd.jpg" alt="" class="pickimg"/> <br />
					<p class="iconp">세탁기2</p>
				</div>
			</td>
			<td>
				<div class="picktddiv">
					<img src="../images/dd.jpg" alt="" class="pickimg"/> <br />
					<p class="iconp">세탁기3</p>
				</div>
			</td>
			<td>
				<div class="picktddiv">
					<img src="../images/dd.jpg" alt="" class="pickimg"/> <br />
					<p class="iconp">세탁기4</p>
				</div>
			</td>
			<td>
				<div class="picktddiv">
					<img src="../images/dd.jpg" alt="" class="pickimg"/> <br />
					<p class="iconp">세탁기5</p>
				</div>
			</td>
		  </tr>
		</table>
			</div>
		</div>	<br /><br />
		<div class="divclass" id="pickdiv">
			<div class="pick1">
				<p>4조의 청소기 추천픽 <img src="../images/e.jpg" alt="" class="pimg"/> </p><br />
			<table>
		  <tr>
			<td>
				<div class="picktddiv">
					<img src="../images/bb.jpg" alt="" class="pickimg"/> <br />
					<p class="iconp">청소기1</p>
				</div>
			</td>
			<td>
				<div class="picktddiv">
					<img src="../images/bb.jpg" alt="" class="pickimg"/> <br />
					<p class="iconp">청소기2</p>
				</div>
			</td>
			<td>
				<div class="picktddiv">
					<img src="../images/bb.jpg" alt="" class="pickimg"/> <br />
					<p class="iconp">청소기3</p>
				</div>
			</td>
			<td>
				<div class="picktddiv">
					<img src="../images/bb.jpg" alt="" class="pickimg"/> <br />
					<p class="iconp">청소기4</p>
				</div>
			</td>
			<td>
				<div class="picktddiv">
					<img src="../images/bb.jpg" alt="" class="pickimg"/> <br />
					<p class="iconp">청소기5</p>
				</div>
			</td>
		  </tr>
		</table>			
			</div>
		</div>	<br /><br />
		
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>