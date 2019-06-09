<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%request.setCharacterEncoding("UTF-8");response.setCharacterEncoding("UTF-8"); %>
    <%@page import="java.sql.*" %>
<html>
<title>用户注册失败</title>
<link rel="icon" type="image/x-icon" href="/img/favicon.ico">
<head>
<style type="text/css">
     body{
         background: url("img/book.jpg") no-repeat center/cover;
      }
      
      a{
          
          font-size: 24px;
          font-family: 宋体;
          text-decoration: none;
          color: red;
          border: 1px red solid;
      
      }   
   </style>
</head>
<body>
            <h2 align="center">用户名已经存在，请重新注册！</h2>
           <p align="center"> <a href="user_reg.html" style="center">点击注册</a></p>
           <%
           String ss=(String)session.getAttribute("rand");
           
           %>
         
      
</body>
</html>





