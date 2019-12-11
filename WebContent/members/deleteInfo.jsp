<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dao" class="members.MemberDAO"></jsp:useBean>
<% boolean triger = false;%>
<script type="text/javascript">
<%-- showInfo.jsp 에서 탈퇴 버튼 눌렀을 시 confirm스크립트 작동하도록 변경 --%>
if(confirm('정말로 탈퇴하시겠습니까?')){}
else{ location.href="/My_Home/members/showInfo.jsp" }
</script>
<%	
	if(dao.deleteMember((String)session.getValue("login")) != 0)
	{ 
		session.invalidate();
%>
		<script>
			alert('탈퇴 되었습니다.');
			location.href="/My_Home/Main.jsp";
		</script>
	<%} else {%>
		<script>
			alert('처리 실패');
			location.href="/My_Home/Main.jsp";
		</script>
	<%} %>