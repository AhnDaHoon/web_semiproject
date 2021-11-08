<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
* {
	margin: 0px;
	padding: 0px;
}

#headerdiv {
	background: silver;
	height: 250px;
	width: 1800px;
	min-width: 1800px;
}

ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	width: 480px;
	background: white;
}

li a {
	background: white;
	float: left;
	display: block;
	color: #000000;
	text-decoration: none;
	text-align: center;
	padding: 8px 16px;
	text-decoration: none;
	font-weight: bold;
	border: 1px solid grey;
}

li a:hover {
	background: #555555;
	color: white;
}

#logo:hover {
	cursor: pointer;
}

#search {
	font-size: 25px;
	padding-left: 20px;
	height: 40px;
	width: 600px;
	background-image: url('../images/e.jpg');
	background-position: 560px 2px;
	background-size: 40px;
	background-repeat: no-repeat;
	border-radius: 20px;
}

#headerimgdiv {
	position: relative;
	top: 5%;
	left: -180px;
}

#headerdiv>table {
	margin: 0 auto;
}

#searchtable {
	height: 200px;
}

#headernavdiv {
	display: inline-block;
	vertical-align: bottom;
	position: relative;
	left: 25%;
	top: 5%;
}

</style>
<div id="headerdiv">
		<table id="searchtable">
			<tr>
				<th>
					<div id="headerimgdiv">
						<img src="../images/tong.png" alt="" id="logo"style="width: 180px; height: 180px;" />
					</div>
				</th>
				<th>
				<input type="text" name="" id="search" placeholder="상품 검색" />
				</th>
				<th style="vertical-align: bottom;">
					<div id="headernavdiv">
						<ul>
							<li><a href="login.jsp">로그인</a></li>
							<li><a href="myPage.jsp">회원가입</a></li>
							<li><a href="compare1.jsp">비교함</a></li>
							<li><a href="">최근 본 제품</a></li>
							<li><a href="">새 소식</a></li>
						</ul>
					</div>
				</th>
			</tr>
		</table>
</div>