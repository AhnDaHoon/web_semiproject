<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	*{
		margin: 0px;
		padding: 0px;
	}
	#headerdiv{
		background: silver;
		height: 250px;
	}
	#search{
		font-size: 25px;
		padding-left: 10px;
		height: 40px;
		width: 600px;
		background-image: url('../images/e.jpg');
        background-position: 560px 2px;
        background-size: 40px;
        background-repeat: no-repeat;
		border-radius: 20px;
	}
	#headerimgdiv{
		display: inline-block;
		position: absolute;
		left: 15%;
		height: 180px;
	}
	#headersearchdiv{
		margin: 0 auto;
	}
	
	#searchtable {
		height: 200px;
	}
	
	#headernavdiv {
		float: left;
		display: inline-block;
		position: absolute;
		right: 10%;
	}
	
	#headernavdiv>table {
	border: 1px solid black;
		height: 50px;
		width: 500px;
	}
	
	#headernavdiv>th, tr{
		border: 1px solid black;
	}
	.navclass{
		text-decoration: none;
	}
</style>
	<div id="headerdiv">
		<div id="headerimgdiv">
			<img src="../images/before.PNG" alt="" />
		</div>
		
		<div id="headersearchdiv">
			<table id="searchtable">
				<tr>
					<th>
						<input type="text" name="" id="search" placeholder=" 상품 검색"/>
					</th>
				</tr>
			</table>
		</div>
		
		<div id="headernavdiv">
			<table id="nav">
				<tr>
					<th><a href="login.jsp" class="navclass">로그인</a></th>
					<th><a href="myPage.jsp" class="navclass">마이페이지</a></th>
					<th><a href="" class="navclass">비교함</a></th>
					<th><a href="" class="navclass">최근 본 제품</a></th>
				</tr>
			</table>
		</div>
	</div>