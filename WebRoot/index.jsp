<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="java.util.*,com.CartBean,com.DBcart" %>

<html>
  <head>
    <title>Bookstore</title>
    <style type="text/css">
    div#header{height:100px}
    </style>
  </head>
  <link href="css/generalstyle.css" type="text/css" rel="stylesheet">
  <body>
    <jsp:useBean id="mycart" class="com.CartBean" scope="session"/>
    <center>
      <div id="header">
      <%@ include file="top.jsp" %>
      </div>
      <br/><br/><br/><br/>
       <table border="0" width="935" height="100%" cellpadding="0" cellspacing="0">
        <tr height="100">
          <td width="200" height="100" align="center">
          <% 
             if(session.getAttribute("user")==null)
             {
          %>
              <%@ include file="login.jsp" %>
          <% 
             }
             else
             {
             	out.println("<table border='0' bgcolor='#FFF0E1' width='80%' height='150'>");
             	out.println("<tr align='center' height='80'><td>");
             	out.println(session.getAttribute("user")+"你好,<br/>欢迎你光顾本店!!!");
             	out.println("<br/><a href='userinfo.jsp'>查看/修改个人信息</a>");
             	out.println("<a href='CartServlet?action=logout'>[注销]</a>");
             	out.println("</td></tr></table>");
             }
            %>
          </td>
          <td rowspan="3" valign="top"><%@ include file="splist.jsp" %></td>
        </tr>
        <tr>
          <td height="50"><%@ include file="spsearch.jsp" %></td>
        </tr>
        <tr>
          <td valign="top"><%@ include file="spclass.jsp" %></td>
        </tr>
      </table>
    </center>
  </body>
</html>