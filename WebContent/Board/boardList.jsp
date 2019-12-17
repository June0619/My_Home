<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/layout/Header.jsp" %>

<jsp:useBean id="dao" class="board.BoardDAO"/>
<table class="table">
	<tr>
		<th>NO</th><th>작성자</th>
		<th>제목</th><th>작성일</th><th>조회수</th>
	</tr>
	<c:forEach var="dto" items="${dao.list() }">
	<tr>
		<td>${dto.no }</td><td>${dto.author }</td>
		<td><a class="board_title" href="/My_Home/board/read.jsp?no=${dto.no}">${dto.title }</a></td>
		<td>${dto.savedate }</td><td>${dto.count }</td>
	</tr>
	</c:forEach>
	<tr><td colspan="5">
	<button onclick="location.href='/My_Home/board/writeForm.jsp'">글쓰기</button></td></tr>
</table>

<%@include file="/layout/Footer.jsp" %>