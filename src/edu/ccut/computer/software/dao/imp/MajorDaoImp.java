package edu.ccut.computer.software.dao.imp;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import edu.ccut.computer.software.dao.MajorDao;
import edu.ccut.computer.software.model.Major;

public class MajorDaoImp extends HibernateDaoSupport implements MajorDao {
	public List getAll() {
		return this.getHibernateTemplate().find("from Major");
	}

	public Major getOneMajor(int id) {
		return (Major) getHibernateTemplate().find("from Major where id=?", id)
				.get(0);
	}

	public void save(Major major) {
		getHibernateTemplate().save(major);
	}
}
