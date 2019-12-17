<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<fmt:requestEncoding value="utf-8"/>

<jsp:useBean id="dao" class="board.BoardDAO"/>
<c:set var="name" value="${user }"/>
${dao.write(param.title, name, param.pwd, param.content)}
<c:redirect url="/board/boardList.jsp"/>