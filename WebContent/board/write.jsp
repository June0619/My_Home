<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="dao" class="board.BoardDAO"/>
<c:set var="name" value="${sessionScope.user }"/>
${dao.write_save(param.title, name, param.pwd, param.content)}
<c:redirect url="/board/boardList.jsp"/>