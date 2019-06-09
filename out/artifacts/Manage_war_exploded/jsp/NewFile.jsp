    <%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"  language="java" %>
    <%@page import="java.sql.*" %>
    <%request.setCharacterEncoding("UTF-8");response.setCharacterEncoding("UTF-8"); %>
<html>
<head>
   
</head>
<body>
        <%  String name=(String)request.getParameter("name");
		Integer bookcount=Integer.valueOf((String) request.getParameter("bookcount"));%>
		<%=name %>
		<%=bookcount %>
</body>
</html>