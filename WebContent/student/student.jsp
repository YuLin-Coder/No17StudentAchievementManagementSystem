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
								<li class="" style="box-sizing: initial;-webkit-box-sizing: initial;">学生信息查询</li>
								<li style="box-sizing: initial;-webkit-box-sizing: initial;" class="on">学生信息录入</li>
							</ul>
						</div>
						<div class="bd">
							<ul style="display: block;padding: 20px;">
								<li>
									<!--分页显示角色信息 start-->
									<s:set name="student" value="#request.studentInfo"></s:set>
									<div id="dv1">
										<table class="table" id="tbRecord">
											<thead>
												<tr>
													<th>学号</th>
													<th>姓名</th>
													<th>性别</th>
													<th>专业</th>
													<th>出生时间</th>
													<th>总学分</th>
													<th>详细信息</th>
													<th>操作</th>
													<th>操作</th>
												</tr>
											</thead>
											<tbody>
												<s:iterator value="#request.list" id="student">
										  		<tr>
													<td><s:property value="#student.studentId"/></td>
													<td><s:property value="#student.name"/></td>
													<td>
														<s:if test="#student.sex==1">
															男
														</s:if>
														<s:else>
															女
														</s:else>		
													</td>
													<td><s:property value="#student.major.majorName"/></td>
													<td><s:date name="#student.birthDate" format="yyyy-MM-dd"/> </td>
													<td><s:property value="#student.totalCredits"/></td>
													<td><a href="findStudent.action?student.studentId=<s:property value="#student.studentId"/>">详细信息</a> </td>
													
													
													<td class="edit"><a href="updateStudentView.action?student.studentId=<s:property value="#student.studentId"/>"><i class="icon-edit bigger-120"></i>修改</a></td>
													<td class="delete"><a href="deleteStudent.action?student.studentId=<s:property value="#student.studentId"/>" onClick="if(!confirm('确定删除该信息吗？'))return false;else return true;"><i class="icon-trash bigger-120">删除</a> </td>
													
													<%-- <td class="edit"><button onclick="window.location.href='updateStudentView.action?student.studentId=<s:property value="#student.studentId"/>'"><i class="icon-edit bigger-120"></i>编辑</button></td>
													<td class="delete"><button onclick="window.location.href='deleteStudent.action?student.studentId=<s:property value="#student.studentId"/>'"><i class="icon-trash bigger-120"></i>删除</button></td>
													 --%>
													<%-- <td> <a href="deleteStudent.action?student.studentId=<s:property value="#student.studentId"/>" onClick="if(!confirm('确定删除该信息吗？'))return false;else return true;">删除</a> </td>
													<td> <a href="updateStudentView.action?student.studentId=<s:property value="#student.studentId"/>">修改</a> </td> --%>
												</tr>
												</s:iterator>
												<tr>
													<s:set name="page" value="#request.page"></s:set>
										  				<s:if test="#page.hasFirst">
														<s:a href="studentInfo.action?pageNow=1">首页</s:a>
														</s:if>
														<s:if test="#page.hasPre">
															<a href="studentInfo.action?pageNow=<s:property value="#page.pageNow-1"/>">上一页</a>
														</s:if>
														<s:if test="#page.hasNext">
															<a href="studentInfo.action?pageNow=<s:property value="#page.pageNow+1"/>">下一页</a>
														</s:if>
														<s:if test="#page.hasLast">
															<a href="studentInfo.action?pageNow=<s:property value="#page.totalPage"/>">尾页</a>
														</s:if>
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
													<div class="am-u-sm-12 am-u-md-8 am-u-md-pull-4" style="padding-top: 30px;">
														<form class="am-form am-form-horizontal" action="addStudent.action" method="post" enctype="multipart/form-data" validate="true">
															<div class="am-form-group">
																<label class="am-u-sm-3 am-form-label">
									学号</label>
																<div class="am-u-sm-9">
																	<input type="text"  required name="studentId">
																</div>
															</div>
															<div class="am-form-group">
																<label  class="am-u-sm-3 am-form-label">
															
									姓名</label>
																<div class="am-u-sm-9">
																	<input type="text" required name="name">
																</div>
															</div>
															<div class="am-form-group">
																<label  class="am-u-sm-3 am-form-label">
															
									性别</label>
																<div class="am-u-sm-9">
																	<s:radio name="sex" value="1" list="#{1:'男',0:'女'}"/>
																</div>
															</div>
															<div class="am-form-group">
																<label  class="am-u-sm-3 am-form-label">
															
									专业</label>
																<div class="student.major.id">
																	<s:select  name="major.id" list="list" listKey="id" listValue="majorName"
																		 headerKey="0" headerValue="--请选择专业--" ></s:select>
																</div>
															</div>
															<div class="am-form-group">
																<label  class="am-u-sm-3 am-form-label">
															
									出生时间</label>
																<div class="am-u-sm-9">
																	<!-- 调用JS写的时间控件，非常方便时间的选择，而且输入框设为只读，防止输入错误的格式 -->
																	<s:textfield name="birthDate"  onclick="calendar()" ></s:textfield>
																</div>
															</div>
															<div class="am-form-group">
																<label class="am-u-sm-3 am-form-label">
															
									总学分</label>
																<div class="am-u-sm-9">
																	<s:textfield name="totalCredits"></s:textfield>
																</div>
															</div>
															
															
															<div class="am-form-group">
																<label for="user-intro" class="am-u-sm-3 am-form-label">
									备注</label>
																<div class="am-u-sm-9">
																	<textarea class="" rows="5"  name="other" placeholder="输入备注"></textarea>
																	<small>250字以内...</small>
																</div>
															</div>
															<div class="am-form-group">
																<div class="am-u-sm-9 am-u-sm-push-3">
																	<input type="submit" class="am-btn am-btn-success" value="添加" />
																	<input type="reset" class="am-btn am-btn-success" value="重置" />
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