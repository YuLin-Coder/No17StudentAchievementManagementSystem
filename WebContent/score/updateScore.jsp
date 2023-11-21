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
								<li class="" style="box-sizing: initial;-webkit-box-sizing: initial;">课程信息查询</li>
								<li style="box-sizing: initial;-webkit-box-sizing: initial;" class="on">课程信息录入</li>
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
													<th>课程号</th>
													<th>课程名</th>
													<th>开课学期</th>
													<th>学时</th>
													<th>学分</th>
													<th>总学分</th>
													<th>操作</th>
													<th>操作</th>
												</tr>
											</thead>
											<tbody>
												<s:iterator value="#request.list" id="course">
											  		<tr>
														<td><s:property value="#course.courseId"/></td>
														<td><s:property value="#course.courseName"/></td>
														<td><s:property value="#course.courseDate"/></td>
														<td><s:property value="#course.student"/></td>
														<td><s:property value="#course.credit"/></td>
														<td class="edit"><a href="updateCourseView.action?course.courseId=<s:property value="#course.courseId"/>"><i class="icon-edit bigger-120"></i>修改</a></td>
													    <td class="delete"><a href="deleteCourse.action?course.courseId=<s:property value="#course.courseId"/>" onClick="if(!confirm('确定删除该信息吗？'))return false;else return true;"><i class="icon-trash bigger-120">删除</a></td>
														
														<%-- <td class="edit"><button onclick="window.location.href='updateCourseView.action?course.courseId=<s:property value="#course.courseId"/>'"><i class="icon-edit bigger-120"></i>编辑</button></td>
													    <td class="delete"><button onclick="btn_delete(10)"><i class="icon-trash bigger-120"></i>删除</button></td>
														
														<td> <a href="deleteCourse.action?course.courseId=<s:property value="#course.courseId"/>" onClick="if(!confirm('确定删除该信息吗？'))return false;else return true;">删除</a> </td>
														<td> <a href="updateCourseView.action?course.courseId=<s:property value="#course.courseId"/>">修改</a> </td> --%>
													</tr>
													</s:iterator>
													<tr>
														<s:set name="page" value="#request.page"></s:set>
											  				<s:if test="#page.hasFirst">
															<s:a href="courseInfo.action?pageNow=1">首页</s:a>
															</s:if>
															<s:if test="#page.hasPre">
																<a href="courseInfo.action?pageNow=<s:property value="#page.pageNow-1"/>">上一页</a>
															</s:if>
															<s:if test="#page.hasNext">
																<a href="courseInfo.action?pageNow=<s:property value="#page.pageNow+1"/>">下一页</a>
															</s:if>
															<s:if test="#page.hasLast">
																<a href="courseInfo.action?pageNow=<s:property value="#page.totalPage"/>">尾页</a>
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
														<s:set name="course" value="#request.courseInfo"></s:set>
														<form class="am-form am-form-horizontal" action="updateCourse.action" method="post">
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


				</div>
		</body>

</html>