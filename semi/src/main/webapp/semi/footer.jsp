<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
$(document).ready(function(){ 
    $("#showmore").click(function(){ 
        if($(".dropdown-content").is(":visible")){ 
            $(".dropdown-content").css("display", "none"); 
         }else{ $(".dropdown-content").css("display", "block"); 
                $(".dropdown-content").css("cursor", "pointer")
         $(this).text() === '사업자 정보▼' ? $(this).text('사업자 정보▲') : $(this).text('사업자 정보▼');
     } 
 }); 
});
</script>
<style>
	*{
		font-size: 25px;
		font-family: "야놀자 야체";
		margin: 0px;
		padding: 0px;
	}

	html {
 		position: relative;
  		min-height: 100%;
  		margin: 0;
	}
	
	body {
		margin:0;
		min-height: 100%;
		overflow-y:scroll; 
	}
	
	.footer {
		position: absolute;
    	bottom: 0;
		padding: 15px;
		text-align: center;
		height: 120px;
		width: 1770px;
		min-width: 1770px;
		border-top: 2px solid rgba(128,128,128,0.5);
	}
	
	.aclass{
		text-decoration: none;
		font-size: 20px;
		color: grey;
	}


	span {
		font-size: 18px;
	}
	
	th {
		width: 500px;
	}
	
	.footer>table{
		margin: 0 auto;
	}
	
	.before{	/* 앱솔로 하단에 줘야하는지 컨텐츠 다음에 와야하는지 확인 필요 */
		height: 300px;
	}


    /* 사업자 정보 펼치기 접기 */
    .dropdown-content {
        display: none;  
        background-color: #A6C6FA;
        height: 150px;
		min-width: 800px;
        box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    }

    #content{
        margin: 0 auto;
        padding: 5px;
        width: 500px;

    }

    .dropdown-content a:hover {
        background-color: #ddd;
    }

    .dropdown:hover .dropdown-content {
        display: block;
    }

    #showmore:hover{
        cursor: pointer;
    }
    
</style>
	<div class="before"></div>

	<div class="footer">
		<table>
			<tr>
				<th>
				<a href="privacyPolicy.jsp" class="aclass">개인정보 처리방침</a>
				</th>
				<th>
				<p class="aclass" id="showmore">사업자 정보▼</p>
				</th>
				<th>
				<a href="" class="aclass">문의하기</a>
				</th>
			</tr>
		</table>
        <div class="dropdown-content">
            <div id="content">
                <table>
                    <tr>
                        <th>대표자</th>
                        <td>(주)통하다</td>
                    </tr>  
                    <tr>
                        <th>주소</th>
                        <td>서울특별시 종로구 율곡로10길 105 디아망 401호</td>
                    </tr>
                    <tr>
                        <th>사업자등록번호</th>
                        <td>111-11-1111</td>
                    </tr>
                    <tr>
                        <th>전자우편</th>
                        <td>tonghada@tonghada.com</td>
                    </tr>
                </table>
            </div>
          </div>
		<br />
		<br />
		<br />
		<span> 2021 All deserved copyright &copy </span>
	</div>

