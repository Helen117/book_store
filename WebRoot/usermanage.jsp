<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="com.AdminBean,com.DBcart,java.util.*"%>
<html>
  <head>
    <title>用户管理</title>
  </head>
  <body>
    <table align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td><%@ include file="admintop.jsp" %></td>
      </tr>
      <tr>
        <td>
        </br></br>
	<table width="100%" border="0">
  <tr>
    <th>用户id</th>
    <th>用户名</th>
    <th>用户邮箱</th>
    <th>管理</th>
  </tr>
  <% 	
  		String sql = "select Uid,Uname,Uemail from userinfo";
        Vector<String[]> user =DBcart.getInfoArr(sql);
	for(int i=0;i<user.size();i++)
	{
		String[] str = user.get(i);
		if(i%2==0)
		{
			out.println("<tr align='center'>");
		}
		else
		{
			out.println("<tr align='center' bgcolor='#F5F9FE'>");
		}
   %>
   		<td><%= str[0] %></td>
   		<td><%= str[1] %></td>
   		<td><%= str[2] %></td>
   		<td><a href="AdminServlet?action=usermanage&Uid=<%= str[0]%>">删除</a></td>
   	 </tr>
   <% 
   	}
   %>
   
  
</table>
  </td>
      </tr>
    </table>
  </body>
</html>