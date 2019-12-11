<%@page import="members.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/layout/Header.jsp" %>
<jsp:useBean id="dao" class="members.MemberDAO"/>
<c:choose>
	<c:when test="${sessionScope.login !='admin'}">
		<script> 
			alert("접근 권한이 없습니다!");
			location.href="//My_Home/Main.jsp";
		</script>
	</c:when>
	<c:otherwise>
		<c:set var="list" value="${dao.memberView() }"/>
		<h2>Member List</h2>
		<table class="table">
		<tr><th>아이디</th><th>비밀번호</th><th>이름</th><th>주소</th><th>전화번호</th></tr>
		<c:forEach var="dto" items="${dao.memberView() }">
			<tr>
				<td>${dto.getId() }</td>
				<td>${dto.getPwd() }</td>
				<td>${dto.getName() }</td>
				<td>${dto.getAddr() }</td>
				<td>${dto.getTel() }</td>
			</tr>			
		</c:forEach>
		</table>
	</c:otherwise>
</c:choose>
<%@ include file="/layout/Footer.jsp" %>