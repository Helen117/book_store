<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="com.CartBean,com.DBcart,java.util.*"%>
<% 
	Vector<String[]> vgoods = (Vector<String[]>)request.getAttribute("vgoods");
	String[] str = vgoods.get(0);
 %>
<html>
  <head>
    <title>��Ʒ��ϸ��Ϣ</title>
    <link href="css/generalstyle.css" type="text/css" rel="stylesheet">
  </head>
  <body>
    <jsp:useBean id="mycart" class="com.CartBean" scope="session"/>
     
    <table align="center" cellspacing="0" cellpadding="0">
      <tr>
        <td>
          <center>
          <div style="height:100px">
      		<%@ include file="top.jsp" %>
     	  </div><br/><br/><br/>
          <table width="70%">
          	<tr>
              <td><img src="<%= str[0] %>" height="150" border="1"/></td>
              <td>
                <table width="80%">
                  <tr>
                    <td bgcolor="#E4EDFA"><%= str[1] %></td>
                  </tr>
                  <tr>
			        <td><font><%= mycart.manageStr(str[2]) %></font></td>
			      </tr>
			      <tr>
			        <td bgcolor="#E4EDFA"><font>��������:<%= str[3] %></font></td>
			      </tr>
			      <tr>
			        <td><font>����:��<%= str[4] %></font></td>
			      </tr>
			      <tr>
			        <td bgcolor="#E4EDFA"><font>�������:<%= str[5] %></font></td>
			      </tr>
			      <tr>
                    <td>
                      <a href="CartServlet?action=buy&flag=1&gid=<%= str[6] %>">
                        <img src="img/other/buy.gif" border="0"/>
                      </a>
                    </td>
                  </tr>
                </table>
              </td>        	
          	</tr>
          	<tr>
          	  <td><b><br/>��Ʒ����:</b></td>
          	</tr>
          	<tr>
          	  <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;<%= str[7] %></td>
          	</tr>
          </table>
          </center>
        </td>
      </tr>
    </table>
  </body>
</html>