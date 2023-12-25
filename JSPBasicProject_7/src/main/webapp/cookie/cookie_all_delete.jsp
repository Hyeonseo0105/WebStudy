<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie[] cookies=request.getCookies();
	if(cookies!=null)
	{
		for(int i=0;i<cookies.length;i++)
		{
			if(cookies[i].getName().startsWith("food_"))
			{
				cookies[i].setPath("/");
				cookies[i].setMaxAge(0);          // 기간을 0으로 주면 다 삭제된다
				response.addCookie(cookies[i]);
			}
		}
	}
	response.sendRedirect("find.jsp");
%>