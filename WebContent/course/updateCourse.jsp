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
								<li style="box-sizing: initial;-webkit-box-sizing: initial;" class="on">课程信息修改</li>
							</ul>
						</div>
						<div class="bd">
							<ul class="theme-popbod dform" style="display: none;">
									<!-- content start -->

									<div class="am-cf admin-main" style="padding-top: 0px;">
										<!-- content start -->
										<div class="admin-content">
											<div class="admin-content-body">

												<div class="am-g">
													<div class="am-u-sm-12 am-u-md-4 am-u-md-push-8">

													</div>
													<div class="am-u-sm-12 am-u-md-8 am-u-md-pull-4" style="padding-top: 30px;">
														<s:set name="course" value="#request.courseInfo"></s:set>
														<form class="am-form am-form-horizontal" action="updateCourse.action" method="post" enctype="multipart/form-data" >
															<div class="am-form-group">
																<label for="user-name" class="am-u-sm-3 am-form-label">
									课程号</label>
																<div class="am-u-sm-9">
																	<input type="text" name="course.courseId" value="<s:property value="#course.courseId"/>" readonly/>
																</div>
															</div>
															<div class="am-form-group">
																<label for="user-name" class="am-u-sm-3 am-form-label">
															
									课程名</label>
																<div class="am-u-sm-9">
																	<input type="text" name="course.courseName" value="<s:property value="#course.courseName"/>"/>
																</div>
															</div>
															<div class="am-form-group">
																<label for="user-name" class="am-u-sm-3 am-form-label">
															
									开课学期</label>
																<div class="am-u-sm-9">
																	<input type="text" name="course.courseDate" value="<s:property value="#course.courseDate"/>"/>
																</div>
															</div>
															<div class="am-form-group">
																<label for="user-name" class="am-u-sm-3 am-form-label">
															
									学分</label>
																<div class="am-u-sm-9">
																	<input type="text" name="course.credit" value="<s:property value="#course.credit"/>"/>
																</div>
															</div>
															<div class="am-form-group">
																<label for="user-name" class="am-u-sm-3 am-form-label">
															
									学时</label>
																<div class="am-u-sm-9">
																	<input type="text" name="course.student" value="<s:property value="#course.student"/>"/>
																</div>
															</div>
															
															<div class="am-form-group">
																<div class="am-u-sm-9 am-u-sm-push-3">
																	<input type="submit" class="am-btn am-btn-success" value="添加" />
																	<input type="button" value="返回" onclick="javascript:history.back();"/>
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
					<!-- 这里用JavaScript来实现根据该学生的专业ID来显示专业名 -->
					 <script type="text/javascript">
		  				document.getElementById("student.major.id").value= <s:property value="#student.major.id"/>
		  			</script>
					
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