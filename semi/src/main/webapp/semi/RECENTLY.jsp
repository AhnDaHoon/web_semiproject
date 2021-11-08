<%@page import="vo.testInsertVO"%>
<%@page import="dao.testInsertDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$(".asd").on("click", function(){
			console.log($(this).val());
			console.log($(".asd").val());
			console.log($("#asd2").val());
			console.log($("#asd2"));

		})
	})
</script>
<style>
	.asd:hover{
		cursor: pointer;
	}
</style>
</head>
<body>

<%
	testInsertDAO dao = new testInsertDAO();
	testInsertVO vo = dao.selectOne("1");
%>
	<table>		
		<tr height="25">
			<td width="100" class = "asd" >1</td>
		</tr>
		
		<tr height="25">
			<td width="100" class = "asd" >2</td>
		</tr>
		
		<tr height="25">
			<td width="100" class = "asd" id="asd2">3</td>
		</tr>
		
		<tr height="25">
			<td width="100" class = "asd" >4</td>
		</tr>
		
		<tr height="25"  class = "asd">
			<td width="100" >5</td>
		</tr>

		<tr height="25">
			<td width="100" class = "asd" >6</td>
		</tr>
		
		<tr>
			<td><img src="../images/ball15.png" alt="" id="productimg"/></td>
			<td><p id="productp" >a</p></td>
		</tr>
	</table>
</body>
</html>