package com.sist.view;

import java.io.*;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
import com.sist.dao.*;

@WebServlet("/BookListServlet")
public class BookListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		//                       text/xml , text/plain
		// HTML 전송
		PrintWriter out=response.getWriter();
		//              --------------------- 접속한 클라이언트 브라우저
		BookDAO dao=BookDAO.newInstance();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy");
		List<BookVO> list=dao.bookListData();
		out.print("<html>");
		out.print("<body>");
		out.print("<center>");
		out.print("<h1>한국소설</h1>");
		out.print("<table border=1 width=800>");
		out.print("<tr>");
		out.print("<th width=10%>isbn</th>");
		out.print("<th width=15%></th>");
		out.print("<th width=20%>제목</th>");
		out.print("<th width=15%>작가</th>");
		out.print("<th width=40%>발간일</th>");
		out.print("</tr>");
		
		for(BookVO vo:list)
		{
			out.print("<tr>");
			out.print("<td width=10%>"+vo.getIsbn()+"</td>");
			out.print("<td width=15%><img src="+vo.getImage()+" width=30 height=30></td>");
			out.print("<td width=20%>"+vo.getBooktitle()+"</td>");
			out.print("<td width=15%>"+vo.getBookperson()+"</td>");
			out.print("<td width=40%>"+formatter.format(vo.getBookdate())+"</td>");
			out.print("</tr>");
		}
		
		out.print("</table>");
		out.print("</center>");
		out.print("</body>");
		out.print("</html>");
	}

}
