<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="java.util.*,com.CartBean" %>
<html>
  <head>
    <title>ע��</title>
    <link href="css/generalstyle.css" type="text/css" rel="stylesheet">
    <script language="javascript" src="script/trim.js"></script>
    <script language="javascript">
      function checkUid()
      {
      	var flag = false;
      	var uname = document.regform.uname.value;
      	if(uname.trim()=="")
      	{
      		document.all.uinfo.innerHTML =
      				"<font color='red' size='2px'>����Ϊ���������������û�����</font>";
      	}
      	else
      	{
      		flag = true;
			document.all.uinfo.innerHTML =
					"<font size='2px'>�û���������СдӢ����ĸ�����ġ�������ɡ�</font>";
      	}
      	return flag;
      }
      
      function checkFirPwd()
      {
      	var flag = false;
      	var fpwd = document.regform.fpwd.value;
      	if(fpwd.trim=="")
      	{
      		document.all.pfinfo.innerHTML = 
      				"<font color='red' size='2px'>����Ϊ�����������������롣</font>";
      	}
      	else if(fpwd.length<6||fpwd.length>20||!fpwd.match("[a-zA-Z0-9]+"))
      	{
      		document.all.pfinfo.innerHTML = 
      				"<font color='red' size='2px'>�����õ�������������������������롣</font>";
      	}
      	else
      	{
      		flag = true;
     		document.all.pfinfo.innerHTML = 
      				"<font size='2px'>������������ɴ�СдӢ����ĸ��������ɣ�����6��20λ��</font>";      		
      	}
      	return flag;
      }
      
      function checkSecPwd()
      {
      	var flag = false;
      	var fpwd = document.regform.fpwd.value;
      	var spwd = document.regform.spwd.value;
      	if(fpwd.trim()=="")
      	{
       		document.all.psinfo.innerHTML = 
      				"<font color='red' size='2px'>����Ϊ��������ٴ������������롣</font>";     		
      	}
      	else if(fpwd.trim()!=spwd.trim())
      	{
      		document.all.psinfo.innerHTML = 
     				"<font color='red' size='2px'>������������Ĳ�һ�£����������롣</font>";      		
      	}
      	else
      	{
      		flag = true;
      		document.all.psinfo.innerHTML = "";
      	}
      	return flag;
      }
      
      function checkEmail()
      {
      	var flag = false;
      	var email = document.regform.email.value;
      	if(email.trim()=="")
      	{//������Ϊ��ʱ
      		document.all.einfo.innerHTML = 
      				"<font color='red' size='2px'>����Ϊ���������������Email��ַ��</font>";
      	}
      	else if(!isEmail(email)){
      		   		alert("����д��Ч��E-mail��ַ");    		   		
      	}else{
      	flag = true;
      		  document.all.einfo.innerHTML = 
      				"<font size='2'>����д��Ч��E-mail��ַ��</font>"; 
      				}
      	return flag;
      }
      //��������ʽ���ж�E-mail��ʽ�Ƿ���ȷ
      function isEmail(email){
             var reg =new RegExp("\\b(^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@([A-Za-z0-9-])+(\\.[A-Za-z0-9-]+)*((\\.[A-Za-z0-9]{2,})|(\\.[A-Za-z0-9]{2,}\\.[A-Za-z0-9]{2,}))$)\\b"); 
              return reg.test(email);
                   }
      
      function mfSub()
      {
      	var flag1 = checkUid();
      	var flag2 = checkFirPwd();
      	var flag3 = checkSecPwd();
      	var flag4 = checkEmail();
      	if(flag1&&flag2&&flag3&&flag4)
      	{
      		document.regform.submit();
      	}
      }
    </script>
  </head>
  <body>
    <jsp:useBean id="mycart" class="com.CartBean" scope="session"/>
      <center>
    <table class="header" background="img/other/header.jpg" width="935" height="100">
    <tr>
    <td class="logo"><img src="img/other/logo.gif"/></td>
    </tr>
    <tr height="40" colspan="2">
        <td></td>
          </tr>
  </table>

      <table width="100%">
		  <tr height="30" colspan="2">
        <td></td>
          </tr>
		  <tr align="center">
		    <td>
		      <table border="0">
		      <form action="CartServlet" method="post" name="regform">
		        <tr height="50">
		          <td>����д����û���:</td>
		          <td><input type="text" name="uname" size="20" onblur="checkUid()"/></td>
		          <td id="uinfo">
		            <font size="2px">�û���������СдӢ����ĸ�����ġ�������ɡ�</font>
		          </td>
		        </tr>
		        <tr height="50">
		          <td>�����������:</td>
		          <td><input type="password" name="fpwd" size="20" onblur="checkFirPwd()"/></td>
		          <td id="pfinfo">
		            <font size="2px">������������ɴ�СдӢ����ĸ��������ɣ�����6��20λ��</font>
		          </td>
		        </tr>
		        <tr height="50">
		          <td>���ٴ������������:</td>
		          <td><input type="password" name="spwd" size="20" onblur="checkSecPwd()"/></td>
		          <td id="psinfo"></td>
		        </tr>
		        <tr height="50">
		          <td>����д���E-mail��ַ:</td>
		          <td><input type="text" name="email" size="20" onblur="checkEmail()"/></td>
		          <td id="einfo">
		            <font size="2">����д��Ч��E-mail��ַ��</font>
		          </td>
		        </tr>
		        <tr align="center">
		          <td colspan="3">ע:���ϸ���Ϊ������,��������д��</td>
		        </tr>
		        <tr align="center">
		          <td colspan="2" align="right">
		            <input type="button" name="sub" value="ע��" onclick="mfSub()"/>
		            <input type="hidden" name="action" value="register"/>
		          </td>
		          <td><a href="javascript:history.back()">�������ﷵ��</a></td>
		        </tr>
		        </form>
		      </table>
		    </td>
		  </tr>
      </table>
    </center>
  </body>
</html>