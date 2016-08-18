<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="java.util.*,com.CartBean" %>
<html>
  <head>
  <link href="css/generalstyle.css" type="text/css" rel="stylesheet">
  </head>
  <body>
  <table class="header" background="img/other/header.jpg" width="935" height="100" align="center">
  <tr>
    <td class="logo"><img src="img/other/logo.gif"/></td>
  </tr>
  <tr height="15" colspan="2">
    <td></td>
  </tr>
  <tr>
    <td>
      <table width="65%">
        <tr align="center">
          <td></td>
          <td></td>
          <td><a href="index.jsp">首页</a></td>
          <td><a href="adminindex.jsp">商品管理</a></td>
          <td><a href="ordermanage.jsp">订单管理</a></td>
          <td><a href="AdminServlet?action=adminManage">管理员管理</a></td>
          <td><a href="messageboard.jsp">留言板管理</a></td>
          <td><a href="usermanage.jsp">用户管理</a></td>
          <td><a href="changepwd.jsp">修改密码</a></td>
          <td><a href="AdminServlet?action=logout">注销</a></td>
        </tr>
      </table>
    </td>
  </tr>
</table>
  </body>
  </html>
