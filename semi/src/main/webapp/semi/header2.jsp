<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<style>
      *{
        margin:0px;
        padding: 0px;
    }

    #container{
        position: fixed;
        display: flex;
        justify-content:space-around;
        background: black;
        padding-top: 30px;
        transform: translate(-50%,-50%);
        top: 8%;
        left: 50%;
        width: 100%;
        height: 20%;
    }

    #logo{
        margin-left: 50px;
        margin-top: 50px;
    }

    #logo>img{
        width: 150px;
        height: 50px;
    }
    
    #search{
    	margin-top:50px;
    }

    #search > div > input[type=search]{
        font-size: 25px;
        height: 40px;
        width: 500px;
        border-radius: 20px;
        background-image: url('../images/e.jpg');
        background-size: 40px;
        background-repeat: no-repeat;
        background-position: right;
        font-size: 15px;
    }

    #search > div > img{
        width:10px;
        height:10px;
    }

    #nav>ul{    
        float: left;
        padding: 20px;
        
    }

    #nav>ul>a{
        text-decoration: none;
        color: white;
    }

    #nav > ul:nth-child(2){
        border-left: 1px solid white;
        border-right: 1px solid white;
    }

    #nav > ul:nth-child(3){
        border-right: 1px solid white;
    }

    #nav{
        margin-top: 90px;
        margin-right: 100px;
        width:500px;
    }


</style>
<body>
    <div id="container">
        <div id="logo">
            <img src="../images/before.PNG" alt="">
        </div>
        <div id="search">
            <div>
                <input type="search" placeholder="  상품검색">
            </div>         
        </div>
        <div id="nav">
            <ul><a href="">로그인</a></ul>
            <ul><a href="">마이페이지</a></ul>
            <ul><a href="">비교함</a></ul>
            <ul><a href="">최근 본 제품</a></ul>        
        </div>
    </div>