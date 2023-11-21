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
								<li class="" style="box-sizing: initial;-webkit-box-sizing: initial;">学生成绩查询</li>
								<li style="box-sizing: initial;-webkit-box-sizing: initial;" class="on">成绩信息录入</li>
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
													<th>学号</th>
													<th>姓名</th>
													<th>课程名</th>
													<th>成绩</th>
													<th>学分</th>
													<th>操作</th>
												</tr>
											</thead>
											<tbody>
												<s:iterator value="#request.list" id="score">
									    			<tr>
									    				<td><a href="findScore.action?score.id.studentId=<s:property value="#score[0]"/>"><s:property value="#score[0]"/></a> </td>
									    				<td><s:property value="#score[1]"/></td>
									    				<td><s:property value="#score[2]"/></td>
									    				<td><s:property value="#score[3]"/></td>
									    				<td><s:property value="#score[4]"/></td>
														<td class="delete"><a href="deleteOneScore.action?score.id.studentId=<s:property value="#score[0]"/>&score.id.courseId=<s:property value="#score[5]"/>" onClick="if(!confirm('确定删除该信息吗？'))return false;else return true;"><i class="icon-trash bigger-120"></i>删除</a></td>
									    			</tr>
									    			</s:iterator>
									    			<tr align="left">
														<s:set name="page" value="#request.page"></s:set>
										  				<s:if test="#page.hasFirst">
														<s:a href="scoreInfo.action?pageNow=1">首页</s:a>
														</s:if>
														<s:if test="#page.hasPre">
															<a href="scoreInfo.action?pageNow=<s:property value="#page.pageNow-1"/>">上一页</a>
														</s:if>
														<s:if test="#page.hasNext">
															<a href="scoreInfo.action?pageNow=<s:property value="#page.pageNow+1"/>">下一页</a>
														</s:if>
														<s:if test="#page.hasLast">
															<a href="scoreInfo.action?pageNow=<s:property value="#page.totalPage"/>">尾页</a>
														</s:if>
													</tr>
											</tbody>

										</table>
										<s:form action="findScore.action" method="post">
											查询学生成绩：<input type="text" name="score.id.studentId"/>
							    			<input type="submit" value="查询"/>
							    		</s:form>
									</div>
									<!--分页显示角色信息 end-->
								</li>
							</ul>
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
														<form class="am-form am-form-horizontal" action="addorupdateScore.action" method="post">
															<div class="am-form-group">
																<label for="user-name" class="am-u-sm-3 am-form-label">
									请选择学生： </label>
																<div class="am-u-sm-9">
																	<select name="score.id.studentId">
																		<s:iterator id="student" value="#request.list1">
																			<option value="<s:property value="#student.studentId"/>">
																				<s:property value="#student.name" />
																			</option>
																		</s:iterator>
																	</select>
																</div>
															</div>
															<div class="am-form-group">
																<label for="user-name" class="am-u-sm-3 am-form-label">
															
									请选择课程： </label>
																<div class="am-u-sm-9">
																	<select name="score.id.courseId">
																		<s:iterator id="course" value="#request.list2">
																			<option value="<s:property value="#course.courseId"/>">
																				<s:property value="#course.courseName" />
																			</option>
																		</s:iterator>
																	</select>
																</div>
															</div>
															<div class="am-form-group">
																<label for="user-name" class="am-u-sm-3 am-form-label">
															
									成绩</label>
																<div class="am-u-sm-9">
																	<s:textfield name="score.score" value="" size="15"></s:textfield>
																</div>
															</div>
															<div class="am-form-group">
																<div class="am-u-sm-9 am-u-sm-push-3">
																	<input type="submit" class="am-btn am-btn-success" value="添加" />
																	<input type="submit" class="am-btn am-btn-success" value="重置" />
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