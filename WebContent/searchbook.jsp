<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%request.setCharacterEncoding("UTF-8"); response.setContentType("text/html;charset:utf-8"); %>
    <%@page import="java.sql.*,java.util.*" %>
    <jsp:useBean id="book" class="book.Book"></jsp:useBean>
    <jsp:setProperty property="*" name="book"/>
<html>
<title>查询图书页面</title>
<head>
<style type="text/css">
      *{
    margin: 0;
    padding: 0;
}
body{
    height: 750px;
    border: 1px solid black;
}

a{
    text-decoration: none;
}

ul {
    list-style: none;
}
.header{
border:1px solid black;
}
.header .header-title{
	width: 100%;
	background-repeat: no-repeat;
}

.tips-security{
	width: 100%;
	padding: 7px 0;
	margin-top: -10px;
	line-height: 16px;
	background: #fffcd8;
	font-family: 'Microsoft yahei';
	font-size:12px;
	color: #666;
	text-align: center;
	vertical-align: middle;
}

.nav-0{
    background-position: center center;
    background-repeat: no-repeat;
    background-size: cover;
    background-image: url(img/鑳屾櫙鍥剧墖1.jpg);
    height: 475px;
    width: 100%;
    /* border: 1px solid red; */
    /* margin-top: 10px; */
}

.nav-2{
     height: 50px;
     width: 60%;
     /* border: 1px solid black; */
     margin: 0 auto;    
}

.nav-2 ul li {
    float: left;
    text-align: center;
    height: 50px;
    line-height: 50px;
    margin-left: 20%;
}

.nav-2 ul li a{
    color: black;
}

.nav-2 ul li a:hover{
    color: #ff6700;
}

.nav-3{
    text-align: center;
    background-color: #eee;
    border:  1px solid black;
    width: 20%;
    height: 160px;
    margin: 0 auto;
    margin-top: 60px;
}

.nav-3 .nav-4{
    
    margin-top: 10px;
}

.nav-5{
    /* margin-right: -20px;     */
    width: 180px;
    height: 30px;
    border: 1px solid black;
    border-radius: 10px;
}

.nav-6{
    border-radius: 10px;
    margin: -5px auto;
    display: block;
    width: 100px;
    height: 25px;
    border: 1px solid black;
}

.nav-6:hover{
    color: #fff;
    background-color: #ff6700;
}
   </style>
</head>
<body>
    <%
        try{
        	Class.forName("com.mysql.jdbc.Driver");
			Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/books", "root","root");
			
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
				out.append("成功添加了"+row+"条数据!");
				
			}
			ps.close();
			conn.close();
			
        }
   
    catch(SQLException e)
    {
    	   System.out.print("图书信息添加失败！");
    	   e.printStackTrace();
    }
    %>
        <div class="header">
                <img src="img/tsglm_r1_c1.png" alt="安徽科技学院" title="安徽科技学院" class="header-title">
          </div>
          <div class="tips-security">
                  依据《网络安全法》，为保障您相关功能的正常使用，请尽快完成手机验证。 新版
                      <a href="http://pages.ctrip.com/public/serve%20guideline.html" target="_blank">《隐私政策》</a>
                               已上线，感谢您的支持。
                  </div>
<div class="nav-0">

 <h1 style="text-align:center;letter-spacing: 12px;">图书管理系统</h1>
 <div class="nav-1">
     <div class="nav-2">
       <ul>
           <li><a href='exit.jsp'>注销</a></li>
           <li><a href='login.html'>重新登录</a></li>
           <li><a href='Addbook.jsp'>添加书籍</a></li>
           
           <%
              String username=(String)session.getAttribute("username");
              String password=(String)session.getAttribute("password");
              
           %>
           
          <li>名字是：<%=username %></li>
          <li>密码是：<%=password %></li>
          
       </ul>
    </div>
    <div class="nav-3">
    <form action="Findservlet" method="post" class="nav-4">
        <span>请输入查询的书籍</span>&nbsp;&nbsp;&nbsp;<input type="text" name="name" placeholder="请输入书籍名" class="nav-5" />
        <br><br>
        <input type="submit" value=">>>" class="nav-6"/>
         </form>
        <form action="SelectAll" method="post" class="nav-4">
        </br>
        <input type="submit" value="查询所有图书" class="nav-6" >
    </form>
</div>
</div>
<marquee behavior="alternate">
        <span style="color:red; font-size:18px;font-weight:bold;">欢迎来到图书管理系统</span>
        </marquee>
</div>
</body>
</html>





