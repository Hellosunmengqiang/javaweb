<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%request.setCharacterEncoding("UTF-8");response.setCharacterEncoding("UTF-8"); %>
    <%@page import="java.sql.*" %>
    <jsp:useBean id="book" class="book.Book"></jsp:useBean>
    <jsp:setProperty property="*" name="book"/>
<html>
<title>用户注册</title>
<head>
<script language="javascript">
     function  isDigit(cCheck)
     {
    	 return (('0'<=cCheck)&&(cCheck<='9'));
     }
     function isAipha(cCheck)
     {
    	 return ((('a'<=cCheck)&&(cCheck<='z'))||(('A'<=cCheck)&&(cCheck<='Z')));
     }
     function isValid()
     {
    	 var stname=reg.username.value;
    	 for(i=0;i<stname.length;i++)
    	{
    		 cCheck=stname.charAt(i);
    		 if(!(isDigit(cCheck)||isAipha(cCheck)))
    			 {
    			 return false;
    			 
    			 }
    		 
    	 }return true;
    	 
     }
     function Chemail(str)
     {
    	 return
    	 str.search(/[\w\-]{1,}@[\w\-]{1,}\.[\w\-]{1,}/)==0?true:false;
     }
     function Docheck()
     {
    	 if(reg.username.value=="")
    	 {
    		 alert("请填写用户名！");
    	    return false;
    	 }
    	 else if(!isValid())
    	 {
    		 alert("用户名只能是字母和数字");
    		 return false;
    		 
         }
    	 else if(reg.password.value=="")
    		 {
    		 alert("请填写密码");
    		 return false;
    		 }
    	 else if(reg.password.value!=reg.cpassword.value)
    		 {
    		 alert("两次的密码不一样");
    		 return false;
    		 }
    	 else if(reg.nickname.value=="")
    		 {
    		 alert("请填写昵称");
    		 return false;
    		 }
    	 else if(reg.email.value=="")
    			 {
    			 alert("请填写邮箱");
    			 return false;
    			 }
       // else if(Chemail(reg.email.value))
    		//{
    		// alert("请填写有效的邮箱");
    		 //return false;
    		 //}
    	else{
    		 return false;
    		 }
    	 
     }

</script>
<style type="text/css">
      
   </style>
</head>
<body>
   <h1 align="center">用户注册</h1><br>
   <div align="center">
   
    <form name="reg" action="user_add.jsp" method="post" target="_self" onSubmit="return Docheck()">
             <table width="90%" border="0">
             <tr>请输入要注册的用户名：<input type="text" name="username"></tr><br>
             <tr>请输入密码：<input type="text" name="password"> </tr><br>
             <tr>请输入确定密码:<input type="text" name="cpassword"></tr><br>
             <tr>请输入昵称：<input type="text" name="nickname"></tr><br>
             <tr>请选择性别：<input type="radio" name="sex" value="0" checked>男&nbsp;<input type="radio" name="sex" value="1">女</tr><br>
             <tr>请输入邮箱：<input type="text" name="email"></tr>
             
             </table>
    <p>
    <input type="submit" name="sub" value="注册" >&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="reset" name="res" value="重填">
    </p>
    </form>    
   
   </div>
</body>
</html>





