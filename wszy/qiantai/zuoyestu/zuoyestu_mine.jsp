<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <LINK href="<%=path %>/css/css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="<%=path %>/js/popup.js"></script>
    <script type="text/javascript">
		    function down1(fujianPath,fujianYuashiMing)
            {
               var url="<%=path %>/updown/updown.jsp?fujianPath="+fujianPath+"&fujianYuashiMing="+fujianYuashiMing;
		       url=encodeURI(url); 
               url=encodeURI(url); 
               window.open(url,"_self");
            }
            
   		   function check11()
           {
           	   window.location.href = "<%=path %>/banke?type=ziliao_all"
               
           }
            
            
            
    </script>
  </head>
  
  <BODY text=#000000  leftMargin=0 topMargin=0>
	<div class="wrap"> 
		<TABLE  cellSpacing=0 cellPadding=0 width="100%" align=center border=0  background="<%=path %>/img/reservation01.gif">
				<TR height="90">
					<TD align="center">
					    <jsp:include flush="true" page="/qiantai/inc/incTop1.jsp"></jsp:include> 
					</TD>
				</TR>
		</TABLE>
		
		
		<TABLE id=guide cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
				<TR>
					<TD align="left">
						<jsp:include flush="true" page="/qiantai/inc/incTop2.jsp"></jsp:include>
					</TD>
				</TR>
		</TABLE>

        <TABLE class=MainTable style="MARGIN-TOP: 0px" cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
				<TR>
				    <TD class=Side vAlign=top align=right width="25%">
						<jsp:include flush="true" page="/qiantai/inc/incLeft.jsp"></jsp:include>
					</TD>
					<td width="1">&nbsp;</td>
					<TD class=Side vAlign=top align=right width="75%">
						<TABLE class=dragTable cellSpacing=0 cellPadding=0 width="100%" border=0>
								<TR>
									<TD class=head>
										<SPAN class=TAG>作业管理</SPAN>
									</TD>
								</TR>
								<TR align="left">
									<TD height="5"></TD>
										<tr align='center'>
									    <td width="85%" bgcolor="#FFFFFF" align="left">
									       <input type="button" value="提交" onclick="check11()"/>&nbsp; 
									       <input type="reset" value="重置"/>&nbsp;
									    </td>
									</tr>
								</TR>
								<TR align="left" height="500">

									<TD>
									    <table width="99%" border="0" cellpadding="5" cellspacing="5" bgcolor="#FFFFFF" align="center" style="margin-top:8px">
								              <tr align="center" bgcolor="#FAFAF1" height="22">
								                  <td>作业名称</td>
								                  <td>作业附件</td>
								                  <td>提交时间</td>
								                  <td>老师评阅信息</td>
								                  <td>评阅时间</td>
								              </tr>
											  <c:forEach items="${requestScope.zuoyestuList}" var="zuoyestu">
											  <tr align='center' bgcolor="#FFFFFF" height="22">
												  <td>${zuoyestu.mingcheng}</td>
												  <td>
												      <a href="#" onclick="down1('${zuoyestu.fujian}','${zuoyestu.fujianYuanshiming}')" style="font-size: 11px;color: red">
												         ${zuoyestu.fujianYuanshiming}
												      </a>
                                                  </td>
												  <td>${zuoyestu.shijian_shangchuan}</td>
												  <td>${zuoyestu.piyueneirong}</td>
												  <td>${zuoyestu.shijian_pinyue}</td>
											  </tr>
											  </c:forEach>
				        			    </table>

									</TD>
								</TR>
								<TR align="left">
									<TD height="5"></TD>
								</TR>
						</TABLE>
					</TD>
				</TR>
		</TABLE>
		<jsp:include flush="true" page="/qiantai/inc/incFoot.jsp"></jsp:include>
    </div>
  </BODY>
</html>
