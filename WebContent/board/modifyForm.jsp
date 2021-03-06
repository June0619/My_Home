<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/layout/Header.jsp" %>
<jsp:useBean id="dao" class="board.BoardDAO"/>
<c:set var="dto" value="${dao.read(param.no) }"/>
<script>
function board_pwdchk(){
	var pwd = ${dto.pwd};
	if(pwd != document.getElementById("write_pwd").value)
	{
			alert("Password Not Matched");
	}
	else
		document.getElementById("modify").submit();
}
</script>
<div id="box_s2">
	<form action="/My_Home/board/modify.jsp" method="post" id="modify">
		<input type="hidden" name="no" value="${param.no }">
		<div class="form-group">
   		<label for="write_title">Title</label>
    	<input type="text" class="form-control" id="write_title" name="title" value="${dto.title }" required="required">
  		</div>
  		<div class="form-group">
   		<label for="write_pwd">Check Password</label>
    	<input type="password" class="form-control" id="write_pwd" name="pwd" placeholder="Password" required="required">
   		<div id="alert" class="" role="alert"></div>
  		</div>
  		<div class="form-group red-border">
   		<label for="write_content">Content</label>
    	<textarea style="resize: none;" class="form-control" id="write_content" name="content" rows="5">${dto.content }</textarea>
  		</div>
  		<button type="button" class="btn btn-outline-danger" onclick="location.href='/My_Home/board/read.jsp?no=${param.no}'">Cancel</button>
		<button type="button" class="btn btn-outline-primary" onclick="board_pwdchk()">Write</button>
	</form>
	</div>
<%@include file="/layout/Footer.jsp" %>