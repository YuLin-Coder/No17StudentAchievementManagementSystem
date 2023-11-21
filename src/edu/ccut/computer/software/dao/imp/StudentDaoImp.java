package edu.ccut.computer.software.dao.imp;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import edu.ccut.computer.software.dao.StudentDao;
import edu.ccut.computer.software.model.Student;

public class StudentDaoImp extends HibernateDaoSupport implements StudentDao {
	public void delete(String studentId) {
		getHibernateTemplate().delete(find(studentId));
	}

	public Student find(String studentId) {
		List list = getHibernateTemplate().find(
				"from Student where studentId=?", studentId);
		if (list.size() > 0)
			return (Student) list.get(0);
		else
			return null;
	}

	public List findAll(int pageNow, int pageSize) {
		try {
			Session session = getHibernateTemplate().getSessionFactory()
					.openSession();
			Transaction ts = session.beginTransaction();
			Query query = session
					.createQuery("from Student order by studentId");
			int firstResult = (pageNow - 1) * pageSize;
			query.setFirstResult(firstResult);
			query.setMaxResults(pageSize);
			List list = query.list();
			ts.commit();
			session.close();
			session = null;
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public int findStudentSize() {
		return getHibernateTemplate().find("from Student").size();
	}

	public void save(Student student) {
		getHibernateTemplate().save(student);
	}

	public void update(Student student) {
		getHibernateTemplate().update(student);
	}

}
