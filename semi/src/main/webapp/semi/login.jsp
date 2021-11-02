<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#container{
		position: absolute;
		top: 10%;
		left: 40%;
	}
	
	input{
		margin: 10px;
	}
	


</style>
</head>
<body>
	<div id="container">
		<form action="loginOk.jsp">
			<table>
				<tr>
					<td><input type="text" name="id" id="" placeholder="ID" class="login"/></td>
				</tr>
				
				<tr>
					<td><input type="password" name="pw" id=""  placeholder="PW" class="login"/></td>
				</tr>
							
				<tr>
					<td> <a href="">아이디&비밀번호찾기 / </a> </td>
					<td><a href="register.jsp">회원가입</a></td>
				</tr>
				
				<tr>
					<td> <input type="submit" value="로그인" id="submit"/> </td>
				</tr>
			</table>
		</form>
	</div>
	
</body>
</html>