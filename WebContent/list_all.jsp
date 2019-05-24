<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%request.setCharacterEncoding("UTF-8");response.setCharacterEncoding("UTF-8"); %>
    <%@page import="java.sql.*" %><%@page import="java.util.*" %>
<html>
<title>用户注册成功</title>
<head>
<link rel="stylesheet" type="text/css" href="http://www.czslib.com/static/www/chuzhou/css/bootstrap.min.css">

<style type="text/css">
     body{
         background: url("img/well.jpg") no-repeat center/cover;
      }
      
      p{
          
          font-size: 28px;
          font-family: 宋体;
          text-decoration: none;
      
      
      }  
      #select-nav{
                    border-radius: 8px;
                    border: 1px solid black;
                    width: 110px;
                    height: 35px;
                    margin: -280px auto;
                    float: right;	
                    font-size: 18px;
                    opacity: 0.6;
                    outline: none;
} 
   </style>
</head>
<body> <%!int sum=0,t=0;%>
           <%
              sum=0;
          String price=(String)session.getAttribute("price");
           sum+=Integer.parseInt(price);t++;
          String name=(String)session.getAttribute("name");
           %>
           

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
           <div style="width:60%;height:100px;margin:300px auto;">
           <p style="text-align:center;"><span style="color:#ff6700;">你选择的图书如下:</span></p>
           <p style="text-align:center;">一共<%=t%>本，总共<%=sum%>元</p>
           </div>
           <div class="footer" style="position:absolute;bottom:0px;left:200px;">
  <div class="container">
    <div class="row">
      <div class="col-md-4">
        <div class="foot-item">
          <div class="item-tit">
            <span class="tit-text">关注我们</span>
          </div>
          <div class="official">
            <div class="official-img"> <img src="http://112.28.77.190/res/705ed0e47e064cc49e7f7dbc32559479.png"> </div>
            <!--<div class="official-text">官方微信</div>-->
          </div>
          <div class="official">
            <div class="official-img"> <img src="http://112.28.77.190/res/fdcc02c207a041b18e998f81bf854d48.png"> </div>
            <!--<div class="official-text">支付宝服务号</div>-->
          </div>
      </div>
    </div>
    <div class="col-md-4" style="margin-top:40px;">
      <div class="foot-item" >
        <div class="item-tit"><span class="tit-text" style="font-size:20px">友情链接</span></div>
        <div class="item-list">
          <ul style="list-style-type:none;font-size:18px;">
            <li><a target="_blank"  href="http://www.ahwh.gov.cn/">安徽省文化厅</a></li>
            <li><a target="_blank"  href="http://www.nlc.cn/">国家图书馆</a></li>
            <li><a target="_blank"  href="http://www.ndlib.cn/">数字图书推广工程</a></li>
            <li><a target="_blank"  href="http://www.ndcnc.gov.cn/">全国文化信息资源共享工程</a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="col-md-4" style="margin-top:40px;">
      <div class="foot-item">
        <div class="item-tit"><span class="tit-text" style="font-size:20px;margin-buttom:8px;">联系我们</span></div>
        <div class="item-list">
          <ul style="list-style-type:none;font-size:18px;color:yellow;">
            <li>咨询服务：0550-123456</li>
            <li>读者交流QQ群号：742655967</li>
            <li>技术支持：安徽科技学院计算机系</li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>
</div>
           
  
</body>
</html>





