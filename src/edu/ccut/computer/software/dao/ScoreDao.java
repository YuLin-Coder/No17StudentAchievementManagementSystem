package edu.ccut.computer.software.dao;

import java.util.List;

import edu.ccut.computer.software.model.Score;


/**
 * @author duwenbo
 *
 */
public interface ScoreDao {
	// 删除某门课程的成绩
	public void deleteOneCourseInfo(String courseId);

	// 删除某学生的成绩
	public void deleteOneStudentScore(String studentId);

	// 根据学号和课程号删除学生成绩
	public void deleteScore(String studentId, String courseId);

	// 分页显示所有学生成绩
	public List findAllScore(int pageNow, int pageSize);

	// 查询一共多少条成绩记录
	public int findScoreSize();

	// 查询某们课程的学生成绩
	public List getCourseScoreList(String courseId);

	// 根据学号和课程号查询学生成绩
	public Score getStudentScore(String studentId, String courseId);

	// 查询某学生成绩
	public List getStudentScoreList(String studentId);

	// 插入学生成绩
	public void saveorupdateScore(Score score);
}
