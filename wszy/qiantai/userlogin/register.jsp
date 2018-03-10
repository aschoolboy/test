<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 

<%@ page import="java.sql.*"%>
<jsp:useBean id="db" class="com.dao.DB"></jsp:useBean>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
<script type="text/javascript">
	function check2()
			{      
				 if(document.ThisForm1.userid.value=="")
				 {
				 	alert("请输入学号");
					return false;
				 }
				 if(document.ThisForm1.username.value=="")
				 {
				 	alert("请输入姓名");
					return false;
				 }
				 if(document.ThisForm1.password1.value=="")
				 {
				 	alert("请输入密码");
					return false;
				 }
				 if(document.ThisForm1.password2.value=="")
				 {
				 	alert("请再次输入密码");
					return false;
				 }
				 if(document.ThisForm1.password1.value==document.ThisForm1.password2.value)
				 {
				 	document.getElementById("indicator").style.display="block";
				 
				 	loginService.register(document.ThisForm1.userid.value,document.ThisForm1.username.value,document.ThisForm1.password1.value,document.ThisForm1.usertype.value,callback2);
				 }else
				 {
				 	alert("两次密码输入不一致");
					return false;
				 }
				 
				 
			}
			
			function callback2(data)
			{
			    document.getElementById("indicator2").style.display="none";
			    if(data=="no")
			    {
			        alert("用户已存在");
			    }
			    if(data=="yes")
			    {   alert("注册成功");
			        window.location.reload();
			    }
			    
			}
</script>

  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <LINK href="<%=path %>/css/css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="<%=path %>/js/popup.js"></script>
  </head>
  
  <BODY text=#000000  leftMargin=0 topMargin=0>
	<form name="ThisForm1" action="" method="post">
  <table width="291" border="0">
  <tr>
    <td width="113" align="center">学&nbsp;&nbsp;&nbsp;&nbsp;号:</td>
    <td width="168"><input class="input" title="学号不能为空" size="20" name="userid" type="text" /></td>
  </tr>
  <tr>
    <td width="113" align="center">姓&nbsp;&nbsp;&nbsp;&nbsp;名:</td>
    <td><input class="input" title="用户名不能为空" size="20" name="username" type="text" /></td>
  </tr>
  <tr>
    <td width="113" align="center">密&nbsp;&nbsp;&nbsp;&nbsp;码:</td>
    <td><input class="input" title="密码不能为空" size="20" name="password1" type="password" /></td>
  </tr>
    <tr>
    <td width="113" align="center">确认密码:</td>
    <td><input class="input" title="确认密码不能为空" size="20" name="password2" type="password" /></td>
  </tr> 
    <tr>
    <td width="113" align="center">身&nbsp;&nbsp;&nbsp;&nbsp;份:</td>
    <td><select name="usertype" style="width: 70px">
                               <option value="1">老师</option>
                               <option value="2">学生</option>
                           </select></td>
  </tr>	
</table>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="注册" onclick="check2()" style="border:#ccc 1px solid; background-color:#FFFFFF; font-size:12px; padding-top:3px;" /> 
<img id="indicator2" src="<%=path %>/img/loading.gif" style="display:none"/>
</form>
  </BODY>
</html>
