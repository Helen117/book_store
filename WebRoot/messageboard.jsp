<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="com.AdminBean,com.DBcart,java.util.*"%>
<html>
  <head>
    <title>留言管理</title>
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
    <th>NO.</th>
    <th>留言者</th>
    <th>留言内容</th>
    <th>留言时间</th>
    <th>留言详细信息</th> 
  </tr>
  <% 	
  		String sql = "select Mid,user_name,content,release_time from messageboard";
        Vector<String[]> message =DBcart.getInfoArr(sql);
	for(int i=0;i<message.size();i++)
	{
		String[] str = message.get(i);
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
   		<td><%= str[3] %></td>
   		<td><a href="AdminServlet?action=message&Mid=<%= str[0]%>">查看/回复</a></td>
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