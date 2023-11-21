package edu.ccut.computer.software.dao;

import java.util.List;

import edu.ccut.computer.software.model.Course;



/**
 * @author duwenbo
 *
 */
public interface CourseDao {
	// ���ݿγ̺�ɾ���γ���Ϣ
	public void delete(String courseId);

	// ���ݿγ̺Ų��ҿγ���Ϣ
	public Course find(String courseId);

	// ��ҳ��ʾ�γ���Ϣ
	public List findAll(int pageNow, int pageSize);

	// ��ѯһ���������γ̼�¼
	public int findCourseSize();

	// ����γ���Ϣ
	public void save(Course course);

	// �޸Ŀγ���Ϣ
	public void update(Course course);
}
