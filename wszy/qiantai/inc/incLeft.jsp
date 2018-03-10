<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
      <script type="text/javascript">
         
      </script>
  </head>
  
  <body>
        <TABLE width="100%" height="160" border=0 cellPadding=0 cellSpacing=0 class=dragTable>
				<TR>
					<TD class=head>
						<SPAN class=TAG>用户登录</SPAN>
					</TD>
				</TR>
				<TR>
					<TD class=middle align=left>
					    <jsp:include flush="true" page="/qiantai/userlogin/userlogin.jsp"></jsp:include> 
					</TD>
				</TR>
		</TABLE>
		<TABLE width="100%" height="160" border=0 cellPadding=0 cellSpacing=0 class=dragTable>
				<TR>
					<TD class=head>
						<SPAN class=TAG>用户注册</SPAN>
					</TD>
				</TR>
				<TR>
					<TD class=middle align=left>
					    <jsp:include flush="true" page="/qiantai/userlogin/register.jsp"></jsp:include> 
					</TD>
				</TR>
		</TABLE>
		<TABLE width="100%" height="160" border=0 cellPadding=0 cellSpacing=0 class=dragTable>
				<TR>
					<TD class=head>
						<SPAN class=TAG>日历表</SPAN>
					</TD>
				</TR>
				<TR>
					<TD class=middle align=left>
					    <jsp:include flush="true" page="/qiantai/rili/rili.jsp"></jsp:include> 
					</TD>
				</TR>
		</TABLE> 
  </body>
</html>
