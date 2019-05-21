<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%request.setCharacterEncoding("UTF-8");response.setCharacterEncoding("UTF-8"); %>
    <%@page import="java.sql.*" %>
    <jsp:useBean id="book" class="book.Book"></jsp:useBean>
    <jsp:setProperty property="*" name="book"/>
<html>
<title>查询图书页面</title>
<head>
<style type="text/css">
       .q1{
        background: green;
        width:900px;
        height:580px;
       
       }
      .q1 a{
          font-size: 20px;
          font-family: 宋体;
          text-decoration: none;
          color: black;
          border: 1px black solid;
          background: white;
      }
      .q1 .q2{
        margin-left: 220px;
      }
      .q1 .q2 p{
         font-size: 20px;
      }
   </style>
</head>
<body>
<div class="q1">
    <%
        try{
        	Class.forName("com.mysql.jdbc.Driver");
			Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/books"	, "root","root");
			
			String sql="insert into book(name,price,bookcount,author,tel,outwhere) values(?,?,?,?,?,?)";
			
			PreparedStatement ps=conn.prepareStatement(sql);
		    
			
			ps.setString(1, book.getName());
			ps.setInt(2, book.getPrice());
			ps.setInt(3, book.getBookcount());
			ps.setString(4,book.getAuthor());
			ps.setString(5,book.getTel());
			ps.setString(6,book.getOutwhere());
			
			int row=ps.executeUpdate();//更新操作
			if(row>0)
			{
				out.print("成功添加了"+row+"条数据!");
				
			}
			ps.close();
			conn.close();
			
        }
   
    catch(SQLException e)
    {
    	out.print("图书信息添加失败！");
    	e.printStackTrace();
    }
    %>
    <br>
    <br>
         <div class=q2>
         <br><br><br><br>
              <form action="Findservlet" method="post">
                     <p>请输入你要查询的书籍：
        		     <input type="text" style="width:200px;height:32px;" name="name">
        		     &nbsp;
        		     <input type="submit" style="height:28px;" value=">>">
   		     </form>
   		      <br>
            <a href="index1.jsp">返回</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="SelectAll">查看所有图书</a>
          <br>
          </div>
          </div>
</body>
</html>





