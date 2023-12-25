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
  width:100%;
}
</style>
<script type="text/javascript">
window.onload=function(){
	let btn=document.hetElementById("calcBtn")
	btn.addEventListener('click',function(){
		let kor=document.getElementById("kor")
		if(kor.value.trim()==="")
		{
			kor.focus()
			return;
		}
		
		let eng=document.getElementById("eng")
		if(eng.value.trim()==="")
		{
			eng.focus()
			return;
		}
		
		let math=document.getElementById("math")
		if(math.value.trim()==="")
		{
			math.focus()
			return;
		}
		///////////////// 유효성 검사 ==> 반드시 입력
		
		let total=Nmuber(kor.value)+parseInt(eng.value)+Nmuber(math.value)
		document.querySelector('#total').value=total;
		
		let evg=total/3
		document.querySelector('#avg').value=Math
	})
}
</script>
</head>
<body>
  <div class="container">
    <div class="row">
      <h1>성적 계산</h1>
      <table class="table">
        <tr class="text-center">
          <td style="size=20%">국어</td>
          <td></td>
        </tr>
      </table>
    </div>
  </div>
</body>
</html>