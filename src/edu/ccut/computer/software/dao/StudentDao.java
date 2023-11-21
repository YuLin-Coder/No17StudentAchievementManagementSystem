package edu.ccut.computer.software.dao;

import java.util.List;
import edu.ccut.computer.software.model.Student;

/**
 * @author duwenbo
 *
 */
public interface StudentDao {
	// 根据学号删除学生
	public void delete(String studentId);

	// 根据学号查询学生信息
	public Student find(String studentId);

	// 分页显示学生信息
	public List findAll(int pageNow, int pageSize);

	// 查询一共多少条学生记录
	public int findStudentSize();

	// 插入学生
	public void save(Student student);

	// 修改学生信息
	public void update(Student student);
}
