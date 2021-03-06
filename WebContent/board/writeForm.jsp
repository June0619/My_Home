<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/layout/Header.jsp" %>
<div id="box_s2">
	<form action="/My_Home/board/write.jsp" method="post">
		<div class="form-group">
   		<label for="write_title">Title</label>
    	<input type="text" class="form-control" id="write_title" name="title" placeholder="Title" required="required">
  		</div>
  		<div class="form-group">
   		<label for="write_pwd">Password</label>
    	<input type="password" class="form-control" id="write_pwd" name="pwd" placeholder="Password" required="required">
  		</div>
  		<div class="form-group red-border">
   		<label for="write_content">Content</label>
    	<textarea style="resize: none;" class="form-control" id="write_content" name="content" placeholder="Content" rows="5"></textarea>
  		</div>
  		<button type="button" class="btn btn-outline-danger" onclick="location.href='/My_Home/board/boardList.jsp'">Cancel</button>
		<button type="submit" class="btn btn-outline-primary">Write</button>
	</form>
	</div>
<%@include file="/layout/Footer.jsp" %>