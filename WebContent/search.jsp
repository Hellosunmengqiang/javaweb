<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%request.setCharacterEncoding("UTF-8"); response.setContentType("text/html;charset:utf-8"); %>
    <%@page import="java.sql.*,java.util.*" %>
    <jsp:useBean id="book" class="book.Book"></jsp:useBean>
    <jsp:setProperty property="*" name="book"/>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <link rel="icon" type="img/x-icon" href="img/favicon.ico">
  
    <style>
    *{
    margin: 0;
    padding: 0;
}
body{
    height: 750px;
    /* border: 1px solid black; */
}

a{
    text-decoration: none;
}

ul {
    list-style: none;
}
.header{
    background-position: center center;
    background-repeat: no-repeat;
    background-size: cover;
    background-image: url(img/search1.jpg);
    height: 225px;
    width: 100%;
    margin: 0 auto;
}
.header .header-title{
    width: 100%;
    height: 250px;
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
    background-image: url(img/search2.jpg);
    height: 475px;
    width: 80%;
    margin: 0 auto;
}
.nav-1{
    border: 1px solid #fff;
    height: 500px;
}
.nav-2{
     height: 50px;
     width: 60%;
     margin-left: 20%;
}
.nav-2{
    margin-top: 80px;
    margin-bottom: 80px;
}
.nav-2 ul{ 
    height: 200px;
  
}
.nav-2 ul li {
    float: left;
    text-align: center;
    height: 50px;
    line-height: 50px;
    margin-left: 15%;
}

.nav-2 ul li a{
    color: orange;
    font-size: 21px;
}

.nav-2 ul li a:hover{
    color: #ff6700;
}

.nav-3{

    text-align: center;
    /* background-color: #eee; */
    /* border:  1px solid black; */
    width: 40%;
    height: 130px;
    margin: 0 auto;

}
.nav-3 .nav-4{
    margin-top: 30px;
}
.nav-4 .input{
    width: 180px;
    height: 30px;
    outline: none;
    border-radius: 10px;
    border: 1px solid black;
}
.nav-5{
    /* margin-right: -20px;*/
    width: 180px;
    height: 30px;
    /* border: 1px solid black; */
    border-radius: 10px;
}

.nav-6{
    border-radius: 10px;
    /* margin: 0 auto; */
    margin-left: 45%;
    display: block;
    width: 100px;
    height: 30px;
    border: 1px solid black;
}

.nav-6:hover{
    color: #fff;
    background-color: #ff6700;
}
            #select{
                width: 100%;
                height: 55px;
                border: 1px solid black;
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
                <select name="" id="select-nav" onchange="window.location=this.value;">
                 
           <%
              String username=(String)session.getAttribute("username");
              String password=(String)session.getAttribute("password");
              
           %>
           
                        <option value="#" selected="selected">个人信息</option>
                        <option value="#">账号：<%=username%></option>
                        <option value="#">密码：<%=password%></option>
                        <option value="exit.jsp">注销</option>
                        <option value="#">设置</option>
                    </select>
                <!-- <img src="img/header.jpg" alt="安徽科技学院" title="安徽科技学院" class="header-title"> -->
          </div>
          <div class="tips-security" style="margin-bottom: px;margin-top: 8px;">
                  依据《网络安全法》，为保障您相关功能的正常使用，请尽快完成手机验证。 新版
                      <a href="http://pages.ctrip.com/public/serve%20guideline.html" target="_blank">《隐私政策》</a>
                               已上线，感谢您的支持。
                  </div>
<div class="nav-0">

 
 <div class="nav-1">
        
     <div class="nav-2">
            <h1 style="text-align:center;letter-spacing: 12px;">天和图书管理系统</h1>
            <br><br>
       <ul>
           <li><a href='FirstHome.html'>首页</a></li>
           <li><a href='exit.jsp'>注销</a></li>
           <li><a href='SelectAll2'>管理图书</a></li>
           <li><a href='Addbook.jsp'>添加书籍</a></li>
       </ul>
       
    </div>
    <br>
    <div class="nav-3">
            <form action="Findservlet" method="post" class="nav-4">
                <span style="font-size:19">图书名称</span>:&nbsp;&nbsp;&nbsp;<input type="text" class="input" name="name" placeholder="请输入图书名称" />
                <br><br>
                <input type="submit" value="提交" class="nav-6" style="outline: none;"/>
            </form>
            <form action="SelectAll" method="post" class="nav-4">
           <input type="submit" value="查询所有图书" class="nav-6" style="outline: none;"/>
            </form>
        </div>
    <br>
        
<marquee behavior="alternate">
        <span style="color:red; font-size:18px;font-weight:bold;">欢迎来到天和图书馆</span>
        </marquee>
</div>

</div>

</body>
</html> 