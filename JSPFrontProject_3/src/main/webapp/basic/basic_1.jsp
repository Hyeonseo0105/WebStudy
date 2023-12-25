<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
/*
 *   => 변수
          1) 변수 선언 (데이터형이 없다) => 값에 따라서 자동으로 데이터형이 변경
               var => let, 상수 => cost
               var의 단점은 지역변수의 스코프가 명확하지 않는다
               function aaa()
               {
            	   var a=10;
               }// 메모리가 해제
               alert(a);
               
               function aaa()
               {
            	   let a=10;
               }// 메모리가 해제 (O)
               
               => 식별자
                    키워드는 사용할 수 없다 (let,if,for...)
                    특수문자 사용이 가능 ( _ , $ )
                    숫자로 시작할 수 없다
                    공백이 있으면 안된다
                    대소문을 구분한다
                    문자 길이는 상관없다 (3~10)
               => 규칙
                    생성자는 대문자 => 객체 지향 => React
                    변수 , 함수 => 소문자
                    단어가 여러개인 경우에는 시작 대문자
               => 변수는 한개의 데이터를 저장하는 메모리 공간
                       ===========
             2) 데이터형 (자바스크립트에서 지원)
                  let i=10 ===> i:int
                  let i=10.5 => i:double
                  =================== i:Number
                  *** 문자열 정수형 변환
                      Number('10') , parseInt('10')
                  
                  let i='A' ==> i:char  ==> i='ABCDE'
                  let i="A" ==> i:String
                  ===================== i:String
                  *** 숫자를 문자열 변환
                      String(10) => '10'
                      
                  let i=true ==> i:boolean
                  ======================
                	 Boolean(1) => true , Boolean(0) => false
                	 ===> C언어
                  let i={키:값,키:값....}
                	     --   --
                	      |    |
                	     --------> 멤버변수
                  let hong={name:'김철',sex:'남자',age=20}
                	     
                	     
                	     
                  let
                  
                    => Number(정수,실수),String(문자열,문자),Boolean
                       Object , Array , Function
                    
                    => 데이터형 확인이 가능 typeof
                    
                    => 자바 => main()
                       window.onload=function(){}
                       => Jquery : $(function(){})
                                     => $(document).ready(function(){})
                                          ================ 생략이 가능
                       => VueJs  : mounted()
                       => React  : componentDidMount()
 */
 // main()
 window.onload=function(){
	    /*
	    	출력 방법 => System.out.println()
	          => console.log(출력물)
	          => 브라우저 출력 : document.write()
	          => 팝업 : alert()
	          => 태그안에 출력 : innerHTML
	    */
	    
	    // 1. 변수 선언
	    
	    
	    document.write("a="+a+"<br>")
	    document.write("b="+b+"<br>")
	    document.write("c="+c+"<br>")
	    document.write("d="+d+"<br>")
	    document.write("e="+e+"<br>")
	    document.write("f="+f+"<br>")
	    document.write("g="+g+"<br>")
	    document.write("<hr>")
	    
	    let i="a="+a+"<br>"
	         +"b="+b+"<br>"
	         +"c="+c+"<br>"
	         +"d="+d+"<br>"
	         +"e="+e+"<br>"
	         +"f="+f+"<br>"
	         +"g="+g+"<br>"
	         +"<hr>"
	     let k=document.querySelector("span");
	     k.innerHTML=i;
	     
	     /*
	     	자바스크립트에서 제공하는 데이터형
	     	  1. Number : 정수,실수
	     	  2. String : 문자(''),문자열("")
	     	  3. Object : Array([]),Object({})
	     	  4. Boolean : true/false
	     	       * 0이 아닌 모든 수는 true
	     */
	      
 }
</script>
</head>
<body>
  <span>
  
  </span>
</body>
</html>