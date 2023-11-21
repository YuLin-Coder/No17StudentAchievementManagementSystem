package edu.ccut.computer.software.service.imp;

import edu.ccut.computer.software.dao.LoginDao;
import edu.ccut.computer.software.model.Login;
import edu.ccut.computer.software.service.LoginService;

public class LoginServiceManage implements LoginService {
	// ��loginDao��������ע��
	private LoginDao loginDao;

	public boolean existUsername(String username) {
		return loginDao.existUsername(username);
	}

	public Login find(String username, String password) {
		return loginDao.find(username, password);
	}

	public void save(Login user) {
		loginDao.save(user);
	}

	public void setLoginDao(LoginDao loginDao) {
		this.loginDao = loginDao;
	}

	@Override
	public void update(Login user) {
		loginDao.update(user);
		
	}
}
