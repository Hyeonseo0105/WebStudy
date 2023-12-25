<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
	 1. 선택자(css_1) => Javascript
	 2. 글자 관련
	 3. margin / padding / border
	 4. background
	 5. position
	      => fixed
	      => relative
	      => 배치 => top/bottom/left/right
	 6. overflow
	 ====================================
	 CSS는 약간의 수정
	   => 퍼블러셔
	 HTML / CSS => 화면 UI
	 Java => 데이터 관리
	         오라클 ==> 자바 ==> HTML/JavaScript
	 오라클 => 데이터 저장 장소
	 ============= 통합 (Spring)
	 Spring-Boot <==> Front
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
*{
	margin:0px;
	padding:0px;
}
body{
	width:960px;
	margin:0px auto;
	overflow:hidden;
}
#nav{
	width:300px;
	float: left;
}
#section{
	width:660px;
	float: right;
}
li{
	list-style : none;
}
@media screen and (max-width:768px){
	body{width:auto;}
	#nav{width:auto;float:none;}
	#section{width:auto;float:none;}
}
</style>
</head>
<body>
	<div id="nav">
	  <ul>
	    <li>홈</li>
	    <li>뉴스1</li>
	    <li>뉴스2</li>
	  </ul>
	</div>
	<div id="section">
	데이터는 정보화 사회가 도래한 뒤 모든 산업의 근간이 됐다. 오픈AI의 인공지능(AI) 챗봇 챗GPT(ChatGPT) 이후 급속히 발전하는 인공지능(AI)과 인류가 가려는 우주까지 모든 산업은 데이터를 더 빨리, 더 많이 보내는 방법을 고민하고 있다. 그리고 이 많은 양의 데이터를 보낼 때 우리가 선택할 수 있는 최선은 유선 케이블이다.

유선 케이블은 구리로 만든 ‘동축 케이블’과 빛을 신호로 하는 ‘광케이블’ 대표적이다. 하지만 전도체인 구리선은 신호가 고주파로 갈수록 전기장과 자기장이 강해지고, 저항이 높아지는 이른바 ‘표피효과(Skin Effect)’로 전송 효율이 줄어든다. 광케이블은 부도체로 만들어져 케이블 내부에서 빛을 반사하며 전송하기 때문에 손실량은 적지만, 모든 구리선을 대체하기엔 가격이 비싸다.

지난 7일 대전 유성 한국과학기술원(KAIST)에서 만난 배현민 KAIST 전기 및 전자공학부 교수도 데이터 전송의 한계에 부딪힌 과학자 중 한 명이다. 그러던 중 배 교수의 눈에 들어온 게 백화점에 있는 분수였다. 뿜어져 나오는 물에 빛을 쏴 색을 입히는 색깔 분수였는데, 배 교수는 전자기파인 빛이 밀도 높은 물에서 공기 중으로 흩어지지 않는다는 ‘도파관 원리’를 떠올렸다.

배 교수는 “전자기파는 밀도가 높은 곳에서 낮은 곳으로는 신호가 빠져나가지 않는다”며 “밀도가 높다면 플라스틱도 되고 스펀지도 되고 뭐든 상관 없다”고 설명했다. 또 “기존에 쓰던 구리선은 자유전자 때문에 사용했지만, 한계가 너무 명백해 다른 방법을 찾아야 했고 그때 색깔 분수가 눈에 들어왔다”고 말했다.
	</div>
</body>
</html>