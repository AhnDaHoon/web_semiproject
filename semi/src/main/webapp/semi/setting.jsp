<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>

	.whole{
		width: 1800px;
		min-width: 1800px;
		margin: 0 auto;
	}

    #settinglist{
        text-align: center;
        
    }

    #settinglist>ul{
    	margin: 0 auto;
        padding:20px;
        font-size: 20px;
    }
   
</style>

<body>
<div class="whole">	
	<!-- 헤더 연결  -->
    <jsp:include page="header.jsp"></jsp:include>
    
    <!-- 설정 페이지 목록 -->
	  <div id="settinglist">
        <ul><a href="myInfo.jsp">회원 정보 수정</a></ul>
        <ul><a href="withdrawal.jsp">회원 탈퇴</a></ul>
    </div>
     
    <!-- 푸터 연결  -->
    <jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>