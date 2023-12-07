<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int a=100;
	    String jsp="a.jsp";
	    jsp="b.jsp";
	%>
	<h1><%=a %></h1>
	<%-- <%@include file="<%=jsp %>" %> : 오류 동적,정적--%>
	<jsp:include page="a.jsp"></jsp:include>
	<%
	   pageContext.include("a.jsp");
	%>
	<jsp:include page="<%=jsp %>"></jsp:include>
</body>
</html>