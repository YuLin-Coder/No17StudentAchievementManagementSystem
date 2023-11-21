package edu.ccut.computer.software.service.imp;

import java.util.List;

import edu.ccut.computer.software.dao.MajorDao;
import edu.ccut.computer.software.model.Major;
import edu.ccut.computer.software.service.MajorService;

public class MajorServiceManage implements MajorService {
	// 对majorDao进行依赖注入
	private MajorDao majorDao;

	public List getAll() {
		return majorDao.getAll();
	}

	public Major getOneMajor(int majorId) {
		return majorDao.getOneMajor(majorId);
	}

	public void save(Major major) {
		majorDao.save(major);
	}

	public void setMajorDao(MajorDao majorDao) {
		this.majorDao = majorDao;
	}
}
