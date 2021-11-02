<%@page import="dao.TongDAO"%>
<%@page import="vo.TongVO"%>
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
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String ssn = request.getParameter("ssn");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		
		TongVO vo = new TongVO();
		TongDAO dao = new TongDAO();
		
		vo.setId(id);
		vo.setPw(pw);
		vo.setName(name);
		vo.setSsn(ssn);
		vo.setPhone(phone);
		vo.setEmail(email);
		
		dao.insertOne(vo);
	
		response.sendRedirect("login.jsp");
	%>
<!-- 		<h1>회원가입 성공</h1> -->
<%-- 		<h2>아이디:<%= id %></h2> --%>
<%-- 		<h2>비밀번호:<%= pw %></h2> --%>
<%-- 		<h2>이름<%= name %></h2> --%>
<%-- 		<h2>주민등록번호:<%= ssn %></h2> --%>
<%-- 		<h2>핸드폰번호:<%= phone %></h2> --%>
<%-- 		<h2>이메일:<%= email %></h2> --%>
</body>
</html>