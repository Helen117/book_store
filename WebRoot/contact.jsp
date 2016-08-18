<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="java.util.*,com.CartBean" %>

<html>
  <head>
  <title>联系我们</title>
  <link href="css/style.css" type="text/css" rel="stylesheet">
  <link href="css/generalstyle.css" type="text/css" rel="stylesheet">
  
  <script language="javascript" src="script/trim.js"></script>
     <script language="javascript">
       function check()
       {
         if(document.addform.username.value.trim()=="")
         {
         	alert("用户名不能为空!!!");
         	return;
         }
         if(document.addform.email.value.trim()=="")
         {
         	alert("邮箱不能为空!!!");
         	return;
         }
        
         if(document.addform.content.value.trim()=="")
         {
         	alert("内容不能为空!!!");
         	return;
         }
        
         document.addform.submit();         
       }
     </script>
     
  </head>
 <body>
<div align="center">
 
	   <%@include file="top.jsp" %>
     <div class="title"><span class="title_icon"><img src="img/other/bullet1.gif"  alt="" title="" /></span>Contact Us</div>
          <div class="feat_prod_box_details">
            <p class="details">
            如果你对本店有什么疑问，有什么好的建议或是有什么不满，你都可以通过填写以下信息，把你想说的都说出来，我们一定会回复。让你满意！！
            </p>
            
              	<div class="contact_form">
                  <div class="form_subtitle">所需填写的信息</div>   
                   <form action="CartServlet" method="post" name="addform">       
                    <div class="form_row">
                    <label class="contact"><strong>用户名:</strong></label>
                    <input type="text" name="username" class="contact_input" />
                    </div>  

                    <div class="form_row">
                    <label class="contact"><strong>电子邮件:</strong></label>
                    <input type="text" name="email" class="contact_input" />
                    </div>


                    <div class="form_row">
                    <label class="contact"><strong>电话:</strong></label>
                    <input type="text" name="tele" class="contact_input" />
                    </div>
                    
                    <div class="form_row">
                    <label class="contact"><strong>公司:</strong></label>
                    <input type="text" name= "company" class="contact_input" />
                    </div>


                    <div class="form_row">
                    <label class="contact"><strong>信息:</strong></label>
                    <textarea class="contact_textarea" name="content"></textarea>
                    </div>

                    
                    <div class="form_row">
                    <input type="button" value="发送" onclick="check()"/>
                   <input type="hidden" name="action" value="message"/>  
                    </div>   
             </form>
                </div>	
		</div>	
</div>

</body>
  </html>

