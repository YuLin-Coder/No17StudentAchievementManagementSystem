<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"  %>
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
		<style>

		</style>

		<body>
			<div class="dvcontent">

				<div>
					<!--tab start-->
					<div class="tabs">
						<div class="hd">
							<ul style="">
								<li class="" style="box-sizing: initial;-webkit-box-sizing: initial;">学生成绩查询</li>
							</ul>
						</div>
						<div class="bd">
							<ul style="display: block;padding: 20px;">
								<li>
									<h3>该学生成绩如下：</h3>
									<!--分页显示角色信息 start-->
									<div id="dv1">
										<table class="table" id="tbRecord">
											<thead>
												<tr>
													<th>课程名</th>
													<th>成绩</th>
													<th>学分</th>
												</tr>
											</thead>
											<tbody>
												<s:iterator value="#request.list" id="score">
											    	<tr>
											    		<td><s:property value="#score[2]"/> </td>
											    		<td><s:property value="#score[3]"/> </td>
											    		<td><s:property value="#score[4]"/> </td>
											    	</tr>
											    </s:iterator>
												
											</tbody>

										</table>
									</div>
									<!--分页显示角色信息 end-->
								</li>
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

							$(".tabs").slide({
								trigger: "click"
							});

						});

						var btn_save = function() {
							var pid = $("#RawMaterialsTypePageId  option:selected").val();
							var name = $("#RawMaterialsTypeName").val();
							var desc = $("#RawMaterialsTypeDescription").val();
							var ramark = $("#Ramark").val();
							$.ajax({
								type: "post",
								url: "/RawMaterialsType/AddRawMaterialsType",
								data: {
									name: name,
									pid: pid,
									desc: desc,
									ramark: ramark
								},
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
										data: {
											id: id
										},
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