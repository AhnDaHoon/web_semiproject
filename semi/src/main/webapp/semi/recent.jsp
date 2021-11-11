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

    .container{
	z-index: 10;
    }
     
    .title {
        margin-top: 25px;
        padding: 20px 0;
        text-align: center;
    }
    
    #title {
        font-weight: bold;
        font-size: 30px;
        border: 1px solid black;
        border-radius: 20px;
        display: inline-block;
        width: 200px
    }
    
    div.recent>div>img{
        width:200px;
        height:200px;
    }

    .products{
        width:1400px;
        height:600px;
        margin: 0 auto;
    }

    .recent{
        width:200px;
        float:left;
        padding:20px;
        margin:15px;
        border: 1px solid red;
    }
   
    
    
    </style>
<body>
<div class="whole">
        <jsp:include page="header.jsp"></jsp:include>
    
        <div class="container">
            <div class="title">
                <span id="title"> 최근 본 제품 </span>
            </div>
            <br />
            <br />
            <br />
            
        <div class="products">

            <div class="recent">            
                 <div><img src="../images/refri13.jpg" alt=""></div>
            </div>
            <div class="recent">            
                <div><img src="../images/refri13.jpg" alt=""></div>
            </div>
            <div class="recent">            
                <div><img src="../images/refri13.jpg" alt=""></div>
            </div>
            <div class="recent">            
                <div><img src="../images/refri13.jpg" alt=""></div>
            </div>
            <div class="recent">            
                <div><img src="../images/refri13.jpg" alt=""></div>
            </div>
            <div class="recent">            
                <div><img src="../images/refri13.jpg" alt=""></div>
            </div>
            <div class="recent">            
                <div><img src="../images/refri13.jpg" alt=""></div>
            </div>
            <div class="recent">            
                <div><img src="../images/refri13.jpg" alt=""></div>
            </div>
            <div class="recent">            
                <div><img src="../images/refri13.jpg" alt=""></div>
            </div>
            <div class="recent">            
                <div><img src="../images/refri13.jpg" alt=""></div>
            </div>
        </div>
                   
      </div>
     
      <jsp:include page="footer.jsp"></jsp:include>
      
 </div>
</body>
</html>