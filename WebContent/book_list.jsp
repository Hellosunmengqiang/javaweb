    <%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"  language="java" %>
    <%@page import="java.sql.*" %>
    <%@page import="book.Book" %>
    <%@page import="java.util.*" %>
    <%request.setCharacterEncoding("UTF-8");
      response.setCharacterEncoding("UTF-8"); %>
<html>
<title>所有图书</title>
<head>
    <style type="text/css">
    
        .q{
        width:1140px;
        
        }
       .q .q1{
         font-size: 18px;
        
       
       }
       .q .q1 h2{
       
       font-size: 30px;
       color: red;
       }
    
    </style>
</head>
<body>
   <div class="q" align="center">
   <table  border="1" class="q1" align="center">
       <tr align="center">
       <td  colspan="10">
       <h2 >图书管理信息</h2>
       </td>
       </tr>
       <tr>
       <th style="width:40px;"> ID</th>
       <th style="width:170px;"> 图书名称 </th>
      <th style="width:70px;"> 价格 </th>
      <th style="width:70px;">数量</th>
      <th style="width:110px;">作者</th>
      <th style="width:120px;">联系电话</th>
      <th style="width:130px;">出版地址</th>
      <th style="width:140px;">备注1</th>
      <th style="width:140px;">备注2</th>
      <th style="width:200px;">备注3</th>
       </tr>
     <%
        List<Book> list=(List<Book>)request.getAttribute("list");
        if(list==null||list.size()<1)
        {
        	out.print("没有数据!");
        }
        else
        {
        	for(Book book:list)
        	{
        		%>
        		<tr>
        		<td align="center"><%=book.getId() %></td>
        		<td align="center"><%=book.getName() %></td>
        		<td align="center"><%=book.getPrice() %></td>
        		<td align="center"><%=book.getBookcount() %></td>
        		<td align="center"><%=book.getAuthor() %></td>
        		<td align="center"><%=book.getTel() %></td>
        		<td align="center"><%=book.getOutwhere() %></td>
        		<td>
        		 <form action="Updateservlet" method="post">
        		     <input type="hidden" name="name" value="<%=book.getName()%>">
        		     <input type="text" style="width:40px;" name="price" size="4">
        		     <input type="submit" value="修改价格">
        		 </form>
        		 
        		 </td>
        		 <td>
        		   <form action="Updateservlet1" method="post">
        		     <input type="hidden" name="name" value="<%=book.getName()%>">
        		     <input type="text" style="width:40px;" name="bookcount">
        		     <input type="submit" value="修改数量">
        		    </form>
        		 </td>
        		 
        		 <td>
        		   <form action="Deleteservlet" method="post">
        		     <input type="text" style="width:100px;" name="name" value="<%=book.getName()%>">
        		     
        		     <input type="submit" value="删除图书">
        		    </form>
        		 </td>
        		</tr>
        	<% }
        	}%>
        
   </table>
   </div>
</body>
</html>



