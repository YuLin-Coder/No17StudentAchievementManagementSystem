package edu.ccut.computer.software.service.imp;

import java.util.List;

import edu.ccut.computer.software.dao.ScoreDao;
import edu.ccut.computer.software.dao.StudentDao;
import edu.ccut.computer.software.model.Student;
import edu.ccut.computer.software.service.StudentService;

public class StudentServiceManage implements StudentService {
	// 对studentDao和scoreDao进行依赖注入
	private StudentDao studentDao;
	private ScoreDao scoreDao;

	public void delete(String studentId) {
		// 删除学生时同时要删除对应成绩
		studentDao.delete(studentId);
		scoreDao.deleteOneStudentScore(studentId);
	}

	public Student find(String studentId) {
		return studentDao.find(studentId);
	}

	public List findAll(int pageNow, int pageSize) {
		return studentDao.findAll(pageNow, pageSize);
	}

	public int findStudentSize() {
		return studentDao.findStudentSize();
	}

	public void save(Student student) {
		studentDao.save(student);
	}

	public void setScoreDao(ScoreDao scoreDao) {
		this.scoreDao = scoreDao;
	}

	public void setStudentDao(StudentDao studentDao) {
		this.studentDao = studentDao;
	}

	public void update(Student student) {
		studentDao.update(student);
	}

}
