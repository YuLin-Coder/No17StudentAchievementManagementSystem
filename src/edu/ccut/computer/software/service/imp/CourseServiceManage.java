package edu.ccut.computer.software.service.imp;

import java.util.List;

import edu.ccut.computer.software.dao.CourseDao;
import edu.ccut.computer.software.dao.ScoreDao;
import edu.ccut.computer.software.model.Course;
import edu.ccut.computer.software.service.CourseService;

public class CourseServiceManage implements CourseService {
	private CourseDao courseDao;
	private ScoreDao scoreDao;

	public void delete(String courseId) {
		courseDao.delete(courseId);
		scoreDao.deleteOneCourseInfo(courseId);
	}

	public Course find(String courseId) {
		return courseDao.find(courseId);
	}

	public List findAll(int pageNow, int pageSize) {
		return courseDao.findAll(pageNow, pageSize);
	}

	public int findCourseSize() {
		return courseDao.findCourseSize();
	}

	public void save(Course course) {
		courseDao.save(course);
	}

	public void setCourseDao(CourseDao courseDao) {
		this.courseDao = courseDao;
	}

	public void setScoreDao(ScoreDao scoreDao) {
		this.scoreDao = scoreDao;
	}

	public void update(Course course) {
		courseDao.update(course);
	}
}
