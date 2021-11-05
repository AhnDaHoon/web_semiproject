<%@page import="vo.TongVO"%>
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
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		TongDAO dao = new TongDAO();
		TongVO vo = dao.selectOne(id, pw);
		
		if(vo != null){
			/* !-- 로그인이 되어 있는 상태라면 이름 --> */
			// sesstion 내장객체
			/* session.setAttribute("이름", 객체); */
			// session 객체에 vo라는 이름으로 MemberVO객체의 속성으로 지정
			session.setAttribute("vo", vo);
	
// 			response.sendRedirect("main.jsp");
	%>
			<h1>ID: <%= vo.getId() %></h1>
			<h1>PWD: <%= vo.getPw() %></h1>
			<h1>NAME: <%= vo.getUname() %></h1>
			<h1>BURTH: <%= vo.getBurth() %></h1>
			<h1>GENDER: <%= vo.getGender() %></h1>
			<h1>HP: <%= vo.getHp() %></h1>
			<h1>EMAIL: <%= vo.getEmail() %></h1>
			<h1>GRADE: <%= vo.getGrade() %></h1>

	<%
		}else{

	%>
		<h1>값이 존재하지 않습니다.</h1>
	
	<%
		}
	
	%>
</body>
</html>