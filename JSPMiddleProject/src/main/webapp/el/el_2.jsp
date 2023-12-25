<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.dao.*"%>
<%--
	  책 p.581
	  기본객체 (내장 객체)
	    => ***requestScope / ***sessionScope / applicationScope
	    => param / pageContext
	  EL은 자바변수를 출력하는 것이 아니다
      == requset,session에 저장된 데이터 출력
 --%>
<jsp:useBean id="model" class="com.sist.dao.StudentModel"/>
 <%--
 	//String name="임현서";
 	//request.setAttribute("name", "김철");
 	//session.setAttribute("name1", "모진섭");
 	
 	// param => getParameter("name")
 	// param=key => param.name
 	// applictionScope => realpath
 	/*
 		s{}  => 출력물 (request,session에 담겨 출력을 요청시에만 사용)
 	*/
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
학번:${vo.hakbun }<br>
이름:${vo.getName() }<br>
국어:${vo.getKor() }   <br>
영어: %{vo.eng}<br>
수학:${vo.math }
  	<%--이름은 ${requestScope.name }입니다. <br>
	이름은 ${sessionScope.name1 }입니다. <br>
	
	이름은 ${name1 }입니다
	   ===== 키 이름 적기
	<br>
	이름은 <%=request.getAttribute("name")%> 입니다
	 %로 출력하려면 set은 get으로 --%>
</body>
</html>