<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="dao" class="board.BoardDAO"></jsp:useBean>
<c:choose>
	<c:when test="${dao.delete(param.no, param.pwd) }">
		<script>
			alert("삭제 성공");
			location.href="/My_Home/board/boardList.jsp";
		</script>
	</c:when>
	<c:otherwise>
		<script>
			alert("비밀번호가 일치하지 않습니다.");
			location.href="/My_Home/board/read.jsp?no="+${param.no};
		</script>
	</c:otherwise>
</c:choose>