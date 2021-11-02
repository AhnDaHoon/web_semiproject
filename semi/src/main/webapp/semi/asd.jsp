<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
<title></title>
</head>
<style>
	#sform{
		position: absolute;
		top: 10%;
		left: 40%;
	}
	
	input{
		margin: 10px;
	}
	
	.txt{
		
		width: 300px;
	}
	
	.check{
	}
	
	#submit{
		margin-top: 10%;
		margin-left: 40%;
	}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="../js/httpRequest.js"></script>
<script type="text/javascript">


// 	// 아이디체크 성공하면 true로변경
	var idCheckBool = false;
	var pwCheckBool = false;

	$(function(){
		
		$("#submit").on("click", function(){
			if($('#check1').is(':checked') == true && $('#check2').is(':checked') == true && $('#check3').is(':checked') == true && idCheckBool == true && pwCheckBool == true ){
				console.log("체크됨");


				location.href = "registerOk.jsp";
			}else{
				console.log("체크안됨")
			}
			
		})
	})

	// 아이디 검사
	$(function(){
		
	    $("#idcheck").on("click", function(){
	        $.ajax({
	            type:"GET", 
	            async: true, 
	            url: "registerIdCheck.jsp",
	            dataType: "html", 
	            data:{"id":$("input[name=id]").val()},
	            success:function(response, status, request){
	                console.log(response);
	                if(response.trim() != "false"){
	                	$("#idmsg").html("<p>사용가능한 아이디입니다.</p>");
	                	idCheckBool = true;
	                }else{
	                	$("#idmsg").html("<p>중복된 아이디입니다.</p>");
	                	idCheckBool = false;

	                }
	            },
	            error: function(response, status, request){
	                console.log("에러");
	            },
	            complete: function(){
	            	console.log("Ajax통신 끝");
	            },
	            beforeSend: function(){
	            }
	        });
	    });
	})


	// 비밀번호 검사
	$(function(){
		
	    $("input[name=repw]").on("keyup", function(){
	

	        $.ajax({
	            type:"GET", 
	            async: true, 
	            url: "registerPwCheck.jsp",
	            dataType: "html", 
	            data:{"pw":$("input[name=pw]").val(), "repw":$("input[name=repw]").val()}, 
	            success:function(response, status, request){
// 	                console.log(response);
	                if(response.trim() != "false"){
	                	$("#pwmsg").html("<p>비밀번호가 일치합니다.</p>");
	                	pwCheckBool = true;
	                }else{
	                	$("#pwmsg").html("<p>비밀번호가 맞지 않습니다.</p]>");
	                	pwCheckBool = false;
	                }
	            },
	            error: function(response, status, request){
	                console.log("에러");
	            },
	            complete: function(){
	            	console.log("Ajax통신 끝");
	            },
	            beforeSend: function(){
	            }
	        });
	    });
	})
	
	// 이메일 유효성 검사


	$("input[name=repw]").on("keyup", function(){
	    var u_email = $("input[name=email]");
	
	    $('.btn_pass').click(function(){
	        // 정규식 - 이메일 유효성 검사
	        var regEmail = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
	
	        if( !u_email.val() ){
	            alert('이메일주소를 입력 해 주세요');
	            u_email.focus();
	            return false;
	        } else {
	            if(!regEmail.test(u_email.val())) {
	                alert('이메일 주소가 유효하지 않습니다');
	                u_email.focus();
	                return false;
	            }
	        }
	    });
	
	})	

	    
</script>


<body>
	<div id="sform">
	    <form action="registerOk.jsp" method="GET">
	    	<table>	
		        <tr>
		        	<td><input type="text" name="id" placeholder="ID"  class="txt"></td>
		        	<td> <input type="button" value="아이디 중복확인" id="idcheck"/> </td>
				</tr>
				
				<tr>
					<td><p id="idmsg"></p> </td>
				</tr>
				
				<tr>
					
		        	<td><input type="password" name="pw" placeholder="PW" class="txt"><td>
				</tr>
				
				<tr>
		        	<td><input type="password" name="repw" placeholder="PW 확인" class="txt"><td>
		        	
				</tr>
				
				<tr>
					<td id="pwmsg"> </td>
				</tr>
				
	    		<tr>
		        	<td><input type="text" name="name" placeholder="이름" class="txt"></td>
				</tr>
				
				<tr>
			        <td><input type="number" name="ssn" placeholder="주민등록번호" class="txt"></td>
	<!-- 		        <td>- <input type="number" name="residentno2" placeholder="주민등록번호"></td> -->
		        </tr>
		        
				<tr>
		        	<td><input type="number" name="phone" placeholder="전화번호" class="txt"></td>
	<!-- 	        	<td>- <input type="number" name="phonenumber2"></td> -->
	<!-- 	        	<td>- <input type="number" name="phonenumber3"></td> -->
				</tr>
				
	
				<tr>
			        <td><input type="text" name="email" placeholder="이메일" class="txt"></td>
			        <td>@<input type="text" name="email_domain" id="" /> </td>
				</tr>
	
				<tr>
					<td><input type="checkbox" name="" class="check" id="check1"/>14세 이상 </td>
				</tr>
				
				<tr>
					<td><input type="checkbox" name="" class="check" id="check2"/>이용약관 </td>
				</tr>
				
				<tr>
					<td><input type="checkbox" name="" class="check" id="check3"/>개인정보 취급방침 </td>
				</tr>
			
	
				<tr>
		        	<td><input type="button" value="회원가입 완료" id="submit"></td>
		        </tr>
			</table>
	    </form>
    </div>
</body>
</html>