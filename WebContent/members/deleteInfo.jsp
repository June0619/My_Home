<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:useBean id="dao" class="members.MemberDAO"></jsp:useBean>
<% boolean triger = false;%>
<c:if test="${sessionScope.login != null }">
	<c:choose>
		<c:when test="${dao.deleteMember() ==1}">
			<c:remove var="login" scope="session"/>
			<script>
					alert('탈퇴 되었습니다.');
					location.href="/My_Home/Main.jsp";
			</script>
		</c:when>
		<c:otherwise>
			<script>
				alert('처리 실패');
				location.href="/My_Home/Main.jsp";
			</script>
		</c:otherwise>
	</c:choose>
</c:if>
<c:if test="${sessionScope.login == null }">
	<script>
			location.href="/My_Home/Main.jsp";
	</script>
</c:if>
