<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="css/Site.css" />
		<link rel="stylesheet" href="css/zy.all.css" />
		<link rel="stylesheet" href="css/font-awesome.min.css" />
		<link rel="stylesheet" href="css/amazeui.min.css" />
		<link rel="stylesheet" href="css/admin.css" />
	</head>

	<body>

		<div class="dvcontent">

				<!--tab start-->
				<div class="tabs">
					<div class="hd">
						<ul style="">
							<li class="" style="box-sizing: initial;-webkit-box-sizing: initial;">修改密码</li>
						</ul>
						</div>

						<div class="am-cf admin-main" style="padding-top: 0px;">
							<!-- content start -->
							<div class="admin-content">
								<div class="admin-content-body">

									<div class="am-g">
										<div class="am-u-sm-12 am-u-md-4 am-u-md-push-8">

										</div>
										<div class="am-u-sm-12 am-u-md-8 am-u-md-pull-4" style="padding-top: 30px;">
											<form class="am-form am-form-horizontal" action="updatePwd.action" method="post">

												<div class="am-form-group">
													<label for="user-name" class="am-u-sm-3 am-form-label">用户名</label>
													<div class="am-u-sm-9">
														<input type="text" required name="username">
													</div>
												</div>

												<div class="am-form-group">
													<label for="user-name" class="am-u-sm-3 am-form-label">原密码</label>
													<div class="am-u-sm-9">
														<input type="password"   required name="oldPassword ">
													</div>
												</div>
												<div class="am-form-group ">
													<label for="user-name " class="am-u-sm-3 am-form-label ">新密码</label>
													<div class="am-u-sm-9 ">
														<input type="password"  required name="newPassword1 ">
													</div>
												</div>
												<div class="am-form-group ">
													<label for="user-name " class="am-u-sm-3 am-form-label ">重复</label>
													<div class="am-u-sm-9 ">
														<input type="password"  required name="newPassword2 ">
													</div>
												</div>
												
												<div class="am-form-group ">
													<div class="am-u-sm-9 am-u-sm-push-3 ">
														<input type="submit" class="am-btn am-btn-success " value="修改 " />
														<input type="reset" class="am-btn am-btn-success " value="重置 " />
													</div>
												</div>
							
									</form>
						
					</div>
					
				</div>
			<footer class="admin-content-footer ">
			<hr>
			<p class="am-padding-left "></p>
			</footer>
		</div>
		<!-- content end -->
	</div>
	
	
			</div>	
	</div>	
	</div>
	</div>						<!-- end-->
	</body>
</html>