<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.container{
	width:960px;
	height:800px;
	border:1px solid red;
	margin:0px auto;
}
.header{
	width:960px;
	height: 100px;
	background-color: black;
}
.aside{
	width:150px;
	height: 600px;
	background-color: maroon;
	float: left;
}
.section{
	width:660px;
	height: 600px;
	background-color: green;
	float: left;
}
.footer{
	width: 960px;
	height: 100px;
	background-color: gray;
	clear:both;    /* float쓰면 마지막에 clear쓰기 (float 다 해제시킴)*/
}
</style>
</head>
<body>
  <div class="container">
    <div class="header"></div>
    <div class="aside"></div>
    <div class="section"></div>
    <div class="aside"></div>
    <div class="footer"></div>
  </div>
</body>
</html>