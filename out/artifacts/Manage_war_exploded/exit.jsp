<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%request.setCharacterEncoding("UTF-8");response.setCharacterEncoding("UTF-8"); %>
    <%@page import="java.sql.*" %>
<%@page import="java.util.Random,java.awt.image.* ,java.util.*,javax.imageio.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注销</title>
	<link rel="icon" type="image/x-icon" href="/img/favicon.ico">
</head>
<body>


	<%
   		session.removeAttribute("username");
	    session.removeAttribute("password");
	    session.removeAttribute("nickname");
	    session.removeAttribute("price");
   		response.sendRedirect("login.html");
    %>

</body>
</html>