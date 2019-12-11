<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script>
	var setCookie = function(name, value, day){
		var date = new Date();
		date.setTime(date.getTime() + day*1000*60);
		document.cookie = name+"="+value+';expires='+date.toUTCString()+';path=/';
		window.close();
	}
</script>
<meta charset="UTF-8">
<title>공지사항</title>
</head>
<body>
	<h1> 공지사항 </h1>
	Good Job ^ ~^b<br>
	하루동안 열지 않기<input type="checkbox" onclick="setCookie('popup', 'popup_off', 5)">
</body>
</html>