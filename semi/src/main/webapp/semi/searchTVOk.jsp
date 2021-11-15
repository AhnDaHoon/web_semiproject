<%@page import="dao.TVDAO"%>
<%@page import="vo.TvVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 	String energy =	request.getParameter("energy");
// 	String brand =	request.getParameter("brand");
// 	String psize =	request.getParameter("psize");

// 	System.out.println(energy);
// 	System.out.println(brand);
// 	System.out.println(psize);

	ArrayList energyArr = new ArrayList();
	ArrayList brandArr = new ArrayList();
	ArrayList psizeArr = new ArrayList();
	
	if(request.getParameter("energy") != null){
		energyArr.add(request.getParameter("energy"));
	}else if(request.getParameter("brand") != null){
		brandArr.add(request.getParameter("brand"));
		
	}else if(request.getParameter("psize") != null){
		psizeArr.add(request.getParameter("psize"));
		
	}
// 	Object obj = session.get
	
	
	


	
%>
