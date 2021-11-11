<%@page import="java.util.HashMap"%>
<%@page import="vo.TongVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Object obj = session.getAttribute("vo");
	TongVO vo = (TongVO)obj;
	String id = vo.getId();
	HashMap<String,String> map = new HashMap<>();
	String mInput = request.getParameter("mInput");
	
	map.put("m", mInput);
	map.put("", id);
	out.println(map);
%>