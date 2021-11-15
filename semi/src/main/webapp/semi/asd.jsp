<%@page import="vo.RefriVO"%>
<%@page import="dao.RefriDAO"%>
<%@page import="dao.TVDAO"%>
<%@page import="vo.TvVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	System.out.println("=============================================");

	
	ArrayList<String> energyArr = new ArrayList<String>();
	String energyVal = " ";
	energyArr.add("1");
	energyArr.add("2");
	
	if(energyArr.size() != 0){
		for(int i = 0; i < energyArr.size(); i++){
			if(i == 0){
				energyVal = "WHERE energy = " + energyArr.get(i);			
			}else{
				energyVal = energyVal + " OR energy = " + energyArr.get(i);
			}
		}
	}
	
	ArrayList<String> brandArr = new ArrayList<String>();
	String brandVal = " ";
	brandArr.add("'LG'");	
	brandArr.add("'SAMSUNG'");	
	if(brandArr.size() != 0){
		for(int i = 0; i < brandArr.size(); i++){
			if(i == 0){
				brandVal = "WHERE brand = " + brandArr.get(i);			
			}else{
				brandVal = brandVal + " OR brand = " + brandArr.get(i);
			}
		}
	}
	
	ArrayList<String> doorArr = new ArrayList<String>();
	String doorVal = " ";
	doorArr.add("2");
	if(doorArr.size() != 0){
		for(int i = 0; i < doorArr.size(); i++){
			if(i == 0){
				doorVal = "WHERE door = " + doorArr.get(i);			
			}else{
				doorVal = doorVal + " OR door = " + doorArr.get(i);
			}
		}
	}
	
// 	System.out.println("SELECT pno, code, pname, pdesc, brand, price, regdate, energy, imgfile, door, volume, codename, codename2, aaaa");
// 	System.out.println("FROM(SELECT pno, code, pname, pdesc, brand, price, regdate, energy, imgfile, door, volume, codename, codename2, aaaa ");
// 	System.out.println("		FROM refri ");
// 	System.out.println(energyVal+")");
// 	System.out.println(brandVal);
	RefriDAO dao = new RefriDAO();
	ArrayList<RefriVO> refriArr = dao.searchEa(energyVal, brandVal, doorVal);
			
	System.out.println(refriArr);
	System.out.println(energyVal);
	System.out.println(brandVal);
	System.out.println(doorVal);
	for(RefriVO x: refriArr){
		System.out.println(x);
	}
%>
