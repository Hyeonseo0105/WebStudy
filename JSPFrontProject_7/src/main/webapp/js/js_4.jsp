<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
	   Ajax / Vue / React ==> 서버에서 값을 읽어와서 처리
	   ====> 자바 / 자바스크립트 매칭 ==> Array , JSON
	   Array => 배열 []
	     1) 배열에 값을 추가
	          push()
	     2) 배열의 마지막 값 제거
	          pup()
	     3) 원하는 위치까지 잘라서 새로운 배열 생성
	          slice() ==> Ajax ==> 페이지 나누기
	     4) 데이터 위치 확인
	          indexOf()
	     5) 데이터 검색 
	          find()
	     6) 배열을 완전 삭제
	          delete
	     7) 저장된 갯수
	          length	     
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
window.onload=function(){
	// 배열 선언
	let names=[
		{name:'임현서'},
		{name:'황미애'},
		{name:'김철'},
		{name:'한송이'},
		{name:'모진섭'},
	]
	// 1. 배열 출력
	console.log(names)
	// 2. 인원수 출력
	console.log("인원수:"+names.length)
	// 3. 인원 추가
	names.push({name:"서지수"})
	console.log(names)
	// 4.제거
	names.pop()
	console.log(names)
	// 5. 전체 제거
	names.delete
	console.log(names.length)
}

</script>
</head>
<body>

</body>
</html>