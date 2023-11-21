package edu.ccut.computer.software.service;

import java.util.List;

import edu.ccut.computer.software.model.Course;

public interface CourseService {
	// 根据课程号删除课程信息
	public void delete(String courseId);

	// 根据课程号查找课程信息
	public Course find(String courseId);

	// 分页显示课程信息
	public List findAll(int pageNow, int pageSize);

	// 查询一共多少条课程记录
	public int findCourseSize();

	// 插入课程信息
	public void save(Course course);

	// 修改课程信息
	public void update(Course course);
}
