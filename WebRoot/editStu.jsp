<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>修改学生</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"></link>
<link rel="stylesheet" href="css/bootstrap-responsive.min.css"
	type="text/css"></link>
<link rel="stylesheet" href="css/style.css" type="text/css"></link>
<script type="text/javascript" src="js/jquery-2.1.1.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script>
	$(function() {

		$('#backid').click(function() {

			window.location.href = "stu/findAllStus.action";
		});
	});

</script>
</head>

<body>
	<div class="container">
	<h3 align="center">学生籍贯管理系统</h3>
		<form action="stu/updateStu.action" method="post">
			<table class="table table-bordered table-hover definewidth m10">
				<tr>
					<td class="tableleft">学号</td>
					<td><input type="text" name="id" value="${stu.id}" readonly="readonly"/></td>
				</tr>
				<tr>
					<td class="tableleft">姓名</td>
					<td><input type="text" name="name" value="${stu.name}" /></td>
				</tr>
				<tr>
					<td class="tableleft">籍贯</td>
					<td><select name="origin" value="${stu.origin }">
							<option value="北京市">北京市</option>
							<option value="浙江省">浙江省</option>
							<option value="天津市">天津市</option>
							<option value="安徽省">安徽省</option>
							<option value="上海市">上海市</option>
							<option value="福建省">福建省</option>
							<option value="重庆市">重庆市</option>
							<option value="江西省">江西省</option>
							<option value="山东省">山东省</option>
							<option value="河南省" <c:if test="${'河南省' eq stu.origin}">selected</c:if>>河南省</option>
							<option value="湖北省">湖北省</option>
							<option value="湖南省">湖南省</option>
							<option value="广东省">广东省</option>
							<option value="海南省">海南省</option>
							<option value="山西省" <c:if test="${'山西省' eq stu.origin}">selected</c:if>>山西省</option>
							<option value="青海省">青海省</option>
							<option value="江苏省">江苏省</option>
							<option value="辽宁省">辽宁省</option>
							<option value="吉林省">吉林省</option>
							<option value="台湾省">台湾省</option>
							<option value="河北省">河北省</option>
							<option value="贵州省">贵州省</option>
							<option value="四川省">四川省</option>
							<option value="云南省">云南省</option>
							<option value="陕西省">陕西省</option>
							<option value="甘肃省">甘肃省</option>
							<option value="黑龙江省">黑龙江省</option>
					</select>
					</td>
				</tr>
				<tr>
					<td class="tableleft"></td>
					<td>
						<button type="submit" class="btn btn-primary" type="button">保存</button>&nbsp;&nbsp;
						<button type="button" class="btn btn-success" name="backid" id="backid">返回列表</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>
