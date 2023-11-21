package edu.ccut.computer.software.service;

import java.util.List;

import edu.ccut.computer.software.model.Major;

public interface MajorService {
	// ��������רҵ��Ϣ
	public List getAll();

	// ����רҵId����רҵ��Ϣ
	public Major getOneMajor(int majorId);

	// ����רҵ��Ϣ
	public void save(Major major);
}
