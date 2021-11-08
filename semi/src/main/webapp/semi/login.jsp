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

	#logincontainer{
		margin: 0 auto;
		background: aqua;	/* css 변경 너비 확인용 가운데 정렬 이상없음 */
		width: 600px;
		position: relative;
		top: 100px;
	}
	
	#id, #pw, #submit{
		margin: 10px;
	}
	


</style>
</head>
<body>

<div class="whole">
	<jsp:include page="header.jsp"></jsp:include>

	<div id="logincontainer">
		<form action="loginOk.jsp">
			<table>
				<tr>
					<td><input type="text" name="id" id="id" placeholder="ID" class="login"/></td>
				</tr>
				
				<tr>
					<td><input type="password" name="pw" id="pw"  placeholder="PW" class="login"/></td>
				</tr>
							
				<tr>
					<td> <a href="find.jsp">아이디&비밀번호찾기 / </a> </td>
					<td><a href="register.jsp">회원가입</a></td>
				</tr>
				
				<tr>
					<td> <input type="submit" value="로그인" id="submit"/> </td>
				</tr>
			</table>
		</form>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>