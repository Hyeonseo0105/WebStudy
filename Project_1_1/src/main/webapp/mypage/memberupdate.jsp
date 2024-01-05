<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>CodePen - form</title>
  <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'><link rel="stylesheet" href="../etc/user/Before.css">
<script type="text/javascript">
window.onload=function(){
	let btn=document.querySelector('#postBtn')
	btn.addEventListener('click',()=>{
		window.open('post.jsp','post','width=480,height=350,scrollbars=yes')
	})
}
</script>
</head>
<body>
<!-- partial:index.partial.html -->
<a href="index.html" class="logo">
  <img src="../images/lib_logo2.png" alt="로고 이미지">
</a>
<h1 class="h">서울도서관</h1>
<div class="container">
  <form>
    <div class="row">
      <h1>회원정보 수정</h1>
      <table class="table">
      <tr>
      <td>
       <input type="text" placeholder="아이디" id="id">
       </td>
      <td>
       <input type=button value="중복체크" id="check" style="cursor:pointer;">
      </td>
     </tr>
     </table>
      <div class="input-group">
        <input type="password" placeholder="비밀번호"/>
      </div>
      <div class="input-group">
        <input type="text" placeholder="이름"/>
      </div>
      <div class="input-group">
        <input type="email" placeholder="이메일"/>
      </div>
      <table class="table">
        <tr>
      <td>
       <input type="text" placeholder="우편번호" name="post1" id="post1">
       </td>
      <td>
       <input type=button value="우편번호검색" id="postBtn" style="cursor:pointer;">
      </td>
     </tr>
     </table>
      <div class="input-group">
        <input type="text" placeholder="주소" id="addr1">
      </div>
      <div class="input-group">
        <input type="text" placeholder="상세주소"/>
      </div>
      <div class="input-group">
        <input type="password" placeholder="전화번호"/>
      </div>
    </div>
    <div class="row">
      <div class="col-half1">
        <h4>생년월일</h4>
          <div class="col-third">
            <input type="date">
          </div>

      </div>
      <div class="col-half1">
        <h4>성별</h4>
          <input id="gender-male" type="radio" name="gender" value="male"/>
          <label for="gender-male" id="male" style="cursor:pointer;">Male</label>
          <input id="gender-female" type="radio" name="gender" value="female"/>
          <label for="gender-female" id="female" style="cursor:pointer;">Female</label>
      </div>
    </div>
    <div class="row">
      <h4>비밀번호 찾기 QnA</h4>
      <div class="col-half">
          <select style="cursor:pointer;">
          <div class="input-group">
			<option>질문 선택</option>
            <option>1. 가장 좋아하는 것은?</option>
            <option>2. 가장 감명깊게 읽은 책은?</option>
            <option>3. 가장 감명깊게 본 영화는?</option>
            <option>4. 가장 좋아하는 계절은?</option>
            <option>5. 가장 좋아하는 색깔은?</option>
            <option>6. 가장 아끼는 것은?</option>
            <option>7. 가장 기억에 남는 장소는?</option>
            <option>8. 가장 좋아하는 인물은?</option>
            </div>
          </select>
      </div>
      <div class="input-group">
        <input type="text" placeholder="질문에 대한 답" id="a">
      </div>
	  <table class="table">
		  <tr>
			  <td width="350px" align="center" rowspan="2">
			  	<input type="submit" value="완료" class="btn btn-sm btn-primary" style="cursor:pointer;">
			  </td>
			  <td width="350px" align="center">
		  	  	<input type="button" value="취소" onClick="location.href='../main/main.do'" class="btn btn-sm btn-primary" style="cursor:pointer;">
		  	  </td>
		  </tr>
	  </table>
    </div>
    <div class="row">
      <h4>이용 약관</h4>

        <input id="terms" type="checkbox"/>
        <label for="terms" style="cursor:pointer;">실명 인증된 아이디로 가입, 위치기반서비스 이용약관, 이벤트・혜택 정보 수신 동의를 포함합니다.</label>

    </div>
  </form>
</div>
<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script><script  src="./script.js"></script>
</body>
</html>
