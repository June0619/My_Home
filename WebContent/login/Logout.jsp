<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<% if(session.getAttribute("login")!=null){
	session.invalidate(); %>
	<script>
		alert("로그아웃 되었습니다.");
		location.href="/My_Home/Main.jsp";
	</script>
<%	} else{ response.sendRedirect("/My_Home/Main.jsp");}%>
</html>