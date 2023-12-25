<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
	  자바스크립트 반복문
	    = do~while : 사용빈도가 거의 없다
	                 조건이  후조건을 사용한다 => 무조건 한번이상은 수행
	        형식)
	             초기값
	             do
	             {
	             	반복수행문장
	             	증가식
	             }while(조건문)
	    = while : 무한루프(게임,네트워크 통신) => 선조건 => 수행이 안될 수 있다
	        형식)
	             초기값
	             while(조건) ==> 조건이 false일때까지 수행
	             {
	             	반복수행문장
	             	증가식
	             }
	             ==> 반복회수가 지정이 안된 상태
	    = for : 반복횟수가 지정된 경우 (자바스크립트에서 반복문의 핵심)
	          => 웹 : 사용자에게 보여주는 역할
	                 ====================
	                  테이블 : 게시판 => 한눈에 볼 수 있는 갯수 (15~20)
	                  div : card => 이미지
	        형식
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
// typr="text/javascript" ES5 , ES6=> text/babel
window.onload=function(){
	// do~while
	document.write("<h3>do~while</h3>")
	let i=1;
	do{
		document.write("i="+i+"<br>");  //2
		i++;   //3
	}while(i<=10)    // 4 ==> 2번 이동 4(false면 종료)
	document.write("<hr>")
	//while
	document.write("<h3>while</h3>")
	i=1;   // 초기값     == 1
	while(i<=10)
	{
		document.write("i="+i+"<br>")   // 3
		i++;    // 4 ==> 조건으로 이동 2번 false면 종료
	}
	document.write("<hr>")
	document.write("<h3>for</h3>")
	//   1   2   4
	for(i=1;i<=10;i++)
	{
		document.write("i="+i+"<br>")
	}
	document.write("<hr>")
	
	document.write("<h3>break</h3>")
	for(i=1;i<=10;i++)
	{
		if(i==5)
			break;
		document.write("i="+i+"<br>")
	}
	document.write("<hr>")
	
	document.write("<h3>continue</h3>")
	for(i=1;i<=10;i++)
	{
		if(i==5)
			continue;
		document.write("i="+i+"<br>")
	}
	document.write("<hr>")
}
</script>
</head>
<body>

</body>
</html>