<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"  language="java" %>
    <%@page import="java.sql.*" %>
    <%@page import="book.Book" %>
    <%@page import="java.util.*" %>
    <%request.setCharacterEncoding("UTF-8");
      response.setCharacterEncoding("UTF-8"); %>
<html>
<head>
    
    <title>Document</title>	
    <link rel="stylesheet" href="css/add.css">
    <style>
        html{
    height: 100%;
}
body{
    background: url('img/add.jpg') no-repeat center/cover;
}
#target{
    width: 100%;
    height: 750px;
    border: 1px solid red;
}
#target .target-1{
    width: 80%;
    height: 100px;
    line-height: 60px;
    border: 1px solid red;
    margin: 0 auto;
}
#target .target-1 ul{
    float: left;
}
#target .target-1 ul li{
    float: left;
    list-style: none;
}
#target .target-1 ul li a{
    display:inline-block;
    border: 1px solid red;
    text-align: center;
    width: 60px;
    height: 30px;
    line-height: 30px;
    border-radius: 8px;
    margin-left: 120px;
    font-size: 20px;
    color:#fff;
    text-decoration: none;
    letter-spacing: 5px;
}
#target .target-1 ul li a:hover{
    color: black;
    background-color: #ff6700;
}
.form{
    border: 1px solid red;
    margin-top: 10px;
    width: 500px;
    height: 550px;
    margin: 50px auto;
}
.form_register,.form_login{
    border: 1px solid black;
    width: 500px;
    background-color:blanchedalmond;
    opacity: 0.8;
    border-radius: 5px;
    box-shadow: 0 0 3px #ccc;  
    overflow: hidden;
    transition: height 1s;
}
.form_register{
    border: 1px solid black;
    height: 548px;
}

.form form{
   padding: 25px 40px;
}
.form .form_item{
    display: flex;
    margin: 20px 0;
    vertical-align: middle;
}
.form input{
    outline: none;
    text-indent: 10px;
    flex: 1;
    width: auto;
    border: none;
    border-radius: 3px;
    height: 36px;
}
.form form label{
    width: 90px;
    float: left;
    line-height: 36px;
}
h1{
    text-align: center;
    padding: 0;;
    margin: 30px 0 30px 0;
}
.form form input[type='submit']{
    background-color: rgba(244, 22, 7, 0.7);
    color: aliceblue;
    height: 45px;
    font-size: 20px;
    line-height: 20px;
    cursor:pointer;
    border: 1px solid black;
    /* margin-top: 10px; */
}
     #select-nav{
        border-radius: 8px;
        border: 1px solid black;
        width: 110px;
        height:35px;
        opacity:0.6;
        float: right;
        font-size: 18px;
    }
    </style>
</head>
<body>
    <div id="target">
        <div class="select">
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
        </div>
        <div class="target-1">
            <ul>
                <li><a href="www.baidu.com">目录</a></li>
                <li><a href="www.baidu.com">目录</a></li>
                <li><a href="www.baidu.com">目录</a></li>
                <li><a href="www.baidu.com">目录</a></li>
                <li><a href="#">目录</a></li>
            </ul>
           
        </div>
    <div class="form" style="position:relative">
        <div class="form_register" style="position:absolute">  
            <form action="searchbook.jsp" method="POST">
                <h1>添加书籍</h1>
                <div class="form_item">
                    <label for="name">图书名称：</label>
                    <input type="text" name="name" id="name" placeholder="请输入图书名称" required >
                </div>
                <div class="form_item">
                    <label for="price">价格：</label>
                    <input type="text" name="price" id="price" placeholder="请输入价格" required>
                </div>
                <div class="form_item">
                    <label for="acounts">数量：</label>
                    <input type="text" name="email" id="email" placeholder="请输入数量" required>
                </div>
                <div class="form_item">
                    <label for="author">作者：</label>
                    <input type="text" name="author" id="author" placeholder="请输入作者" required>
                </div>
                <div class="form_item">
                    <label for="tel">联系电话：</label>
                    <input type="tel" name="tel" id="tel" placeholder="请输入联系电话" required>
                </div> 
                <div class="form_item">
                    <label for="address">出版地址：</label>
                    <input type="text" name="outwhere" id="outwhere" placeholder="请输入出版地址" required>
                </div>
                <div class="form_item">
                    <input type="submit" value="添加"> 
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>