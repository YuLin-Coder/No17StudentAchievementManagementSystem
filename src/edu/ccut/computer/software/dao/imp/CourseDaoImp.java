package edu.ccut.computer.software.dao.imp;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import edu.ccut.computer.software.dao.CourseDao;
import edu.ccut.computer.software.model.Course;


/**
 * @author duwenbo
 *
 */
public class CourseDaoImp extends HibernateDaoSupport implements CourseDao {

	public void delete(String courseId) {
		getHibernateTemplate().delete(find(courseId));
	}

	public Course find(String courseId) {
		List list = getHibernateTemplate().find("from Course where courseId=?",
				courseId);
		if (list.size() > 0)
			return (Course) list.get(0);
		else
			return null;
	}

	public List findAll(int pageNow, int pageSize) {
		Session session = getHibernateTemplate().getSessionFactory()
				.openSession();
		Transaction ts = session.beginTransaction();
		Query query = session.createQuery("from Course order by courseId");
		int firstResult = (pageNow - 1) * pageSize;
		query.setFirstResult(firstResult);
		query.setMaxResults(pageSize);
		List list = query.list();
		ts.commit();
		session.close();
		session = null;
		return list;
	}

	public int findCourseSize() {
		return getHibernateTemplate().find("from Course").size();
	}

	public void save(Course course) {
		getHibernateTemplate().save(course);
	}

	public void update(Course course) {
		getHibernateTemplate().update(course);
	}
}
