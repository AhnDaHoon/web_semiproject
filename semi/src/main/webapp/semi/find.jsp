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
		$("#findid").on("click", function(){
			var name = $("#name").val();
			var phone = $("#phone").val();
			
			console.log(name);
			console.log(phone);
			$("#formid").attr("action", "findId.jsp");
			$("#findid").attr("type","submit");
		});
		
		$("#findpw").on("click", function(){
			var id = $("#id").val();
			var email = $("#email").val();
			
			console.log(id);
			console.log(email);
			$("#formpw").attr("action", "findPw.jsp");
			$("#findpw").attr("type","submit");
		});
	})	
</script>


<style>
	.whole{
		width: 1800px;
		min-width: 1800px;
		margin: 0 auto;
	}

    #container {
    	position:relative;
        top: 100px;
    }

    #boxId {
        width: 500px;
        height: 100px;
        padding: 20px 20px;
        border: 3px solid black;
        text-align: center;
        margin: 0 auto;
        margin-bottom: 20px;
    }

    #boxPw {
        width: 500px;
        height: 100px;
        padding: 20px 20px;
        border: 3px solid black;
        text-align: center;
        margin: 0 auto;
    }

    #name, #phone, #findid, #id, #email, #findpw {
        margin: 5px 5px;
    }

    .button {
        text-align: right;
    }

    .txt {
        width: 200px;
    }
</style>
</head>
<body>
<div class="whole">
	<jsp:include page="header.jsp"></jsp:include>

	<div id="container">
		<div id="boxId">
			<form action="" id="formid">
				<input type="text" name="uname" id="name" placeholder="이름"/><br>
				<input type="text" name="HP" id="phone" placeholder="전화번호 (- 포함)"/><p>-</p><br>
				<input type="button" value="아이디 찾기" id="findid"/>
			</form>
		</div>
		
		<div id="boxPw">
			<form action="" id="formpw">
				<input type="text" name="id" id="id" placeholder="아이디"/><br>
				<input type="text" name="email" id="email" placeholder="이메일"/><br>
				<input type="button" value="아이디 찾기" id="findpw"/>
			</form>
		</div>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>