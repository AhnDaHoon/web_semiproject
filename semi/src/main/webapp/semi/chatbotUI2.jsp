<%@page import="vo.TongVO"%>
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
		// 전송버튼을 눌렀을때
	    $("#messagesend").on("click", function(){
	    	// 부모 속성
		  	var tagArea = $('#chatbottext')[0];
	    	
			 // 새로만들 자식 속성
		  	var new_Userimg = $("<img id='userchatavatar' src='../images/ball6.png' alt='' />")[0];
			var new_UserpTag  = $("<p class='userchattext'></p>")[0];
			
		  	var new_CounselorImg = $("<img id='counselorchatavatar' src='../images/ball15.png' alt='' />")[0];
			var new_CounselorpTag  = $("<p class='counselorchattext'></p>")[0];
			

			$.ajax({
	            type:"POST",
	            async: true, 
	            url: "chatbotBack.jsp", 
	            dataType: "html", 
	            data:{"mInput":$("#input").val()}, 
	            success:function(response, status, request, data){
	            	// 아이디와 내용을 map형식으로 전달했으나 받는 방법을몰라서 문자열을 짜름
	            	var outValue = response.trim();
	            	var colon = outValue.indexOf(",");
	            	
					var id = outValue.substr(2, colon-2);
					console.log(id);
					
					var content = outValue.slice(colon+4, outValue.length-1);
					console.log(content);
					
					
					if(id == "admin"){
						
		                // 메세지 추가
					  	new_CounselorpTag.innerText = content;
					  	
					  	// chatbottext div 자식요소로 추가
					 	tagArea.appendChild(new_CounselorImg);
					 	tagArea.appendChild(new_CounselorpTag);
					 					 	
	 	                // 전송하면 input 초기화
	 	                $("#input").val("");
					}else {
		                // 메세지 추가
					  	new_UserpTag.innerText = content;
					  	
					  	// chatbottext div 자식요소로 추가
					 	tagArea.appendChild(new_Userimg);
					 	tagArea.appendChild(new_UserpTag);
					 					 	
	 	                // 전송하면 input 초기화
	 	                $("#input").val("");
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
	
	
</script>
<style>
    .container{
   	    width: 341px;
    	height: 718px;
   		background: url("../images/chatBackground.png");
        display: grid;
        padding-left: 10px;
        padding-top: 18px;
        grid-template-columns: 330px;
        grid-template-rows: 625px 60px;
        grid-template-areas: 'main'
                             'footer';
    }

 

    .footer{
        background: #f7f7f7;
        border-radius: 15px;
        margin-top: 8px;

    }
    
    .divscroll{
    	overflow-x:hidden;
    	overflow-y:scroll;
    	border: none;
    	resize: none;
    	width: 297px;
    	height: 616px;\
		background: red;
/* 		border-radius: 12px; */
		border-top-left-radius: 40px;
		border-top-right-radius: 40px;
		padding: 7px 16px;
    }
    
    #input{
    	margin-top: 12px;
    	margin-left: 40px;
    	width: 200px;
    	height: 30px
    }
    
    .btn{
      text-decoration: none;
      font-size:12px;
      color:white;
      padding:10px 20px 10px 20px;
      display:inline-block;
      border-radius: 10px;
      transition:all 0.1s;
      text-shadow: 0px -2px rgba(0, 0, 0, 0.44);
    }
    .btn:active{
      transform: translateY(3px);
    }
    .btn.blue{
      background-color: #1f75d9;
      border-bottom:5px solid #165195;
    }
    .btn.blue:active{
      border-bottom:2px solid #165195;
    }
    
    .counselorchattext{
    	background: #e9e9e9;
    	width:200px;
    	margin: 10px;
    	position: relative;
    	left: 25px;
    	display: inline-block;
 	    bottom: 50px;
		border-radius: 10px;
		padding: 7px 16px;   
		font-size: 14px;
    }
    
    .userchattext{
    	background: #e9e9e9;
    	width:200px;
    	margin: 10px;
    	position: relative;
/*     	left: 25px; */
    	display: inline-block;
 	    bottom: 50px;
		border-radius: 10px;
		padding: 7px 16px;   
		font-size: 14px;
    }
    
    .message{
/* 		border-radius: 10px; */
/* 		padding: 7px 16px;    */
		
		 	
    }
    
    #counselorchatavatar{
    	right: 10px;
        width: 35px;
    	height: 35px;
    	float: left;
    	padding: 7px 16px;
    	position: relative;
    	right: 20px;
    }
    
    #userchatavatar{
    	bottom: 4px;
    	right: 10px;
        width: 35px;
    	height: 35px;
    	float: left;
    	padding: 7px 16px;
    	position: relative;
    	right: -237px;
    }
    
    .choice{
    	border: 1px solid #1e1c1e;
    	text-decoration-line: none;
    	color: #1e1c1e;
    	font-weight: 700;
    	height: 34px;
        background-color: #fff;
   		border-radius: 17px;
   		font-size: 13px;
   		padding: 5px;
  		position: relative;
  		bottom: 40px;
  		display: inline;
    }
    
    .first{
    	left: 5px;
    }

</style>
</head>
<body>
    <div class="container">
        <div class="main">
       	        <div class="divscroll">
       	        	<div id="chatbottext">
       	        	
       	        	<%
	       	        	Object obj = session.getAttribute("vo");
		       	 		TongVO vo = (TongVO)obj;
		       	 		if(vo.getId().equals("admin")){
		       	 	%>
		       	 	
		       	 	
		       	 	<% 
		       	 		}else{
		       	 	%>
       	        		<img id="counselorchatavatar" src="../images/ball15.png" alt="" />
       	        		<p class="counselorchattext">챗봇 서비스 이용을 위해 [개인정보 수집·이용 동의 안내]에 대한 동의가 필요합니다.동의하시지 않는 경우 챗봇 서비스 이용이 불가합니다.</p><br>
		       	 	
		       	 	<%	
		       	 		}
       	        	
       	        	%>


       	        	</div>
       	        </div>
        </div>
        
        <div class="footer">
        	<input type="text" name="" id="input" />
        	<input type="button" class="btn blue" value="전송" id="messagesend"/>
<!--         	<a class="btn blue" id="chatbtn" href="">전송</a> -->
        </div>
    </div>
</body>
</html>