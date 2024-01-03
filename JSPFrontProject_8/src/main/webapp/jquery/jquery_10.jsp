<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<style type="text/css">
.container{
	margin-top:50px;
}
.row {
  margin: 0px auto;
  width:450px;
}
h1{
	text-align: center;
}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	for(let i=1;i<=7;i++)
	{
		$('body').append('<img src=image/'+i+'.jpg width=120 height=160 style="margin-left:5px">')   // 여러개 출력=> append   한개출력=>html
		
	}
	$('img').hover(function(){
		//$(this).css('opacity',.3)
		$(this).css({"opacity":".3","border":"1px solid black"})
	},function(){
		//$(this).css('opacity',1)
		$(this).css({"opacity":"1","border":"0px"})
	})
})
</script>
</head>
<body>

</body>
</html>