<%@page import="members.MemberDAO"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<jsp:useBean id="mb" class="members.MemberDTO"></jsp:useBean>
	<jsp:setProperty property="*" name="mb"/>
	<%
	MemberDAO dao = new MemberDAO(); 
	if(dao.modifyMember(mb)!=0){
	session.setAttribute("login", mb.getId());%>
	<script>
		alert('수정 완료');
		location.href="/My_Home/members/showInfo.jsp";
	</script>
	<%} else{ %>
	<script>
		alert('수정 실패');
		location.href="/My_Home/Main.jsp";
	</script>
	<%} %>