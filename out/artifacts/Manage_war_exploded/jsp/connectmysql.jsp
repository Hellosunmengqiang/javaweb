<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="java.sql.*" %>
     <%request.setCharacterEncoding("UTF-8");response.setCharacterEncoding("UTF-8"); %>
<html>
<title></title>
<head>

</head>
<body>
    <%
        try{
        	Class.forName("com.mysql.jdbc.Driver");
			Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/books", "root","root");
			
			if(conn!=null)
			{
				out.println("数据库连接成功!");
				conn.close();
			}
			else
				out.println("连接失败！");
			
        }
   
    catch(SQLException e)
    {
    	e.printStackTrace();
    }
    catch(ClassNotFoundException e)
    {
    	e.printStackTrace();
    }
    %>
    <div>你好啊</div>
</body>
</html>





