<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "/layout/Header.jsp" %>
<div class="row">
	<div class="col-md-6" style="margin:0 auto;" left:20%;">
	<c:if test="${sessionScope.login !=null }">
		<h3>${sessionScope.login}님 환영합니다.</h3>
	</c:if>
	<img src="/My_Home/sources/img1.jpg" class="img-thumbnail" alt="Responsive image">
	</div>
</div>

<%--
개선해야 할 것
1. modifyInfo 
 - 이름/비밀번호/전화번호 미 입력시 기존 값 유지되도록 변경
 - 아이디 표시 조금 더 깔끔하게(박스 사용)
2. Main
 - 로그인 성공시 메세지 조금 더 깔끔한 방향으로 수정
--%>
<%@ include file = "/layout/Footer.jsp" %>