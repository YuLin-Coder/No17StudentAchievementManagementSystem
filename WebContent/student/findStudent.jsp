<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
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
								<li style="box-sizing: initial;-webkit-box-sizing: initial;" class="on">学生信息查看</li>
							</ul>
						</div>
						<div class="bd">
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
													<div class="am-u-sm-12 am-u-md-8 am-u-md-pull-4" style="padding-top: 30px;">
														<h3>该学生信息如下：</h3>
  														<s:set name="student" value="#request.student"></s:set>
														<form class="am-form am-form-horizontal" action="addStudent.action" method="post" enctype="multipart/form-data" validate="true">
															<div class="am-form-group">
																<label for="student.studentId" class="am-u-sm-3 am-form-label">
									学号</label>
																<div class="am-u-sm-9">
																	<s:property value="#student.studentId"/>
																</div>
															</div>
															<div class="am-form-group">
																<label for="user-name" class="am-u-sm-3 am-form-label">
															
									姓名</label>
																<div class="am-u-sm-9">
																	<s:property value="#student.name"/>
																</div>
															</div>
															<div class="am-form-group">
																<label for="user-name" class="am-u-sm-3 am-form-label">
															
									性别</label>
																<div class="am-u-sm-9">
																	<s:if test="#student.sex==1">
																			男
																	</s:if>
																	<s:else>
																		女
																	</s:else>	
																</div>
															</div>
															<div class="am-form-group">
																<label for="user-name" class="am-u-sm-3 am-form-label">
															
									专业</label>
																<div class="am-u-sm-9">
																	<s:property value="#student.major.majorName"/>
																</div>
															</div>
															<div class="am-form-group">
																<label for="user-name" class="am-u-sm-3 am-form-label">
															
									出生时间</label>
																<div class="am-u-sm-9">
																	<s:date name="#student.birthDate" format="yyyy-MM-dd"/>
																</div>
															</div>
															<div class="am-form-group">
																<label for="user-name" class="am-u-sm-3 am-form-label">
															
									总学分</label>
																<div class="am-u-sm-9">
																	<s:property value="#student.totalCredits"/>
																</div>
															</div>
															
															<div class="am-form-group">
																<label for="user-intro" class="am-u-sm-3 am-form-label">
									备注</label>
																<div class="am-u-sm-9">
																	<s:property value="#student.other"/>
																</div>
															</div>
															<div class="am-form-group">
																<div class="am-u-sm-9 am-u-sm-push-3">
																	<input type="button" value="返回"  class="am-btn am-btn-success"onclick="javascript:history.back();"/>
																</div>
															</div>
														</form>
													</div>
												</div>
											</div>

										</div>
										<!-- content end -->
									</div>
									<!-- end-->
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