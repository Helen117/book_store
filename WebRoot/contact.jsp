<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="java.util.*,com.CartBean" %>

<html>
  <head>
  <title>��ϵ����</title>
  <link href="css/style.css" type="text/css" rel="stylesheet">
  <link href="css/generalstyle.css" type="text/css" rel="stylesheet">
  
  <script language="javascript" src="script/trim.js"></script>
     <script language="javascript">
       function check()
       {
         if(document.addform.username.value.trim()=="")
         {
         	alert("�û�������Ϊ��!!!");
         	return;
         }
         if(document.addform.email.value.trim()=="")
         {
         	alert("���䲻��Ϊ��!!!");
         	return;
         }
        
         if(document.addform.content.value.trim()=="")
         {
         	alert("���ݲ���Ϊ��!!!");
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
            �����Ա�����ʲô���ʣ���ʲô�õĽ��������ʲô�������㶼����ͨ����д������Ϣ��������˵�Ķ�˵����������һ����ظ����������⣡��
            </p>
            
              	<div class="contact_form">
                  <div class="form_subtitle">������д����Ϣ</div>   
                   <form action="CartServlet" method="post" name="addform">       
                    <div class="form_row">
                    <label class="contact"><strong>�û���:</strong></label>
                    <input type="text" name="username" class="contact_input" />
                    </div>  

                    <div class="form_row">
                    <label class="contact"><strong>�����ʼ�:</strong></label>
                    <input type="text" name="email" class="contact_input" />
                    </div>


                    <div class="form_row">
                    <label class="contact"><strong>�绰:</strong></label>
                    <input type="text" name="tele" class="contact_input" />
                    </div>
                    
                    <div class="form_row">
                    <label class="contact"><strong>��˾:</strong></label>
                    <input type="text" name= "company" class="contact_input" />
                    </div>


                    <div class="form_row">
                    <label class="contact"><strong>��Ϣ:</strong></label>
                    <textarea class="contact_textarea" name="content"></textarea>
                    </div>

                    
                    <div class="form_row">
                    <input type="button" value="����" onclick="check()"/>
                   <input type="hidden" name="action" value="message"/>  
                    </div>   
             </form>
                </div>	
		</div>	
</div>

</body>
  </html>

