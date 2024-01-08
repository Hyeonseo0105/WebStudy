<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%-- 신청 및 소식 => 공지사항 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#notice .curTr:hover {
		background-color: #EBF7FF;
	}
</style>
</head>
<body>
	<!-- <div class="board"> -->
	<div>
		<div>
			<c:if test="${typeno==1 }">
				<h2>공지사항</h2>
			</c:if>
			<c:if test="${typeno==2 }">
				<h2>보도자료</h2>
			</c:if>
			<hr>
		</div>
		<form method="post" action="#" id="searchForm">
		<div>
			<div style="padding: 15px;">
				<div>
					작성일&nbsp;:&nbsp;<input type="date">&nbsp;~&nbsp;<input type="date">
				</div>
				<div style="margin-top: 10px;">
					<select id="searchOp" name="searchType" class="input-lg">
						<option value="">제목</option>
						<option value="">내용</option>
					</select>
					<input type="text" size="15" style="float: left;width: 60%;margin-left: 10px;margin-right: 10px;line-height: 0;" name="search" class="input-lg">
					<input type="submit" class="btn btn-sm btn-info" value="검색">
				</div>
			</div>
		</div>
		</form>
	</div>
	<div style="width: 100%;padding: 0;">
		총 <font color="red">${totalcnt }</font>건,${curpage }/${totalpage }페이지
		<hr style="margin-top: 10px;">
	</div>
	<table class="table" id="notice">
		<tr>
			<th width="5%" class="text-center">번호</th>
			<th width="65%" class="text-center">제목</th>
			<th width="15%" class="text-center">작성일</th>
			<th width="10%" class="text-center">조회수</th>
			<th width="5%" class="text-center">첨부</th>
		</tr>
		<c:forEach var="vo" items="${list }">
			<tr class="curTr">
				<td width="5%" class="text-center">${vo.no }</td>
				<td width="65%"><a href="../Board/notice_detail.do?no=${vo.no }&typeno=${vo.typeno }" style="text-decoration: none;color: #333;">${vo.title }</a></td>
				<td width="15%" class="text-center">${vo.dbday }</td>
				<td width="10%" class="text-center">${vo.hit }</td>
				<td width="5%" class="text-center"></td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="5" class="text-center">
				<ul class="pagination">
					<c:if test="${startPage>1 }">
						<li><a href="../Board/notice.do?page=${startPage-1 }&typeno=${typeno }">&lt;</a></li>					
					</c:if>
					<c:forEach var="i" begin="${startPage }" end="${endPage }">
						<li ${i==curpage?"class=active":"" }><a href="../Board/notice.do?page=${i }&typeno=${typeno }">${i }</a></li>					
					</c:forEach>
					<c:if test="${endPage<totalpage }">
						<li><a href="../Board/notice.do?page=${endPage+1 }&typeno=${typeno }">&gt;</a></li>					
					</c:if>
				</ul> 
			</td>
		</tr>
	</table>
	<!-- </div> -->
</body>
</html>