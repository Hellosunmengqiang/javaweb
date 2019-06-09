    <%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"  language="java" %>
    <%@page import="java.sql.*" %>
    <%request.setCharacterEncoding("UTF-8");response.setCharacterEncoding("UTF-8"); %>
<html>

<title>图书属性页面</title>
<head>
<style type="text/css">
    div{
        height:600px;
        width:900px;
        background: blue;
        
        }
        div h2{
           font-size: 32px;
        
        }
   div ul{
     list-style: none;
     
   }
    div ul li{
           margin-left:280px;
           font-size: 20px;
           
        } 
</style>
</head>
<body>
<div>
   <form action="addbook.jsp" method="post">
      <h2 align="center"><br>添加图书信息</h2>
      <ul>
      <br>	
      <li>图书名称：<input type="text" name="name"><br><br></li>
      <li> 价格：<input type="text" name="price"><br><br></li>
      <li> 数量:<input type="text" name="bookcount"><br><br></li>
      <li> 作者：<input type="text" name="author"><br><br></li>
       <li> qq:<input type="text" name="qq"><br><br></li>
      <li> 联系电话：<input type="text" name="tel"><br><br></li>
      <li> <input type="submit" style="font-size: 16px;" value="添 加">&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="reset" style="font-size: 16px;"  value="重 置"></li>
   </ul>
   </form>
   </div>
</body>
</html>