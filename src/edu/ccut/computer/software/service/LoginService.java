package edu.ccut.computer.software.service;

import edu.ccut.computer.software.model.Login;

public interface LoginService {
	// �Ƿ���ڸ�ѧ�ŵ��û�
	public boolean existUsername(String username);

	// ����ѧ�źͿ������
	public Login find(String username, String password);

	// �����û�
	public void save(Login user);

	public void update(Login user);
}
