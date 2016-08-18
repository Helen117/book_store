<%@ page contentType="text/html;charset=gb2312" %>
<html>
  <head>
    <title>提示页面</title>
    <link href="css/generalstyle.css" type="text/css" rel="stylesheet">
  </head>
  <body>
    <%
 		String msg = (String)request.getAttribute("msg");
     %>
      <table align="center" class="header" background="img/other/header.jpg" width="935" height="100" >
  		<tr>
    		<td class="logo"><img src="img/other/logo.gif"/></td>
  		</tr>
		  <tr height="35">
		    <td></td>
		  </tr>
	 </table>
	 <br/><br/><br/><br/><br/><br/><br/><br/><br/>
	 <center>
	   <font color="" size="12"><%= msg %></font>
	   <br/><br/>
	   <a href="javascript:history.back()">单击这里返回</a>
	   &nbsp;&nbsp;&nbsp;&nbsp;
	   <a href="index.jsp">首页</a>
	 </center>
  </body>
</html>