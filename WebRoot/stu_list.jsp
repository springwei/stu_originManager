<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.som.entity.Student"%>
<%
	String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>学生籍贯管理系统</title>
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
<style type="text/css">
body {
	padding-bottom: 40px;
}

.sidebar-nav {
	padding: 9px 0;
}

@media ( max-width : 980px) { /* Enable use of floated navbar text */
	.navbar-text.pull-right {
		float: none;
		padding-left: 5px;
		padding-right: 5px;
	}
}

.table th, .table td { 
text-align: center; 
height:20px;

}
</style>
<script>
	$(function() {

		$('#addnew').click(function() {

			window.location.href = "addStu.jsp";
		});
	});
	
	function del(id){
		if(confirm("确定删除吗？")){
			window.location.href = "stu/deleteStuById.action?id="+id;
			alert("删除成功！");
		}
	}
	
	function edit(id){
		window.location.href = "stu/findStuById1.action?id="+id;

	}

   function check1(form){
		with(form){
			if(id.value == ""){
				alert("学号不能为空！");
				return false;
			}
			return true;
		}
	}
	
	
   function check2(form){
		with(form){
			if(name.value == ""){
				alert("姓名不能为空！");
				return false;
			}
			return true;
		}
	}
	
</script>
</head>

<body>
	<h3 align="center">学生籍贯管理系统</h3>
	<div class="container">
		<div style=float:left;width:30%>
			<form class="form-inline definewidth m20"
				action="stu/findStuById.action" method="post" onsubmit="return check1(this)">
				学号： <input type="text" name="id" id="id" class="abc input-default">
				<button type="submit" class="btn btn-primary">查询</button>
			</form>
		</div>
		<div style=float:left;width:30%>
			<form class="form-inline definewidth m20"
				action="stu/findStuByName.action" method="post" onsubmit="return check2(this)">
				姓名： <input type="text" name="name" id="name"
					class="abc input-default">
				<button type="submit" class="btn btn-primary">查询</button>
			</form>
		</div>
		<div style=float:left;width:40%>
			<form class="form-inline definewidth m20"
				action="stu/findStuByOrigin.action" method="post" >
				籍贯： <select name=origin>
					<option value="北京市">北京市</option>
					<option value="浙江省">浙江省</option>
					<option value="天津市">天津市</option>
					<option value="安徽省">安徽省</option>
					<option value="上海市">上海市</option>
					<option value="福建省">福建省</option>
					<option value="重庆市">重庆市</option>
					<option value="江西省">江西省</option>
					<option value="山东省">山东省</option>
					<option value="河南省">河南省</option>
					<option value="湖北省">湖北省</option>
					<option value="湖南省">湖南省</option>
					<option value="广东省">广东省</option>
					<option value="海南省">海南省</option>
					<option value="山西省">山西省</option>
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
				<button type="submit" class="btn btn-primary">查询</button>
				&nbsp;&nbsp;
				<button type="button" class="btn btn-success" id="addnew">添加学生</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="stu/outExcell.action" class="btn btn-success" >导出excell表格</a>
			</form>
		</div>
	
	</div>
	<table class="table table-bordered table-hover definewidth m10">
		<thead>
			<tr>
				<th>学号</th>
				<th>姓名</th>
				<th>籍贯</th>
				<th>管理操作</th>
			</tr>
		</thead>
		<%
			List<Student> stus = (List<Student>) request.getAttribute("stus");
			if (stus == null || stus.size() < 1) {
				out.print("没有数据！");
			} else {

				for (Student s : stus) {
		%>
		<tr>
			<td><%=s.getId()%></td>
			<td><%=s.getName()%></td>
			<td><%=s.getOrigin()%></td>
			<td><button type="button"  class="btn btn-success btn-sm" onclick="edit(<%=s.getId()%>)">修改</button>
				<button type="button" class="btn btn-warning btn-sm" id="del" onclick="del(<%=s.getId()%>)">删除</button>
			</td>
		</tr>
		<%
			}
			}
		%>
	</table>
</body>
</html>
