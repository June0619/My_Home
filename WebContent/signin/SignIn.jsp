<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="mb" class="members.MemberDTO"/>
<jsp:useBean id="dao" class="members.MemberDAO"/>
<jsp:setProperty property="*" name="mb"/>
<%
	if(dao.insertMember(mb) != 0){
	session.setAttribute("login", mb.getId());%>
	<script>
		alert('가입 완료');
		location.href="/My_Home/Main.jsp";
	</script>
	<%} else{ %>
	<script>
		alert('가입 실패');
		location.href="/My_Home/Main.jsp";
	</script>
	<%} %>