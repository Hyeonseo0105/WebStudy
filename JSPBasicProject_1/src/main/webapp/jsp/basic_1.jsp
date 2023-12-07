<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
	JSP
	1. HTML + Java => 구분
	2. 동작 방식
	3. 지시자
	     = page
	     = taglib
	     = include
	4. 자바 코딩
	     = 스크립트릿 <% %> : 일반 자바 (메소드 호출 , 제어문 , 지역변수)
	     = 선언문 <&! %> : 선언문
	5.
	6. JSP 액션 태그 / 빈즈
	   <JSP:~~>
	7. 표현식 => EL ${} **************
	8. JSTL
	     => 자바 문법을 태그형으로 생성 **************
	     => <c:forEach> <c:if> <c:choose>
	     => <fmt:formetDate> <fmt:formatNumber>
	9. MVC
	   ==========================
	   Model : Java
	   View : JSP
	   Controller : 서블릿 (스프링:서블릿)
	   ===========================
	     model 1 => 가벼운 홈페이지 => JSP
	     model 2 => 사이트 개발 => MVC
	      1) 입사 => 파견 (인터뷰)
	      => 기본 => 동작
	      
	     1) 웹 동작 : request(요청) , response(응답)
	                =============  ==============
	                Client(Front)   Server(Back) 
	          URL
	             http://localhost/JSPBasicProject_1/jsp/basic_1.jsp
	             ================ =================================
	                   서버정보         요청 => URI
	                              =========================
	                                         | ContextPath
	             => 파일 요청 : 경우에 따라서는 파일 확장자를 변경
	                            => .회사명 => .naver , . do
	             => PathVariable / aaa/aaa => React
	                 
	                 request(파일요청)
	          client ======= Web Server ===== Web Container(WAS)
	          ======         아파치 / IIS      ==================
	          브라우저              |                 | Tomcat
	                          요청 받는다                  | JSP/Servlet 엔진
	                          파일 찾기  ==>  Servlet/JSP        |
	                          => HTML/XML/JSON              HTML로 변환
	                               (자동 처리)                   |
	                             <============
	                               HTML을 브라우저로 전송
	                                 => 번역된 내용 : 소스보기
	          책 p.19 요청 / 응답 => 네트워크(C/S)
	                  정적페이지 : HTML/CSS => 데이터 갱신이 불가능
	                  동적페이지 : JSP/JavaScript => 데이터 갱신
	              ****웹에서는 파일(페이지)
	              ****요청은 브라우저에서 사용되는 위치
	                  =========================
	                      | 주소란 : <a> <form>
	                          => location.href
	                          => ajax({url:...}) => jquery
	                          => axios.get(url) => vue,react
	                          ===== 서버와 연결 =====
	            1. 서블릿
	                         request
	                 client ========== 객체생성
	                                   HttpServletRequest
	                                       (request)
	                                   HttpServletResponse
	                                       (response)
	                                           |
	                                          -------------- 서블릿 찾기
	                                                             |
	                                                        서블릿 객체 생성
	                                                        (new ~Servlet())
	                                                             |
	                                                           init() => 동작에 필요한 데이터 읽기
	                                                                       => web.xml
	                                                             |
	                                                         doGet()/doPost()
	                                                           GET    POST
	                                                           ---    ----
	                                                            |       | 처리(회원가입,로그인) => 보안
	                                                            |
	                                                        화면요청/단순한 데이터 전송
	                                                                 => page,no,검색어
	                                                        ==============================
	                                                             |

	                 1) 서블릿
	                      웹 서비스 기능을 해주는 자바 클래스
	                        => 자바안에 HTML코드를 첨부
	                           out.write("<html>")..
	                        => 단점
	                             = HTML을 사용하기 어렵다 (복잡) => CSS/JavaScript
	                             = 에러 잡기가 어렵다
	                             = 자바 = 약간을 수정 = 컴파일을 다시 한다
	                                 => 버튼의 색상 변경(문자변경) => 컴파일
	                                 ***개발자는 바로 실행 결과를 볼 수 있는것을 선호
	                           장점
	                             = 자바 => 소스를 볼 수 없다 (.class) 보안이 뛰어나다
	                             = HTML을 출력하지 않는 웹 개발
	                                 => Controller (자바/HTML을 분리) => 연결
	                                    ========== 스프링은 이미 제작(서블릿)
	                                      = 라이브러리 : 구조
	                                        예) 4버전 => XML , 5버전 => 순수하게 자바
	                                              => 금융권(5) , 공기업(4)
	                                              => 차세대 개발 : Spring-Boot
	                        => 단점을 보완
	                             => 복잡한 HTML/CSS/JavaScript 구현
	                             => HTML안에 자바를 첨부
	                                  => 구분 <% %> , <%= %>
	                             => 실행을 하면 자동으로 톰캣이 컴파일을 자동 수행
	                                  => 저장하고 브라우저를 새로 고침
	                                  => 보안 취약하다 (소스를 전체 전송)
	JSP의 장점
	  1) 서블릿보다 쉽게 소스작성이 가능하다 (빠르다)
	  2) HTML / Java가 나눠져 있다
	  3) 디자인과 소스 코딩을 나눠서 작업할 수 있다
	  4) 단순하다 => 데이터베이스 연동 => for / if
	  5) = 자바가 먼저 수행 (데이터를 읽어 온다) => HTML을 이용해서 출력
	  6) HTML => out.write("<html>")
	             ========= 생략
	             <html>태그가 단독으로 수행
	  => 서블릿은 클래스로 되어 있다
	     JSP는 클래스가 아니라 메소드 영역이다
	     =============================
	     
	     a.jsp => a_jsp.java => a_jsp.class => 실행
	                  | 서블릿
	     순서
	       a.jsp
	        <%@ page contextType="text/html;charset=UTF-8"%>  
	        <!DOCTYPE html>
	        <html>
	         <head>
	         </head>
	         <body>
	         </body>
	        </html>
	       => 실행시에 톰캣에 의해 생성
	       => a_jsp.java
	       public class a_jsp extends HttpServlet
	       {
	            =========================
	              멤버변수
	              메소드
	            =========================
	            public void _jspInit()
	            {
	                 생성자 역할
	                 멤버변수의 초기화
	            }
	            public void _jspDestroy()
	            {
	                 // 새로고침 , 화면이동=> 자동으로 메모리 해제
	            }
	            public void _jspService(
	               HttpServlet request,
	               HttpServletResponse response)
	            {
	                 response.setContextType("text/hrml;charset=UTF-8)
	                 //PrintWrite out
	                 JspWriter out;
	                 HttpSession session
	                 Object page=this;
	                 PageContext pageContext=Servlet
	                 
	                  ============================
	                 out.write("<!DOCTYPE html">)
	                  out.write("<html>)"
	                   out.write("<head>)"
	                   out.write("</head>)"
	                   out.write("<body>)"
	                  out.write("</body>)"
	                 out.write("</html>)"
	                 =============================
	            }
	       }
	       
	       <% %> 없이 자바 코딩을 하면 => 일반 텍스트로 인식

	                                                                 
--%>
<%--
      public void _jspService(request,response)
      {
         final javax.servlet.jsp.PageContext;
         javax.servlet.http.HttpSession session = null;
         final javax.servlet.Servlection
      }
      
      out.write("\r\n\");
      out.write("</body>\r\n>");
      out.write("</html>");
          ====================================
      }
      
      책 p.69 동작과정
        1. 웹브라우저에서 URL을 요청
        2. 웹서버가 요청을 받는다
        3. .html , .css , .json => 웹서버에 자체에서 처리후 브라우저로 전송
             => jsp,servlet ... 번역이 불가능
                -----------
                     |
                번역을 요청 => 톰캣(resin , 제우스 , 웹로직 , 웹스페어...)
                             ====================== WAS
                             Web Application Server
                     |
                  1) 자바로 변경 => (jsp파일명)_jsp.java
                  2) 자바를 컴파일 => 서블릿
                  3) 자바 실행
                     =======
                       | 브라우저에 읽어갈 메모리에 html을 출력해 준다
                         ======================= 출력 스트림
                  4) 출력딘 메모리로부터 html을 한줄씩 읽어서 브라우저 출력
                                     ================ 인터프리터
                                     
      책 p.71 => jsp의 생명주기
        => 자동 호출
             _jspInit() => 초기화 (web.xml등록시에 읽어 간다)
                 |
             _jspService() => JSP에서 코딩이 되는 영역
                 |            화면 / 결과값을 출력
             _jspDestory() => 새로그림 / 화면이동 자동으로 메모리 해제
             
             _jspService()
             {
                  =============
             
                  ============= JSP파일
             }
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	String name="임현서";
	out.wirte(name);
</body>
</html>