<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myInfo</title>
<style>
	.whole{
		width: 1800px;
		min-width: 1800px;
		margin: 0 auto;
	}

	.container {
		text-align: center;
	}
	
	.container>table{
		margin: 0 auto;
		position: relative;
		top: 100px;
	}
	
	#id, #pw, #repw, #email, #code, #save {
		width: 100%;
		height: 30px;
		margin: 0px;
		margin-bottom: 10px;
		font-size: 20px;
	}
	
	#save {
		width: 120px;
		height: 50px;
		font-weight: bold;
	}
	
	img {
		width: 200px;
		height: 100px;
	}
	
</style>
</head>
<body>
<div class="whole">
	<jsp:include page="header.jsp"></jsp:include>

	<form action="MyInfoOk.jsp">
		<div class="container">
		
			<table>
				<tr>
					<th>
						<input type="text" name="id" id="id" placeholder="아이디" readonly="readonly" size=30/>
					</th>
				</tr>
				<tr>
					<th>
						<input type="password" name="pw" id="pw" placeholder="현재 비밀번호" size=30 />
					</th>
				</tr>
				<tr>
					<th>
						<input type="password" name="repw" id="repw" placeholder="바꿀 비밀번호" size=30/>
					</th>
				</tr>
				<tr>
					<th>
						<input type="text" name="email" id="email" placeholder="이메일 입력" size=30 />
					</th>
				</tr>
				<tr>
					<th>
						<img src="../images/amazon.png" alt="" /><br />
						<input type="text" name="code" id="code" placeholder="보안코드 입력" size=30 />
					</th>
				</tr>
				<tr>
					<th>
						<input type="submit" value="저장" id="save" name="save" />
					</th>
				</tr>
			</table>
			
				
		</div>
	</form>
	
	<jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>