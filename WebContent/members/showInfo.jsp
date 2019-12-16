<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ include file="/layout/Header.jsp" %>
<jsp:useBean id="dao" class="members.MemberDAO"/>
<c:set var="id" value="${login}"/>
<c:set var="dto" value="${dao.memberInfo(id)}"/>
<script>
function del(){
	if(confirm('정말로 탈퇴하시겠습니까?'))
	{ location.href="deleteInfo.jsp"; }
	else{}
}
</script>
	<table class="table" style="width:350px; margin: 0 auto">
		<tr><th colspan="2" style="text-align:center">회원 정보</th></tr>
		<tr><td>ID</td><td>${dto.getId()}</td></tr>
		<tr><td>Paaword</td><td>${dto.getPwd()}</td></tr>
		<tr><td>Name</td><td>${dto.getName()}</td></tr>
		<tr><td>Address</td><td>${dto.getAddr()}</td></tr>
		<tr><td>Tel</td><td>${dto.getTel()}</td></tr>
		<c:set var="name_" value="${dto.name }" scope="session"/>
		<c:set var="addr_" value="${dto.addr }" scope="session"/>
		<c:set var="tel_" value="${dto.tel }" scope="session"/>
		<tr><td><button onclick="location.href='/My_Home/modify/modifyForm.jsp'" class="btn btn-info btn-sm">수정</button></td>
		<td><button onclick="del()" class="btn btn-danger btn-sm">탈퇴</button></td></tr>
	</table>
<%@ include file="/layout/Footer.jsp" %>