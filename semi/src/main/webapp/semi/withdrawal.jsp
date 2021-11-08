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

    *{
        margin: 0px;
        padding: 0px;
    }

    #withdrawal-container{
    	margin-top:60px;
        display: flex;
        justify-content: center;
    }

    #alert-text{
        border: 1px solid gray;
        text-align: left;
        width:1000px;
        background: #fef5f6;
        padding:20px;
    }

    #text > h2{
        text-align: left;
    }

    #at1{
        font:bold;
        color:red;
    }

    .box{
        width:280px;
        height:30px;
    }

    #caution-text{
        border: 1px solid gray;
        text-align: left;
        width:1000px;
        background: #F8F8F8;
        padding:20px;
    }

    #checked{
        display: flex;
        justify-content: center;
        padding: 20px;
    }

    #agree{
        width:20px;
        height: 20px;      
    }

    #btn > input[type=button]{
        width:100px;
        height:50px;
    }

    #alert-text{
        border: 1px solid gray;
        text-align: left;
        width:1000px;
        background: #fef5f6;
        padding:20px;
    }

    #text > h2{
        text-align: left;
    }

    #at1{
        font:bold;
        color:red;
    }

    .box{
        width:280px;
        height:30px;
    }

    #caution-text{
        border: 1px solid gray;
        text-align: left;
        width:1000px;
        background: #F8F8F8;
        padding:20px;
    }

    #checked{
        display: flex;
        justify-content: center;
        padding: 20px;
    }

    #agree{
        width:20px;
        height: 20px;      
    }


    #btn > input[type=button]{
        width:100px;
        height:50px;
    }

    #inputbox, #btn{
        text-align: center;
    }
    
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	// 탈퇴버튼 클릭 확인
	$(function(){
		$("#submit").on("click",function(){
			console.log("버튼클릭확인");
		})
	})
	
	// 체크박스 클릭 확인 
	$(function(){
		if($("input:checkbox[id='agree']").is(":checked")==true){
			console.log("체크확인");
		}else{
			console.log("체크안됨");
			console.dir($("input:checkbox[id='agree']"));
		}
	})

	
</script>

<body>

<div class="whole">

	<!-- 헤더 연결  -->
    <jsp:include page="header.jsp"></jsp:include>
    
    <div id="withdrawal-container">
        <form action="">
            <!-- text input box는 로그인시 아이디를 가져와서 출력 예정 vo.getId() -->
              <div id="inputbox">
                <input type="text" placeholder="아이디" name="id" class="box"><br><br>
                <input type="password" placeholder="비밀번호" name="pwd" id="pw" class="box"><br><br>
            </div>
           
            <div id="text">
                <p><h2>회원 탈퇴</h2></p><br>
          
                <div id="alert-text">
                    <p id="at1">회원 탈퇴 시 개인정보 및 (주)통하다에서 만들어진 모든 데이터는 삭제됩니다.<br>
                        (단, 아래항목은 표기된 법률에 따라 특정 기간 동안 보관됩니다.)<br><br>
                    </p>
                    <ol>
                        <p> 1.계약 또는 청약철회 등에 관한 기록 보존 이유: 전자상거래 등에서의 소비자보호에 관한 법률/보존기간:5년</p>
                        <p> 2.대금결제 및 재화 등의 공급에 관한 기록 보존 이유: 전자상거래 등에서의 소비자보호에 관한 법률/보존기간:5년</p>
                        <p> 3.전자금융 거래에 관한 기록보존 이유: 전자금융거래법 보존 기간 /5년</p>
                        <p> 4.소비자의 불만 또는 분쟁처리에 관한 기록 보존 이유: 전자상거래 등에서의 소비자보호에 관한법률 보존 기간/3년</p>
                        <p> 5.신용정보의 수집/처리 및 이용 등에 관한 기록 보존 이유: 신용정보의 이용 및 보호에 관한 법률 보존기간/3년</p>
                        <p> 6.전자(세금)계산서 시스템 구축 운영하는 사업자가 지켜야 할 사항 고시(국세청 고시 제 2016-3호)(전자계산서 사용자에 한함):5년<br>
                            (단,(세금)계산서 내 개인식별번호는 3년 경과 후 파기)
                        </p>                   
                     </ol>
                </div>
                <br>
                <p><h2>유의사항</h2></p><br>
                <div id="caution-text">
                    <ol>
                        <p>＊회원탈퇴 처리 후 회원님의 개인정보를 복원할 수 없으며, 회원탈퇴 진행시 해당 아이디는 영구적으로 삭제되어 재가입이 불가합니다.</p>
                        <p>＊향후 회원님의 계정으로 이용하고 계신 서비스에 대하여 로그인이 불가능 해집니다.</p>
                        <p>＊탈퇴 진행 시 다시 계정을 등록하더라도, 지금까지 사용한 기능에 대한 기록을 재현할 수 업습니다.</p>
                        <p>＊회원 탈퇴 시 발생하는 불이익은 당사에서 책임지지 않습니다..</p>      
                     <ol>
                </div>
                <br>
                
                <div id="checked">                            
                    <input type="checkbox" id="agree" name="agree"><h3>위 내용을 확인하였습니다.</h3>
                </div>
                <br>
              

                <div id="btn">
                    <input type="button" value="탈퇴하기" id="submit">
                </div>
                <br>
                <br>

            </div>
        </form>
    </div>
    <br><br><br><br><br><br><br><br><br><br><br>
    <!-- 푸터 연결  -->
	<jsp:include page="footer.jsp"></jsp:include>
	
</div>
</body>
</html>