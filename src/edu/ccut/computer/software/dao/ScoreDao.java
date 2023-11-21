package edu.ccut.computer.software.dao;

import java.util.List;

import edu.ccut.computer.software.model.Score;


/**
 * @author duwenbo
 *
 */
public interface ScoreDao {
	// ɾ��ĳ�ſγ̵ĳɼ�
	public void deleteOneCourseInfo(String courseId);

	// ɾ��ĳѧ���ĳɼ�
	public void deleteOneStudentScore(String studentId);

	// ����ѧ�źͿγ̺�ɾ��ѧ���ɼ�
	public void deleteScore(String studentId, String courseId);

	// ��ҳ��ʾ����ѧ���ɼ�
	public List findAllScore(int pageNow, int pageSize);

	// ��ѯһ���������ɼ���¼
	public int findScoreSize();

	// ��ѯĳ�ǿγ̵�ѧ���ɼ�
	public List getCourseScoreList(String courseId);

	// ����ѧ�źͿγ̺Ų�ѯѧ���ɼ�
	public Score getStudentScore(String studentId, String courseId);

	// ��ѯĳѧ���ɼ�
	public List getStudentScoreList(String studentId);

	// ����ѧ���ɼ�
	public void saveorupdateScore(Score score);
}
