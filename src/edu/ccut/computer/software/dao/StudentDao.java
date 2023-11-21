package edu.ccut.computer.software.dao;

import java.util.List;
import edu.ccut.computer.software.model.Student;

/**
 * @author duwenbo
 *
 */
public interface StudentDao {
	// ����ѧ��ɾ��ѧ��
	public void delete(String studentId);

	// ����ѧ�Ų�ѯѧ����Ϣ
	public Student find(String studentId);

	// ��ҳ��ʾѧ����Ϣ
	public List findAll(int pageNow, int pageSize);

	// ��ѯһ��������ѧ����¼
	public int findStudentSize();

	// ����ѧ��
	public void save(Student student);

	// �޸�ѧ����Ϣ
	public void update(Student student);
}
