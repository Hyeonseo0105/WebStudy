<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
function plsLogin() {
	alert('로그인이 필요한 서비스입니다')
	location.href='../user/login.do'
}
$(function(){	
	let bCheck=false;
	$('#deleteBtn').click(function(){
		if(bCheck===false)
		{
			bCheck=true;
			$('.del').show('slow')
			$('#deleteBtn').text("취소")
		}
		else
		{
			bCheck=false;
			$('.del').hide('slow')
			$('#deleteBtn').text("탈퇴하기")
		}
	});
	
	$('#delBtn').on('click',function(){
		let userID=$('#delBtn').attr("data-id");
		let pwd=$('#delete_pwd').val()
		if(pwd.trim()==="")
		{
			$('#delete_pwd').focus();
			return;
		}
		$.ajax({
			type:'post',
			url:'../user/delete_ok.do',
			data:{"userID":userID,"pwd":pwd},
			success:function(result)
			{
				if(result==="yes")
				{
					location.href="../main/main.do"
				}
				else
				{
					alert("비밀번호가 틀립니다!!")
					$('#delete_pwd').val("")
					$('#delete_pwd').focus();
				}
			}
		})
	})
});
</script>
</head>
<body>
			<header id="header">
				<div class="inner">
					<a href="../main/main.do" class="logo">
						<img src="../images/lib_logo2.png" alt="로고 이미지">
					</a>
					<!-- searchBar include -->
					<jsp:include page="../etc/searchBar/searchBar.jsp"></jsp:include>
					<nav id="nav">
					<c:if test="${sessionScope.email==null }">
						<a href="../user/login.do">로그인</a>
						<a href="../user/userjoin.do">회원가입</a>	
					</c:if>	
						
					<c:if test="${sessionScope.email!=null }">
					  <a href="../user/logout.do">로그아웃</a>
					  <input type="button" id="deleteBtn" value="탈퇴하기"></a>
  					  <div class="del" style="display:none">
   						<input type="password" value="비밀번호" id="delete_pwd">
    					<input type="button" value="탈퇴" id="delBtn" data-id="${sessionScope.email }" class="btn btn-xs btn-danger">
  					  </div>
					</c:if>
					<c:if test="${sessionScope.admin eq 'n' || sessionScope.admin eq null }">
						<a ${sessionScope.email==null?"onclick=plsLogin()":"href=../mypage/mypage_main.do" } style="cursor: pointer;">마이페이지</a>					
					</c:if>
					<c:if test="${sessionScope.admin eq 'y' }">
						<a href="#">관리자페이지</a>
					</c:if>
					</nav>
					<a href="#navPanel" class="navPanelToggle"><span class="fa fa-bars"></span></a>
				</div>
			</header>
			<!-- menuBar include -->
			<jsp:include page="../etc/menuBar/menuBar.jsp"></jsp:include>
			<!-- Banner -->
			<section id="banner" ${main_jsp!="../main/home.jsp"?"style=padding:1em 0 1em 0;":""}>
			<h1>서 울 도 서 관</h1>
				<p ${main_jsp!="../main/home.jsp"?"style=margin:0;":""}>서울도서관에 오신 것을 환영합니다.</p>
			</section>
</body>
</html>