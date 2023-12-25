<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="style.css">
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
function calc(){
	let price=document.querySelector("#price").getAttribute("data-price");
	let count=document.querySelector("#sel").value;
	let total=price*count;
	document.querySelector("#total").innerText=total
	/*
	   이벤트 : 사용자가 태그에 행위를 했을 경우 발생
	     button =>
	          <input type=button>
	          <input type=image>
	          <input type=submit>
	          <button> ============> click
	     select =>
	          ==========> change
	     모든 태그에 적용 : onmouseover , mouseout
	                     mousedown , mouseup , focus
	     입력창 ==> keyup , keydown
	*/
}
</script>
</head>
<body>
  <div class="row">
		  <table class="table">
			  <tr>
				  <td width="35%" align="center" rowspan="9">
					  <img src="https://recipe1.ezmember.co.kr/cache/data/goods/23/12/51/1000042417/1000042417_detail_098.jpg" id="image">
				  </td>
				  <td width="65%" align="center">
					  <span id="title">
					   마이아 프로틴 메이커 두유 죽 제조기 (2color) ND-MYA002
					  </span>
				  </td>
			  </tr>
			  <tr>				  <td width="65%">
					  <span id="sub">25분이면 맛과 영양까지 그대로 담은 두유 완성! 이유식, 죽, 찜, 가열, 믹서 기능에 보온도 가능! 우리 가족 아침 챙길 만능꿀템!</span>
				  </td>
			  </tr>
			  <tr>
				  <td width="65%">
					  <span id="percent">45%</span>&nbsp;
					  <span id="price" data-price="99000">99,000원</span>
					  <p>
						  <del id="psub">179,000원</del>
					  </p>
				  </td>
			  </tr>
			  <tr>
				  <td width="65%">
					  <span id="label">첫구매할인가</span>
					  <span id="price2"> 94,050원</span>
				  </td>
			  </tr>
			  <tr>
				  <td width="65%">
					  <span id="star">★★★★★</span>&nbsp;
					  <span id="bold">4.5</span>
					  <span id="count">(299)</span>
				  </td>
			  </tr>
			  <tr>
				  <td width="65%">
					  <img src="https://recipe1.ezmember.co.kr/img/mobile/icon_delivery3.png">
					  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					  <span id="delevery">배송</span>
				  </td>
			  </tr>			  
			  <tr>				  
			     <td width="65%">
					  <select id="sel" onchange="calc()">
						  <option value="1">1개</option>
						  <option value="2">2개</option>
						  <option value="3">3개</option>
						  <option value="4">4개</option>
						  <option value="5">5개</option>
					  </select>
				  </td>
			  </tr>
			  <tr>
			    <td width=65% class="text-right">
			      주문금액&nbsp;&nbsp;
			      <span style="color:green;font-size:20px" id="total"></span>원
			    </td>			    
			  </tr>
			  <tr>
				  <td width="65%">
					  <input type="button" value="장바구니" id="cart">
					  <input type="button" value="바로구매" id="buy">
				  </td>
			  </tr>
		  </table>
	  </div>
</body>
</html>