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
