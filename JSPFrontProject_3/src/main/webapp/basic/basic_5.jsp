<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
window.onload=function(){
	let i=(6>7) && (6!==7)
	document.write("i="+i+"<br>")
	i=(6>7) || (6!==7)
	document.write("i="+i+"<br>")
	
	let k=10;
	k+=10;
	document.write("k="+k+"<br>")
	
	k=10;
	k-=10;
	document.write("k="+k+"<br>")
}
</script>
</head>
<body>

</body>
</html>