<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.whole{
		width: 1800px;
		min-width: 1800px;
		margin: 0 auto;
	}

   #board{
   	   
       width: 900px;
       margin:auto;
   }

   #board,  .btd, .bth{
       border:1px solid black;
       border-collapse: collapse;
       text-align: center;
       font-size: 20px;
       
   }

   #col1{
       width:80%;
   }

   #col2{
       width:10%;
   }
   
   .title{
   	   margin-top:25px;
   	   padding: 20px 0;
   	   text-align:center;
   	   display:block;
   }
   
   #titlespan {
		font-weight: bold;
		font-size: 30px;
		border: 1px solid black;
		border-radius: 20px;
		display: inline-block;
		width:200px;
   }
   
   .btn{
   	   width:100px;
   	   height:30px;
   }
 

</style>
<body>
	<div class="whole">	
		<!-- 헤더 연결  -->
    	<jsp:include page="header.jsp"></jsp:include>
    	
    	<div class="title">
    		<span id="titlespan">새소식</span>
    	</div>
    	<br>
    	<br>
	
	    <table id="board">
	        <tr>
	            <th id="col1" class="bth" >제목</th>
	            <th id="col2" class="bth">게시날짜</th>
	        </tr>
	        <tr>
	            <td class="btd">업데이트했습니다</td>
	            <td class="btd">2021.11.07</td>
	        </tr>
	        <tr>
	            <td class="btd">업데이트했습니다</td>
	            <td class="btd">2021.11.07</td>
	        </tr>
	        <tr>
	            <td class="btd">업데이트했습니다</td>
	            <td class="btd">2021.11.07</td>
	        </tr>
	        <tr>
	            <td class="btd">업데이트했습니다</td>
	            <td class="btd">2021.11.07</td>
	        </tr>
	        <tr>
	            <td class="btd">업데이트했습니다</td>
	            <td class="btd">2021.11.07</td>
	        </tr>
	        <tr>
	            <td colspan="2" class="btd" >1</td>
	        </tr>
	        <tr>
	            <td  colspan="2" class="btd">
	                <!--  admin일경우 보이는 영역 -->
	                <input class="btn" type="button" value="입력">
	                <input class="btn" type="button" value="변경">
	                <input class="btn" type="button" value="삭제">
	            </td>
	        </tr>
	    </table>
	    
	     <!-- 푸터 연결  -->
   		 <jsp:include page="footer.jsp"></jsp:include>
    </div>
</body>
</html>