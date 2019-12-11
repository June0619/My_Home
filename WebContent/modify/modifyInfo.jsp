<%@page import="members.MemberDAO"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:useBean id="mb" class="members.MemberDTO"></jsp:useBean>
<jsp:useBean id="dao" class="members.MemberDAO"></jsp:useBean>
<jsp:setProperty property="*" name="mb"/>
<c:choose>
	<c:when test="${dao.modifyMember(mb)!=0}">
		<script>
			alert('수정 완료');
			location.href="/My_Home/members/showInfo.jsp";
		</script>	
	</c:when>
	<c:otherwise>
		<script>
			alert('수정 실패');
			location.href="/My_Home/Main.jsp";
		</script>
	</c:otherwise>
</c:choose>