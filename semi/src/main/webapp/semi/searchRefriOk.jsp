<%@page import="vo.RefriVO"%>
<%@page import="dao.RefriDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String pEnergy = null;
	String pBrand = null;
	String pDoor = null;
	if(request.getParameter("energy") != null){
		pEnergy = request.getParameter("energy");
	}else if(request.getParameter("brand") != null){
		pBrand = request.getParameter("brand");		
	}else if(request.getParameter("door") != null){
		if(request.getParameter("door").equals("1개")){
			pDoor = "1";		
		}else if(request.getParameter("door").equals("2개")){
			pDoor = "2";	
		}else if(request.getParameter("door").equals("3개")){
			pDoor = "3";	
		}else if(request.getParameter("door").equals("4개")){
			pDoor = "4";	
		}
	}

	Object energyObj = session.getAttribute("energyArr");
	Object brandObj = session.getAttribute("brandArr");
	Object doorObj = session.getAttribute("doorArr");
		
	

// 	System.out.println(pEnergy);
// 	System.out.println(pBrand);
// 	System.out.println(pDoor);

	
//////////////////////////////////////////////////////////////////////////
	// 에너지
	ArrayList<String> energyArr = (ArrayList<String>)energyObj;
	String energyTemp = null;
	String energyVal = " ";
	
	// 똑같은걸 클릭했을때 삭제
	int energyIndex = energyArr.indexOf(pEnergy);
	if(pEnergy != null && energyIndex == -1){
		energyArr.add(pEnergy);		
	}else if(energyIndex != -1 ){
		energyArr.remove(energyIndex);
	}
	
	
	if(energyArr.size() != 0){
		for(int i = 0; i < energyArr.size(); i++){
			if(i == 0){
				energyVal = "WHERE energy = " + energyArr.get(i);			
			}else{
				energyVal = energyVal + " OR energy = " + energyArr.get(i);
			}
		}
	}
	
	
	System.out.println("energyIndex:   "+energyIndex);
	System.out.println("energyArr:     "+energyArr);
	
	
	// 브랜드
	ArrayList<String> brandArr = (ArrayList<String>)brandObj;
	String brandTemp = null;
	String brandVal = " ";
	
	int brandIndex = brandArr.indexOf(pBrand);
	if(pBrand != null && brandIndex == -1){
		brandArr.add(pBrand);		
	}else if(brandIndex != -1 ){
		brandArr.remove(brandIndex);
	}
	
	if(brandArr.size() != 0){
		for(int i = 0; i < brandArr.size(); i++){
			if(i == 0){
				brandVal = "WHERE brand = " + brandArr.get(i);			
			}else{
				brandVal = brandVal + " OR brand = " + brandArr.get(i);
			}
		}
	}
	
	System.out.println("brandIndex:    "+brandIndex);
	System.out.println("brandArr:      "+brandArr);
	System.out.println("pBrand:      "+pBrand);
	
	
	// 도어
	ArrayList<String> doorArr = (ArrayList<String>)doorObj;
	String doorVal = " ";
	int doorIndex = doorArr.indexOf(pDoor);
	if(pDoor != null && doorIndex == -1){
		doorArr.add(pDoor);		
	}else if(doorIndex != -1 ){
		doorArr.remove(doorIndex);
	}	
	if(doorArr.size() != 0){
		for(int i = 0; i < doorArr.size(); i++){
			if(i == 0){
				doorVal = "WHERE door = " + doorArr.get(i);			
			}else{
				doorVal = doorVal + " OR door = " + doorArr.get(i);
			}
		}
	}
	
	
	System.out.println("brandIndex:    "+brandIndex);
	System.out.println("doorArr:      "+doorArr);
	System.out.println("pDoor:      "+pDoor);
	

	
	RefriDAO dao = new RefriDAO();
	ArrayList<RefriVO> refriArr = dao.searchEa(energyVal, brandVal, doorVal);
	
			
	System.out.println(refriArr.size());
// 	System.out.println(brandVal);
// 	System.out.println(doorVal);
// 	for(RefriVO x: refriArr){
// 		System.out.println(x.getPname());

	session.setAttribute("tvoArr", refriArr);
	session.setAttribute("energyArr", energyArr);
	session.setAttribute("brandArr", brandArr);
	session.setAttribute("doorArr", doorArr);
	
	
	
	


%>