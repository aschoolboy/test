<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%@ page import="com.service.loginService" %>
<jsp:useBean id="db" class="com.dao.DB" scope="page"></jsp:useBean>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />

		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		
        <script language="javascript">
           function teaDel(id)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/tea?type=teaDel&id="+id;
               }
           }
           
           function bankeAdd()
           {
                 var url="<%=path %>/qiantai/zuoye/jiaoshibanke.jsp";
				 window.location.href=url;
           }
           function p()
           {
              window.print();
           }
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/img/allbg.gif'>
	<%
	Ttea tea =new Ttea();
	String BK_OWNER = tea.getBianhao();
	String sql = "select * from t_banke where bk_Owner = " 
	%>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="33" background="<%=path %>/img/tbg.gif">&nbsp;老师信息管理&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="20%">班课编号</td>
					<td width="20%">编号名称</td>
					<td width="20%">创建人</td>
					<td width="20%">创建时间</td>
					<td width="20%">操作</td>
		        </tr>	
				<c:forEach items="${requestScope.teaList}" var="tea">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
						${tea.bianhao}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						${tea.name}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						${tea.sex}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						${tea.age}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						${tea.loginpw}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<input type="button" value="删除" onclick="teaDel(${tea.id})"/>
					</td>
				</tr>
				</c:forEach>
			</table>
			
			<table width='98%'  border='0'style="margin-top:8px;margin-left: 5px;">
			  <tr>
			    <td>
			      <input type="button" value="添加" style="width: 80px;" onclick="bankeAdd()" />
			      <input type="button" value="打印" style="width: 80px;" onclick="p()" />
			    </td>
			  </tr>
		    </table>
	</body>
</html>
