package edu.ccut.computer.software.dao;

import java.util.List;

import edu.ccut.computer.software.model.Major;


/**
 * @author duwenbo
 *
 */
public interface MajorDao {
	// ��������רҵ��Ϣ
	public List getAll();

	// ����רҵId����רҵ��Ϣ
	public Major getOneMajor(int majorId);

	// ����רҵ��Ϣ
	public void save(Major major);
}
