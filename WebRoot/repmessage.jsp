<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="com.AdminBean,com.DBcart,java.util.*"%>
<% 
	if(session.getAttribute("admin")==null)
	{
		response.sendRedirect("adlogin.jsp");
	}
	else
	{
		Vector<String[]> messageinfo = (Vector<String[]>)request.getAttribute("messageinfo");
		String[] str = messageinfo.get(0);
 %>
 <html>
   <head>
     <title>���԰����</title>
     <script language="javascript" src="script/trim.js"></script>
     <script language="javascript">
       function modifyMessage()
       {
		 document.myform.action.value="reply";
              
         if(document.myform.replycontent.value.trim()=="")
         {
         	alert("�ظ����ݲ���Ϊ��!!!");
         	return;
         }
         document.myform.submit();
       }
       function deleteMessage()
       {
       		document.myform.action.value="messagedelete";
       		document.myform.submit();
       }
     </script>
   </head>
   <body>
     <table width="100%" cellpadding="0" cellspacing="0">
       <tr>
         <td><%@ include file="admintop.jsp" %></td>
       </tr>
       </br></br>
       <tr>
         <td align="center">
           <form action="AdminServlet" method="post" name="myform">
             <table>
               <tr>
                 <td>������:</td>
                 <td><input name="username" size="30" value="<%=str[1] %>"/></td>
               </tr>
               <tr>
                 <td>��������:</td>
                 <td><input name="releasetime" size="30" value="<%=str[2] %>"/></td>
               </tr>
               <tr>
                 <td>����ʱ��:</td>
                 <td><input name="content" size="30" value="<%=str[3] %>"/></td>
               </tr>     
               <tr>
                 <td>�ظ�����:</td>
               </tr>
               <tr>
                 <td colspan="2">
                   <textarea cols="60" rows="6" name="replycontent"></textarea>
                 </td>
               </tr>
               <tr align="center">
                 <td colspan="2">
                   <input type="hidden" name="Mid" value="<%= str[0] %>"/>
                   <input type="hidden" name="action" value=""/>
                   <input type="button" value="�ظ�" onclick="modifyMessage()"/>
                   <input type="button" value="ɾ��" onclick="deleteMessage()"/>
                   <input type="button" value="����" onclick="javascript:history.back()"/>
                 </td>
               </tr>
             </table>
           </form>
         </td>
       </tr>
     </table>
   </body>
 </html>
 <% 
 	}
  %>