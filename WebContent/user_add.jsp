<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%request.setCharacterEncoding("UTF-8");response.setCharacterEncoding("UTF-8"); %>
    <%@page import="java.sql.*" %>
    <jsp:useBean id="book" class="book.Book"></jsp:useBean>
    <jsp:setProperty property="*" name="book"/>
<html>
<title>用户注册</title>
<head>
<script>
     

</script>
<style type="text/css">
      
   </style>
</head>
<body>
  <%
           String sql="";
     try{
    	 Class.forName("com.mysql.jdbc.Driver");
			Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/books", "root","root");
			Statement st=conn.createStatement();
			
			String s_username=request.getParameter("username");
			
			 sql="select * from users where username like '"+s_username+"'";
			ResultSet rs=st.executeQuery(sql);
			if(rs.next())
			{
				
				request.getRequestDispatcher("reg_bed.jsp").forward(request, response);
			}
			else
			{
				HttpSession se=request.getSession();
				
				String s_password=request.getParameter("password");
				String s_nickname=request.getParameter("nickname");
				se.setAttribute("nickname", s_nickname);
				String s_sex=request.getParameter("sex");
				String s_email=request.getParameter("email");
				//out.print(s_sex);
sql="insert into users(username,password,nickname,sex,email) values('"+s_username+"','"+s_password+"','"+s_nickname+"','"+s_sex+"','"+s_email+"')";
			st.executeUpdate(sql);
			request.getRequestDispatcher("reg_well.jsp").forward(request, response);
			
			}
			rs.close();
			st.close();
			conn.close();
			
     }
  catch(Exception ex)
  {
	  request.getRequestDispatcher("reg_bed.jsp").forward(request, response);
  }
  
  
  %>
</body>
</html>





