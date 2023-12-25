<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
let sawons=[
	{sabun:1,name:"임현서",dept:"개발부",job:"부장",pay:5000},
	{sabun:2,name:"황미애",dept:"자재부",job:"대리",pay:3500},
	{sabun:3,name:"김철",dept:"기획부",job:"대리",pay:3200},
	{sabun:4,name:"한송이",dept:"총무부",job:"과장",pay:4500},
	{sabun:5,name:"모진섭",dept:"영업부",job:"사원",pay:3000}
]
// 전역변수
// main
window.onload=function(){
	sawonList()
	sawonDetail(3)
	sawonInsert()
	sawonDelete()
	sawonSlice()
}
const sawonList=function(){
	console.log(sawons)
}
const sawonDetail=(sabun)=>{
	let sawon=sawons.find(sa=>sa.sabun==sabun)
	console.log(sawon)
}
function sawonInsert(){
	sawons.push({sabun:5,name:"서지수",dept:"개발부",job:"대리",pay:3500})
	// *****
}
const sawonDelete=()=>{
	sawons.pop()
	// *****
	console.log(sawons)
}
const sawonSlice=()=>{
	let sa=sawons.slice(1,3)     // end-1
	// *****
	console.log(sa)
	/*
	    let arr=[1,2,3,4,5,6,7]
	let a=arr.slice(0,5) ==> 1 2 3 4 5
	a=[1,2,3,4,5]
	*/
}
</script>
</head>
<body>

</body>
</html>