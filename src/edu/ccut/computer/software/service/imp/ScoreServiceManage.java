package edu.ccut.computer.software.service.imp;

import java.util.List;

import edu.ccut.computer.software.dao.ScoreDao;
import edu.ccut.computer.software.model.Score;
import edu.ccut.computer.software.service.ScoreService;

public class ScoreServiceManage implements ScoreService {
	// 对scoreDao进行依赖注入
	private ScoreDao scoreDao;

	public void deleteOneCourseInfo(String courseId) {
		scoreDao.deleteOneCourseInfo(courseId);
	}

	public void deleteOneStudentScore(String studentId) {
		scoreDao.deleteOneStudentScore(studentId);
	}

	public void deleteScore(String studentId, String courseId) {
		scoreDao.deleteScore(studentId, courseId);
	}

	public List findAllScore(int pageNow, int pageSize) {
		return scoreDao.findAllScore(pageNow, pageSize);
	}

	public int findScoreSize() {
		return scoreDao.findScoreSize();
	}

	public List getCourseScoreList(String courseId) {
		return scoreDao.getCourseScoreList(courseId);
	}

	public Score getStudentScore(String studentId, String courseId) {
		return scoreDao.getStudentScore(studentId, courseId);
	}

	public List getStudentScoreList(String studentId) {
		return scoreDao.getStudentScoreList(studentId);
	}

	public void saveorupdateScore(Score score) {
		scoreDao.saveorupdateScore(score);
	}

	public void setScoreDao(ScoreDao scoreDao) {
		this.scoreDao = scoreDao;
	}
}
