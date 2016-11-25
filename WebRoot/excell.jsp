<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="application/msexcel; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!-- 
    以上这行设定本网页为excel格式的网页 -->
<%
   response.setHeader("Content-disposition","attachment; filename=stu.xls");
   //以上这行设定传送到前端浏览器时的档名为test1.xls
   //就是靠这一行，让前端浏览器以为接收到一个excel档 
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'index.jsp' starting page</title>
    <meta http-equiv="Content-Type" content="application/msexcel;charset=utf-8"><!-- 防止中文乱码 -->
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  <body>
     <table border="1" width="100%">
    <tr>
      <td>学号</td><td>姓名</td><td>籍贯</td>
    </tr>
    <c:forEach items="${stus}" var="s">
    <tr>
      <td><c:out value="${s.id}"/></td> <td><c:out value="${s.name}"/></td> <td><c:out value="${s.origin}"/></td>
    </tr>
   </c:forEach>
  </table>
  </body>
</html>
