<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	$(function(){
	    $(function(){
	        $("img[class=chatImg]").on("click", function(){
	            var win = window.open("chatbotUI.jsp", "_blank", "width=365, height=757, location=no, scrollbars=no, fullscreen=no, resizable=no, left=500, top=500");

	        });
	    })
	})

</script>
<style>
    .chatImg:hover{
        cursor: pointer;

    }
    
    .chatImg{
        position: relative;
        left: 500px;
        top: 500px;
    }
</style>
</head>
<body>
    <a href="chatbotUI.jsp" target="_blank"><img class="chatImg" src="../images/ball1.png" alt=""></a>
</body>
</html>