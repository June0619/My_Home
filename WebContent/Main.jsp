<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "/layout/Header.jsp" %>
<div class="row">
	<div class="col-md-6" style="margin:0 auto;">
	<c:if test="${sessionScope.login !=null }">
		<h3>${sessionScope.login}님 환영합니다.</h3>
	</c:if>
	<img src="/My_Home/sources/img1.jpg" class="img-thumbnail" alt="Responsive image">
	</div>
</div>
<%@ include file = "/layout/Footer.jsp" %>