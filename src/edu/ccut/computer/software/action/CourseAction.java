package edu.ccut.computer.software.action;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import edu.ccut.computer.software.model.Course;
import edu.ccut.computer.software.service.CourseService;
import edu.ccut.computer.software.tool.Pager;

public class CourseAction extends ActionSupport {
	private int pageNow = 1;
	private int pageSize = 8;
	private Course course;
	private CourseService courseService;

	public String addCourse() throws Exception {
		Course course1 = new Course();
		course1.setCourseId(course.getCourseId());
		course1.setCourseName(course.getCourseName());
		course1.setCredit(course.getCredit());
		course1.setCourseDate(course.getCourseDate());
		course1.setStudent(course.getStudent());
		Map request = (Map) ActionContext.getContext().get("request");
		courseService.save(course1);
		return SUCCESS;
	}

	public String courseInfo() throws Exception {
		List list = courseService.findAll(pageNow, pageSize);
		Map request = (Map) ActionContext.getContext().get("request");
		System.out.println("totleSize:" + courseService.findCourseSize());
		Pager page = new Pager(pageNow, courseService.findCourseSize());
		System.out.println("totlePage:" + page.getTotalPage());
		request.put("list", list);
		request.put("page", page);
		return SUCCESS;
	}

	public String deleteCourse() throws Exception {
		String courseh = course.getCourseId();
		Map request = (Map) ActionContext.getContext().get("request");
		courseService.delete(courseh);
		return SUCCESS;
	}

	public String findCourse() throws Exception {
		String courseh = course.getCourseId();
		Course course2 = courseService.find(courseh);
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("course", course2);
		if (course2 != null) {
			return SUCCESS;
		} else {
			return ERROR;
		}
	}

	public Course getCourse() {
		return course;
	}

	public int getPageNow() {
		return pageNow;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public void setCourseService(CourseService courseService) {
		this.courseService = courseService;
	}

	public void setPageNow(int pageNow) {
		this.pageNow = pageNow;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public String updateCourse() throws Exception {
		Course course3 = courseService.find(course.getCourseId());
		course3.setCourseName(course.getCourseName());
		course3.setCredit(course.getCredit());
		course3.setCourseDate(course.getCourseDate());
		course3.setStudent(course.getStudent());
		Map request = (Map) ActionContext.getContext().get("request");
		courseService.update(course3);
		return SUCCESS;
	}

	public String updateCourseView() throws Exception {
		String courseh = course.getCourseId();
		Course courseInfo = courseService.find(courseh);
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("courseInfo", courseInfo);
		return SUCCESS;
	}
}
