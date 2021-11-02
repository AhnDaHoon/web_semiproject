<%@page import="dao.TongDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		
		TongDAO dao = new TongDAO();
		String findId = dao.findID(name, phone);
		if(findId != "null"){
	%>
		<h1>아이디는<%= findId %> 입니다.</h1>			
	<%
		}else{
	%>
		<h1>이름과 전화번호를 다시 확인해주세요</h1>
	<%
		}
	%>			
		<h2><%= name %></h2>
		<h2><%= phone %></h2>
		
		

</body>
</html>