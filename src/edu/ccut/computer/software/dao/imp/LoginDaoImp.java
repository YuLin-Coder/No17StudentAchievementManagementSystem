package edu.ccut.computer.software.dao.imp;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import edu.ccut.computer.software.dao.LoginDao;
import edu.ccut.computer.software.model.Login;

public class LoginDaoImp extends HibernateDaoSupport implements LoginDao {
	public boolean existUsername(String username) {
		List list = getHibernateTemplate().find("from Login where username=?",
				username);
		if (list.size() > 0)
			return true;
		else
			return false;
	}

	public Login find(String username, String password) {
		String str[] = { username, password };
		List list = getHibernateTemplate().find(
				"from Login where username=? and password=?", str);
		if (list.size() > 0)
			return (Login) list.get(0);
		else
			return null;
	}

	public void save(Login user) {
		getHibernateTemplate().save(user);
	}

	@Override
	public void update(Login user) {
		getHibernateTemplate().update(user);
		
	}
}
