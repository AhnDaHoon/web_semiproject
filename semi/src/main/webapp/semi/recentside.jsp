<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.sidenav {
  width: 180px; 
  position: fixed;
  top: 20%; 
  right: -145px;
  transition: 0.3s;
  background: #eee;
  padding: 2px 0;
}

div.sidenav > div:nth-child(2){
    padding-left: 50px;
}

div.sidenav > div:nth-child(4){
    padding-left: 50px;
}

div.sidenav > div:nth-child(2) > img{
    width: 100px;
    height: 150px;
    align-items: center;
}

div.sidenav > div:nth-child(4) > img{
    width: 100px;
    height: 150px;
    align-items: center;
}

.sidenav div {
  padding: 6px 8px 6px 16px;
  font-size: 20px;
  color: #2196F3;
  display: block;
}

#title{
    background: black;
    color: white;
    text-align: center;
}

#p1, #p2{
    background: #2196F3;
    color: white;
    text-align: center;
}


.sidenav:hover {
  color: #064579;
  cursor: pointer;
  right: 0px;
}


#next{
    margin-left: 40px;
}

.nbtn{
    width: 40px;
    height: 30px;
    padding: 10px;
}


</style>
<body>
    <div class="sidenav">
        <div id="title">
            ◁ 최근 본 제품
        </div>
        <div>
            <img src="../images/puppy.jpg" alt="">
        </div>
        <div id="p1"> 
            제품1
        </div>
        <div>
            <img src="../images/puppy.jpg" alt="">
        </div>
        <div id="p2"> 
            제품2
        </div>
        <div id="next">
            <input type="button" value="▲" class="nbtn">
            <input type="button" value="▼" class="nbtn">
        </div>
      </div>
</body>
</html>