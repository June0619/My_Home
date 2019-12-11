<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/layout/Header.jsp"%>
<div id="box_s2">
	<form action="/My_Home/modify/modifyInfo.jsp?id=<%=session.getValue("login") %>" method="post">
		<h3>정보 수정</h3>
		ID : <%=session.getValue("login") %>
		<div class="form-group">
			<label for="pwd1">Password</label> <input type="password"
				class="form-control" id="pwd1" onchange="pwdChk1()" name="pwd"
				placeholder="Password" required="required">
		</div>
		<div class="form-group">
			<label for="pwd2">Check</label> <input type="password"
				class="form-control" id="pwd2" onchange="pwdChk2()"
				placeholder="Password Check" required="required">
		</div>
		<div id="alert" class="" role="alert"></div>
		<div class="form-group">
			<label for="name">Name</label> <input type="text"
				class="form-control" id="name" name="name" placeholder="Name">
		</div>
		<div class="form-group">
			<label for="addr">Address</label> <input type="text"
				class="form-control" id="addr" name="addr" placeholder="Address">
		</div>
		<div class="form-group">
			<label for="tel">TEL</label> <input type="text" class="form-control"
				id="tel" name="tel" placeholder="TEL">
		</div>
		<button type="submit" class="btn btn-default">제출</button>
	</form>
</div>
<%@ include file="/layout/Footer.jsp"%>