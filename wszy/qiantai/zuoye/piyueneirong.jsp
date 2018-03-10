<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
    <script type="text/javascript" src="<%=path %>/js/popup.js"></script>
    <script type="text/javascript">
           function submit()
           {
            	/*var obj_fenzhi = $('form1 input[name="分值"]');  
            	var val_fenzhi = $('form1 input[name="分值"]:checked ').val();*/   
            	form1.submit();
            	
            	
           }
           
    </script>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'piyueneirong.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <br>
    <form id="form1" name="form1" method="post" action="<%=path %>/zuoye?type=piyue">
  <p>
    分值：<label>
      <input type="radio" name="分值" value="1" id="分值_0" />
      1</label>
    
    <label>
      <input type="radio" name="分值" value="2" id="分值_1" />
      2</label>
    
    <label>
      <input type="radio" name="分值" value="3" id="分值_2" />
      3</label>
    
    <label>
      <input type="radio" name="分值" value="4" id="分值_3" />
      4</label>
    
    <label>
      <input type="radio" name="分值" value="5" id="分值_4" />
      5</label>
   
    <label>
      <input type="radio" name="分值" value="6" id="分值_5" />
      6</label>
   
    <label>
      <input type="radio" name="分值" value="7" id="分值_6" />
      7</label>
    
    <label>
      <input type="radio" name="分值" value="8" id="分值_7" />
      8</label>
    
    <label>
      <input type="radio" name="分值" value="9" id="分值_8" />
      9</label>
    
    <label>
      <input type="radio" name="分值" value="10" id="分值_9" />
      10</label>
        <br /> 
    评语： 
    <br />
    <input name="piyueneirong" type="text" height="100px" width="420px" />
    <input type="hidden" name="id" value="<%=request.getParameter("id")%>"/>
  </p>
  </p><input name="" value="提交 " type="submit" />

<!--<a href="#" onclick="submit()" >提交</a></form>-->
  </body>
</html>
