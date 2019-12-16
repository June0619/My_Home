<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<c:if test="${sessionScope.login != null }">
	<c:remove var="login" scope="session"/>
	<c:remove var="name__" scope="session"/>
	<c:remove var="addr__" scope="session"/>
	<c:remove var="tel__" scope="session"/>
	<script>
		alert("로그아웃 되었습니다.");
		location.href="/My_Home/Main.jsp";
	</script>
</c:if>
<c:if test="${sessionScope.login == null }">
<script>location.href="/My_Home/Main.jsp";</script>
</c:if>
</html>