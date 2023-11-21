<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" />
		<link rel="stylesheet" href="css/Site.css" />
		<link rel="stylesheet" href="css/zy.all.css" />
		<link rel="stylesheet" href="css/font-awesome.min.css" />
		<link rel="stylesheet" href="css/amazeui.min.css" />
		<link rel="stylesheet" href="css/admin.css" />
	</head>
	<body>
		<div class="dvcontent">

			<div>
				<!--tab start-->
				<div class="tabs">
					<div class="hd">
						<ul>
							<li class="on" style="box-sizing: initial;-webkit-box-sizing: initial;">查看用户</li>
							<li class="" style="box-sizing: initial;-webkit-box-sizing: initial;">添加用户</li>
						</ul>
					</div>
					<div class="bd">
						<ul style="display: block;padding: 20px;">
							<li>
								<!--分页显示角色信息 start-->
								<div id="dv1">
									<table class="table" id="tbRecord">
										<thead>
											<tr>
												<th>编号</th>
												<th>用户名 </th>
												<th>姓名</th>
												<th>性别</th>
												<th>修改</th>
												<th>删除</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1</td>
												<td>admin</td>
												<td>张三</td>
												<td>男</td>
												<td class="edit"><button onclick="btn_edit(1)"><i class="icon-edit bigger-120"></i>编辑</button></td>
												<td class="delete"><button onclick="btn_delete(1)"><i class="icon-trash bigger-120"></i>删除</button></td>
											</tr>
											<tr>
												<td>1</td>
												<td>admin</td>
												<td>张三</td>
												<td>男</td>
												<td class="edit"><button onclick="btn_edit(1)"><i class="icon-edit bigger-120"></i>编辑</button></td>
												<td class="delete"><button onclick="btn_delete(1)"><i class="icon-trash bigger-120"></i>删除</button></td>
											</tr>
											<tr>
												<td>1</td>
												<td>admin</td>
												<td>张三</td>
												<td>男</td>
												<td class="edit"><button onclick="btn_edit(1)"><i class="icon-edit bigger-120"></i>编辑</button></td>
												<td class="delete"><button onclick="btn_delete(1)"><i class="icon-trash bigger-120"></i>删除</button></td>
											</tr>
										<tr>
												<td>1</td>
												<td>admin</td>
												<td>张三</td>
												<td>男</td>
												<td class="edit"><button onclick="btn_edit(1)"><i class="icon-edit bigger-120"></i>编辑</button></td>
												<td class="delete"><button onclick="btn_delete(1)"><i class="icon-trash bigger-120"></i>删除</button></td>
											</tr>
											<tr>
												<td>1</td>
												<td>admin</td>
												<td>张三</td>
												<td>男</td>
												<td class="edit"><button onclick="btn_edit(1)"><i class="icon-edit bigger-120"></i>编辑</button></td>
												<td class="delete"><button onclick="btn_delete(1)"><i class="icon-trash bigger-120"></i>删除</button></td>
											</tr>
											<tr>
												<td>1</td>
												<td>admin</td>
												<td>张三</td>
												<td>男</td>
												<td class="edit"><button onclick="btn_edit(1)"><i class="icon-edit bigger-120"></i>编辑</button></td>
												<td class="delete"><button onclick="btn_delete(1)"><i class="icon-trash bigger-120"></i>删除</button></td>
											</tr>
											<tr>
												<td>1</td>
												<td>admin</td>
												<td>张三</td>
												<td>男</td>
												<td class="edit"><button onclick="btn_edit(1)"><i class="icon-edit bigger-120"></i>编辑</button></td>
												<td class="delete"><button onclick="btn_delete(1)"><i class="icon-trash bigger-120"></i>删除</button></td>
											</tr>
											<tr>
												<td>1</td>
												<td>admin</td>
												<td>张三</td>
												<td>男</td>
												<td class="edit"><button onclick="btn_edit(1)"><i class="icon-edit bigger-120"></i>编辑</button></td>
												<td class="delete"><button onclick="btn_delete(1)"><i class="icon-trash bigger-120"></i>删除</button></td>
											</tr>
											<tr>
												<td>1</td>
												<td>admin</td>
												<td>张三</td>
												<td>男</td>
												<td class="edit"><button onclick="btn_edit(1)"><i class="icon-edit bigger-120"></i>编辑</button></td>
												<td class="delete"><button onclick="btn_delete(1)"><i class="icon-trash bigger-120"></i>删除</button></td>
											</tr>
											<tr>
												<td>1</td>
												<td>admin</td>
												<td>张三</td>
												<td>男</td>
												<td class="edit"><button onclick="btn_edit(1)"><i class="icon-edit bigger-120"></i>编辑</button></td>
												<td class="delete"><button onclick="btn_delete(1)"><i class="icon-trash bigger-120"></i>删除</button></td>
											</tr>
											
											<tr>
												<td>1</td>
												<td>admin</td>
												<td>张三</td>
												<td>男</td>
												<td class="edit"><button onclick="btn_edit(1)"><i class="icon-edit bigger-120"></i>编辑</button></td>
												<td class="delete"><button onclick="btn_delete(1)"><i class="icon-trash bigger-120"></i>删除</button></td>
											</tr>
											
											
											<tr>
												<td>1</td>
												<td>admin</td>
												<td>张三</td>
												<td>男</td>
												<td class="edit"><button onclick="btn_edit(1)"><i class="icon-edit bigger-120"></i>编辑</button></td>
												<td class="delete"><button onclick="btn_delete(1)"><i class="icon-trash bigger-120"></i>删除</button></td>
											</tr>
										</tbody>
									
									</table>
								</div>
								<!--分页显示角色信息 end-->
							</li>
						</ul>
						<ul class="theme-popbod dform" style="display: none;">
							<div class="am-cf admin-main" style="padding-top: 0px;">
			<!-- content start -->
			
	<div class="am-cf admin-main" style="padding-top: 0px;">
		<!-- content start -->
		<div class="admin-content">
			<div class="admin-content-body">
				
				<div class="am-g">
					<div class="am-u-sm-12 am-u-md-4 am-u-md-push-8">
						
					</div>
					<div class="am-u-sm-12 am-u-md-8 am-u-md-pull-4"
						style="padding-top: 30px;">
						<form class="am-form am-form-horizontal"
							action="user/addUser1Submit.action" method="post">
						
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									姓名 / Name </label>
								<div class="am-u-sm-9">
									<input type="text" id="user-name" required
										placeholder="姓名 / Name" name="name">
								</div>
							</div>
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									用户名 / username </label>
								<div class="am-u-sm-9">
									<input type="text" id="user-name" required
										placeholder="用户名 / username" name="username">
								</div>
							</div>
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									性别 / sex </label>
								<div class="am-u-sm-9" style="line-height: 30px;">
									<input type="radio" id="man" name="sex" value="1"
										${user.sex==1? "checked=checked ":""}/> <label for="man">
										男 </label> &nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" id="woman"
										name="sex" value="0" ${user.sex==0? "checked=checked ":""} />
									<label for="woman"> 女 </label> <br /> <small>性别...</small>
								</div>
							</div>
							<div class="am-form-group">
								<label for="user-email" class="am-u-sm-3 am-form-label">
									联系电话 / phone </label>
								<div class="am-u-sm-9">
									<input type="tel" id="user-phone" required
										placeholder="请输入联系电话" name="phone" /> <small>联系电话...</small>
								</div>
							</div>
							<div class="am-form-group">
								<label for="user-email" class="am-u-sm-3 am-form-label">
									籍贯 / place </label>
								<div class="am-u-sm-9">
									<input type="text" id="user-email" required placeholder="请输入籍贯"
										name="place" /> <small>籍贯...</small>
								</div>
							</div>
							<div class="am-form-group">
								<label for="user-email" class="am-u-sm-3 am-form-label">
									电子邮件 / Email </label>
								<div class="am-u-sm-9">
									<input type="email" id="user-email" required
										placeholder="输入你的电子邮件 / Email" name="email" /> <small>邮箱你懂得...</small>
								</div>
							</div>
							
				
						
							<div class="am-form-group">
								<label for="user-intro" class="am-u-sm-3 am-form-label">
									备注/ Introg </label>
								<div class="am-u-sm-9">
									<textarea class="" rows="5" id="user-intro" name="remark"
										placeholder="输入备注"></textarea>
									<small>250字以内...</small>
								</div>
							</div>
							<div class="am-form-group">
								<div class="am-u-sm-9 am-u-sm-push-3">
									<input type="submit" class="am-btn am-btn-success" value="添加用户" />
									<input type="submit" class="am-btn am-btn-success" value="重置信息" />
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			
		</div>
		<!-- content end -->
	</div>
							<!--添加角色 end--
						</ul>
					</div>
				</div>
				<!--tab end-->

			</div>

			
			 <script src="js/jquery-1.7.2.min.js" type="text/javascript"></script>
              <script src="js/plugs/Jqueryplugs.js" type="text/javascript"></script>
              <script src="js/_layout.js"></script>
             <script src="js/plugs/jquery.SuperSlide.source.js"></script>
			<script>
				var num = 1;
				$(function() {

				 $(".tabs").slide({ trigger: "click" });

				});

	
				var btn_save = function() {
					var pid = $("#RawMaterialsTypePageId  option:selected").val();
					var name = $("#RawMaterialsTypeName").val();
					var desc = $("#RawMaterialsTypeDescription").val();
					var ramark = $("#Ramark").val();
					$.ajax({
						type: "post",
						url: "/RawMaterialsType/AddRawMaterialsType",
						data: { name: name, pid: pid, desc: desc, ramark: ramark },
						success: function(data) {
							if(data > 0) {
								$.jq_Alert({
									message: "添加成功",
									btnOktext: "确认",
									dialogModal: true,
									btnOkClick: function() {
										//$("#RawMaterialsTypeName").val("");
										//$("#RawMaterialsTypeDescription").val("");
										//$("#Ramark").val("");                           
										//page1();
										location.reload();

									}
								});
							}
						}
					});
					alert(t);
				}

				var btn_edit = function(id) {
					$.jq_Panel({
						url: "/RawMaterialsType/EditRawMaterialsType?id=" + id,
						title: "编辑分类",
						dialogModal: true,
						iframeWidth: 500,
						iframeHeight: 400
					});
				}
				var btn_delete = function(id) {
					$.jq_Confirm({
						message: "您确定要删除吗?",
						btnOkClick: function() {
							$.ajax({
								type: "post",
								url: "/RawMaterialsType/DeleteRawMaterialsType",
								data: { id: id },
								success: function(data) {
									if(data > 0) {
										$.jq_Alert({
											message: "删除成功",
											btnOkClick: function() {
												page1();
											}
										});
									}
								}
							});
						}
					});
				}
			</script>

		</div>
	</body>

</html>