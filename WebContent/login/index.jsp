<%@ page language="java" contentType="text/html;"
    pageEncoding="utf-8"%>
<%@	taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>学生成绩管理系统</title>
<link rel="shortcut icon" href="favicon.ico">
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/style.css">
	<script src="js/modernizr-2.6.2.min.js"></script>
</head>
<body class="style-2">

		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
					<ul class="menu">
					</ul>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<form form action="login.action" method="post" validate="true" class="fh5co-form animate-box" data-animate-effect="fadeInLeft">
						<h2>登录</h2>
						<div class="form-group">
							<label for="login.password" class="sr-only">用户名</label>
							<input type="text" class="form-control" name="login.username" id="login.username" placeholder="用户名" autocomplete="off">
						</div>
						<div class="form-group">
							<label for="login.password" class="sr-only">密码</label>
							<input type="password" class="form-control" name="login.password" id="login.password" placeholder="密码" autocomplete="off">
						</div>
						<!-- <div class="form-group">
							<p>还未注册?<a href="http://localhost:8080/system/login/register.jsp">注册</a> </p>
						</div> -->
						<div class="form-group">
							<input type="submit" value="确定" class="btn btn-primary">
							<input type="reset" value="清空" class="btn btn-primary">
						</div>
					</form>
					
				</div>
			</div>
			<div class="row" style="padding-top: 60px; clear: both;">
				<div class="col-md-12 text-center"><p><small>&copy;版权所有 <a ></a> -软件设计课设</small></p></div>
			</div>
		</div>
	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Placeholder -->
	<script src="js/jquery.placeholder.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Main JS -->
	<script src="js/main.js"></script>

	</body>
</html>