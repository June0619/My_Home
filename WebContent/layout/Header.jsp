<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv = "X-UA-Compatible"content = "IE = edge">
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="/My_Home/js/bootstrap.js"></script>
<script src="/My_Home/js/script.js"></script>
<link rel="stylesheet" href="/My_Home/css/bootstrap.css">
<link rel="stylesheet" href="/My_Home/css/css.css">
<link href="https://fonts.googleapis.com/css?family=Patua+One&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Anton|Jua&display=swap" rel="stylesheet">
<style  type="text/css"></style>

<title>Build Something</title>
</head>
<body>
<div class="container">
<header>
	<div id="box" class="page-header" style="display:flex; position:relative;">
		<div class="title"><a class="index" href="/My_Home/Main.jsp">Build Something</a></div>
		<div class="menu">
		<%if(session.getAttribute("login")==null){ %>
		<a href="/My_Home/login/Login.jsp">Login</a> |
		<a href="/My_Home/signin/SignInForm.jsp">Sign In</a>
		<%}else{ %>
		<a href="/My_Home/login/Logout.jsp">Logout</a> |
		<a href="/My_Home/members/showInfo.jsp">My Page</a>
			<%if(session.getValue("login").equals("admin")){ %>
			| <a href="/My_Home/members/members.jsp">회원목록</a>
		<%	}
		} %>
		</div>
	</div>
	<hr>
</header>