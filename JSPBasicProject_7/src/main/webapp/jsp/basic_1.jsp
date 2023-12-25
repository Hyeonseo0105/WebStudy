<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 책 p.302 쿠키 --%>
<%--
	  JSP : (MVC,Spring,Spring-Boot) => 화면 출력
	    1. 지시자
	         page => contentType,errorPage,import,buffer
	         taglib => MVC(EL/JSTL)
	    2. 자바 / HTML
	       ===사용법 <% %> , <%= %>
	    3. 내장객체 => 미리 생성후 사용이 가능하게 만든다
	       ======
	         request : 사용자의 요청정보
	           => 
	         response : 응답 (브라우저로 전송 => HTML/Cookie)
	         pageContext : JSP연결 => request를 유지
	                       include() / foward()
	                         => <jsp:include> <jsp:forward>
	           => PageContext => 
	         out : 메모리 HTML을 출력 => 출력버퍼 (관리)
	               print() => <%= %> => ${}
	         application : 서버 정보 (서버 관리)
	           => getREalPath() => 실제 톰캣이 읽어가는 위치
	           => Controller / ServletContext
	         config => web,xml , exception : try~catch
	         page => this
	     ****session : 서버에 필요한 정보 저장
	           => 사용자 정보 (로그인) / 장바구니 => 임시기억장소
	           => 전역변수(공유변수) => 모든 JSP에서 사용이 가능
	        ***=> request=>매개변수 => 모든 JSP마다 한개씩 가지고 있다
	                => 화면 변경 / 새로고침 => 자동으로 초기화
	                => session / cookie => 생성
	                => ================ 임시저장
	               getSession() , getCookie()
	 ===================================================================
	    동작
	      => 1. JSP소스 생성 => 실행
	         2. JSP를 자발 변경
	            jsp파일명_jsp => .jsp
	            a.jsp => a
	            
	         4. jsp
	             1) => _jspServeice() => 사용자 요청시마다 호출되는 메소드
	                   {
	                       =============
	                        여기서 첨부되는 소스코딩
	                       ==============
	                   }
	             2) => JSP에서 모든 HTML앞에는 out.write가 생략
	         5. servlet / jsp
	              |        | 컴파일없이 새로고침
	        수정시마다 컴파일
	    주요 메소드
	      request
	        = String getParameter() : 단일값을 받는 경우
	            <input type=text,radio,password,file..>
	            <textarea>,<select>
	            => <form => submit> => 입력된 값만 전송
	        = String[] getParameterValues() => 다중(checkbox)
	         ***웹은 모든 데이터 String
	            => 변환 => Wrapper
	        = 사용자 요청 =======> 서버(웹서버=>톰캣(WAS))
	                 한글(encoding)
	            임현서 : %EC%9E%84%ED%98%84%EC%84%9C ====> 임현서 => request.setCharacterEncoding("UTF-8")
	                    %EC%9E%84%ED%98%84%EC%84%9C
	            자바 : 한글(2byte) ==> 서버(1byte)
	                       => byte로 변환   =======>   (2byte)
    http://localhost/JSPBasicProject_7/jsp/a.jsp?name=%EC%9E%84%ED%98%84%EC%84%9C
    
	        = setAttribute , getAttribute : 추가된 내용 받기
	          ============        |
	                          %{name} => request.getAttribute("name")
                데이터를 추가해서 다른 JSP로 전송 
                =========================== MVC
            = getRequestURI,hetRequestURL,getContextPath
            = getRemoteAddr()
	      response
	        = addCookie() => @Cookies()
	        = sendRedirect() => return "redirect:" 
	        = setHeader()
	      out
	        = clear()
	        = print()/write()
	        
	      pageContext
	        = include()
	        = forward()
	        
	      application
	        = getRealPath()
	        = getInitParameter()
	        
	      exception
	        = getMessage()
	      
	    데이터베이스
	      JDBC : 연결 / 해제 => 시간이 많이 걸린다
	      DBCP : 연결을 미리 설정하고 반환 => 재사용
	                |
	      ORM  : 라이브러리 제작 (MyBatis/JPA)
	      => 1차
	      
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="a.jsp?name=임현서">전송</a>
</body>
</html>