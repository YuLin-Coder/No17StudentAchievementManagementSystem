package edu.ccut.computer.software.service;

import java.util.List;

import edu.ccut.computer.software.model.Major;

public interface MajorService {
	// 查找所有专业信息
	public List getAll();

	// 根据专业Id查找专业信息
	public Major getOneMajor(int majorId);

	// 插入专业信息
	public void save(Major major);
}
