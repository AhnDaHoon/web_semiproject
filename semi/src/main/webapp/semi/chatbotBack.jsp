<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userinput = request.getParameter("userinput");
	out.println(userinput.trim());
%>