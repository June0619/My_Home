<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<%	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String user = "jsp", password="jsp", url="jdbc:oracle:thin:@localhost:1521:xe";
	//url => DB가 설치된 위치 정보
	Connection con = DriverManager.getConnection(url, user, password);	
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String sql = "select * from members where id = '"+id+"'";
	PreparedStatement ps = con.prepareStatement(sql);
	ResultSet rs = ps.executeQuery();
	// ps.excuteUpdate();
	if(rs.next()){
		if(rs.getString("pwd").equals(pwd)){
			session.setAttribute("login", rs.getString("id")); %>
			<script>alert('<%=rs.getString("name")%>님 로그인 되었습니다!');
			location.href="/My_Home/Main.jsp"</script>
		<%} else{%>
			<script>
				alert('<%=request.getParameter("pwd")%>');
				alert('<%=rs.getString("pwd")%>');
				alert('비밀번호가 일치하지 않습니다.');
				location.href="/My_Home/login/Login.jsp";
			</script>
		<%}
	}else{%>
		<script>
			alert('일치하는 회원 정보가 없습니다');
			location.href="/My_Home/login/Login.jsp";
		</script>	
		<%}	%>
</html>