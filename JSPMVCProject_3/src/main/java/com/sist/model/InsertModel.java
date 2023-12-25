package com.sist.model;

import javax.servlet.http.HttpServletRequest;

public class InsertModel implements model {

	@Override
	public String handleRequest(HttpServletRequest request) {
		// 화면 이동

		return "board/insert.jsp";
	}
}
