 <%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"  language="java" %>
    <%@page import="java.sql.*" %>
    <%@page import="book.Book" %>
    <%@page import="java.util.*" %>
    <%request.setCharacterEncoding("UTF-8");
      response.setCharacterEncoding("UTF-8"); %>
<html>
<title>所有信息</title>
<link rel="icon" type="image/x-icon" href="/img/favicon.ico">
<head>
     <style type="text/css">
     body{
    background-position: center center;
    background-attachment: fixed;
}
#box{
    
    box-shadow:2px 2px 5px gray;
    width:100%;
    height:800px;
   }
    .q{
       
     opacity:0.6;
     width:1200px;
     background: green;
     margin:0 auto;
    }
   .q .q1{
     font-size: 18px;
    margin:100px auto;
   
   }
   .q .q1 h2{
   font-size: 30px;
   color: red;
   }
  .nav{
    width: 100%;
    height: 50px;
    float: left;
    text-align: center;
    /* border: 1px solid red; */
    line-height: 50px;
}
.nav a{
    font-weight: bold;
    margin:50px 8px;
    margin-left:100px;
    text-decoration: none;
}

#select-nav{
   border-radius: 8px;
                    border: 1px solid black;
                    width: 110px;
                    height: 35px;
                    margin: 0 auto;
                    float: right;
                    margin: 10px 10px;
                    font-size: 18px;
                    opacity: 0.6;
                    outline: none;
}
</style>


</head>
<body background="img/list.jpg">
<div id="box" style="border:1px solid black;">
<div class="nav">
    <a href="FirstHome.html" style="font-size:22px;color:orange;">首页</a>
    <a href="exit.jsp" style="font-size:22px;color:orange;">注销</a>
     <a href="search.jsp" style="font-size:22px;color:orange;">查询</a>
      <a href="SelectAll3" style="font-size:22px;color:orange;">清单</a>
      <a href="list_all.jsp" style="font-size:22px;color:orange;">目录</a>
    <select name="" id="select-nav" onchange="window.location=this.value;">
     <%
              String username=(String)session.getAttribute("username");
              String password=(String)session.getAttribute("password");
              
           %>
        <option value="#" selected="selected">个人信息</option>
        <option value="#">账号：<%=username %></option>
        <option value="#">密码：<%=password %></option>
        <option value="exit.jsp">注销</option>
        <option value="#">设置</option>
    </select>
</div>
<div class="q" style="background-color: azure;box-shadow:2px 2px 5px gray;margin-top: 50px;">
<table  border="1" class="q1" >
    <tr align="center">
    <td  colspan="10">
    <h2>管理信息</h2>
    </td>
    </tr>
    <tr>
        <th style="width:40px; border: 1px solid black"> ID</th>
        <th style="width:170px; border: 1px solid black"> 姓名 </th>
       <th style="width:70px; border: 1px solid black"> 价格</th>
       <th style="width:70px; border: 1px solid black">数量</th>
       <th style="width:110px; border: 1px solid black">作者</th>
       <th style="width:130px; border: 1px solid black">联系电话</th>
       <th style="width:140px; border: 1px solid black">出版社</th>
       <th style="width:120px; border: 1px solid black">备注</th>
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
        		<td style="text-align:center;">
        		 <form action="##" method="post">
        		     <input type="hidden" name="name" value="<%=book.getName()%>">
        		    <input type="hidden" name="price" value="<%=book.getPrice()%>">
        		     <input type="submit" value="已购买" style="margin-top:8px;font-size:17px;">
        		 </form>
        		 
        		 </td>
        		 
        		</tr>
        	<% }
        	}%>
     
</table>
</div>
</div>
</body>
</html>



