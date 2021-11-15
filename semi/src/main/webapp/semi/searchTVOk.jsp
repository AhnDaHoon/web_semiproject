<%@page import="dao.TVDAO"%>
<%@page import="vo.TvVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String energy = "null";
	String brand = "null";
	String psize = "null";

	if(request.getParameter("energy") == null){
		energy = "null";
	}else if(request.getParameter("energy") != null){
		energy = request.getParameter("energy");
		
	}
	if(request.getParameter("brand") == null){
		brand = "null";
	}else if(request.getParameter("brand") != null){
		brand = request.getParameter("brand");	
	}
	
	if(request.getParameter("psize") == null){
		psize = "null";	
	}else if(request.getParameter("psize") != null){
		psize = request.getParameter("psize");
	}
	
	
	Object tvosObj = session.getAttribute("tvoArrSecond");
	Object tvoObj = session.getAttribute("tvoArr");
	
	ArrayList<TvVO> tvoArr = (ArrayList<TvVO>) tvoObj;
	ArrayList<TvVO> choiceTvoArr = new ArrayList<TvVO>();
	
	TVDAO tdao = new TVDAO();
	ArrayList<TvVO> retvoArr = tdao.getAll();
	
	

	ArrayList<String> energyArr = (ArrayList<String>)session.getAttribute("energyArr");
	ArrayList<String> brandArr = (ArrayList<String>)session.getAttribute("brandArr");
	ArrayList<String> psizeArr = (ArrayList<String>)session.getAttribute("psizeArr");
	
	
	
	try{
		String energyTemp = null;
		if(energy != "null"){
			if(energy.equals("energyreset")){
		
				session.setAttribute("tvoArr", retvoArr);
				energyArr.clear();
				session.setAttribute("energyArr", energyArr);
				return;
		
			}
			
			energyArr.add(energy);
			if(energyArr.size() >= 1){
				 for (int i = 0; i < energyArr.size(); i++) {
		             for (int j = 0; j < energyArr.size(); j++) {
		                 if (i == j) {
		                 } else if (energyArr.get(j).equals(energyArr.get(i))) {
		                	energyArr.remove(j);
		                	energyTemp = Integer.toString(i);
		                	break;
		                 }
		             }
		         }
			}
			
			if(energyTemp != null){
				energyArr.remove(Integer.parseInt(energyTemp));		
			}
		
			for(TvVO x: retvoArr){
				for(String y: energyArr){
					if(y.equals(Integer.toString(x.getEnergy()))){
						choiceTvoArr.add(x);
	// 					System.out.println(x);
	// 					System.out.println(y);
					}else{
					}
				}
			}
			if(energyArr.size() == 0){
				session.setAttribute("tvoArr", tdao.getAll());
				session.setAttribute("energyArr", energyArr);
				return;
			}
			
			session.setAttribute("tvoArr", choiceTvoArr);
			session.setAttribute("energyArr", energyArr);
		
			
			
		}else if(energy == "null"){
			System.out.println("energy:  "+energy);
		} 
		
	
		/////////////////////////////////////////////////////////////////////////////////////////
		// brand
		String brandTemp = null;
		if(brand != "null"){
			if(brand.equals("brandreset")){
				brandArr.clear();
				session.setAttribute("brandArr", brandArr);
				return;
			}
			
			brandArr.add(brand);
			if(brandArr.size() >= 1){
				 for (int i = 0; i < brandArr.size(); i++) {
		             for (int j = 0; j < brandArr.size(); j++) {
		                 if (i == j) {
		                 } else if (brandArr.get(j).equals(brandArr.get(i))) {
		                	 brandArr.remove(j);
		                	 brandTemp = Integer.toString(i); 
		                	 break;
		                 }
		             }
		         }
			}
			
			if(brandTemp != null){
				brandArr.remove(Integer.parseInt(brandTemp));		
			}
			
			
			for(TvVO x: tvoArr){
				for(String y: brandArr){
	// 				System.out.println(x.getBrand());
	// 				System.out.println(y);
					if(y.equals(x.getBrand())){
						choiceTvoArr.add(x);
	// 					System.out.println("choiceTvoArr1: "+x);
	// 					System.out.println("brandArr: "+y);
					}else{
	// 					System.out.println("brandArr: "+brandArr);
						
					}
				}
			}
			
	// 		System.out.println("choiceTvoArr2:        " + choiceTvoArr);
			session.setAttribute("tvoArr", choiceTvoArr);
			session.setAttribute("brandArr", brandArr);
			
			if(brandArr.size() == 0){
				session.setAttribute("tvoArr", tvoArr);
				session.setAttribute("brandArr", brandArr);
// 				return;
			}
		}else if(brand == "null"){
			System.out.println("brand:  "+brand);

		}
		
		
		
		
		
		/////////////////////////////////////////////////////////////////////////////////////////
		// psize
		String psizeTemp = null;
		if(psize != "null"){
			if(psize.equals("psizereset")){
				psizeArr.clear();
				session.setAttribute("psizeArr", psizeArr);
				return;
			}
			
			psizeArr.add(psize);

			if(psizeArr.size() >= 1){
				 for (int i = 0; i < psizeArr.size(); i++) {
		             for (int j = 0; j < psizeArr.size(); j++) {
		                 if (i == j) {
		                 } else if (psizeArr.get(j).equals(psizeArr.get(i))) {
		                	 psizeArr.remove(j);
		                	 psizeTemp = Integer.toString(i); 
		                	 break;
		                 }
		             }
		         }
			}
			
			if(psizeTemp != null){
				psizeArr.remove(Integer.parseInt(psizeTemp));		
			}
			
			System.out.println("5: "+psizeArr);
			for(TvVO x: tvoArr){
				for(String y: psizeArr){		
					if(Integer.parseInt(y) == 39 && x.getPsize() <= 39 ){
						System.out.println(y);
						choiceTvoArr.add(x);
						continue;
						
					}else if(Integer.parseInt(y) == 49 && x.getPsize() <= 49 && x.getPsize() >= 40){
						System.out.println("49:  "+y);
						choiceTvoArr.add(x);
						continue;
						
					}else if(Integer.parseInt(y) == 59 && x.getPsize() <= 59  && x.getPsize() >= 50){
						System.out.println("59:  "+y);
						choiceTvoArr.add(x);
						continue;
						
					}else if(Integer.parseInt(y) == 69 && x.getPsize() <= 69  && x.getPsize() >= 60){
						System.out.println("69:  "+y);
						choiceTvoArr.add(x);
						continue;
						
					}else if(Integer.parseInt(y) == 200 && x.getPsize() <= 70){
						System.out.println("200:  "+y);
						choiceTvoArr.add(x);
						continue;
					}

				}
			}
			
	// 		System.out.println("choiceTvoArr2:        " + choiceTvoArr);
			session.setAttribute("tvoArr", choiceTvoArr);
			session.setAttribute("psizeArr", psizeArr);
			
			if(brandArr.size() == 0){
				session.setAttribute("tvoArr", tvoArr);
				session.setAttribute("psizeArr", psizeArr);
				return;
			}
		}else if(psize == "null"){
			System.out.println("psize:  "+psize);
		}
	}catch(NullPointerException e){
		System.out.println(e);
	}

	
	
	
	
	
	
	
	
	System.out.println("3: "+energyArr);
	System.out.println("4: "+brandArr);
	System.out.println("5: "+psizeArr);
	System.out.println("6: "+psize);
	System.out.println("6: "+choiceTvoArr);
	
// 	System.out.println(energy);
// 	System.out.println(brand);


	
%>
