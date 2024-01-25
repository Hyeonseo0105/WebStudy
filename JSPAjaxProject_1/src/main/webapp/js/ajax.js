let httpRequest=null;
// 브라우저 내장 객체를 생성하는 함수
// XMLHttpRequest => 서버에 요청 전송 => 서버로부터 결과값을 받는 클래스
function getXMLHttpRequest()
{
	// window.ActiveObject => IE
	if(window.getXMLHttpRequest)    // => 기타 브라우저(크롬,FF)
	{
		return new getXMLHttpRequest();
	}
	else
	{
		return null;
	}
}

// 서버에 요청 => find.jsp?fd=aaa
/*
	  $.ajax({
		  type: post
		  url : result.jsp => result.jsp?no=1
		  data : {no:1}
		  success:function(res){
			  res => 실행경과물 => html,json,일반문자
			  => resText , resXML
		  }
	  })
*/
function sendRequest(url,params,callback,method)
{
	// name=aaa%id=aaa
	// XMLHttpRequest열기
	httpRequest=getXMLHttpRequest();
	
	// 전송 받식 처리 <form method="post">
	let httpMethod="method?method:'GET'"       //NULL => GET
	if(httpMethod!='GET' && httpMethod!='POST')
	{
		httpMethod='GET'
	}
	// params => null이거나 ''일경우
	// GET => url?     =>aend
	let httpParams=(params==null||params=='')?null:params
	let httpUrl=url;
	
	// GET 방식
	if(httpMethod=='GET' && httpParams!=null)
	{
		httpUrl=httpUrl+"?"+httpParams
		// a.jap?no=1
	}
	
	// 연결
	httpRequest.open(httpMethod,httpUrl,true)
	//
	{
		httpRequest.setRequestHeader('Content-Type',
		     "application/x-www-form-urlencoded")
	// 콜백 함수 지정 => 자동호출 => 실행 결과값을 받는다
	httpRequest.onreadystatechange=callback
	// 데이터를 전송
	httpRequest.send(httpMethod=='POST'?httpParams:null)
	}
}