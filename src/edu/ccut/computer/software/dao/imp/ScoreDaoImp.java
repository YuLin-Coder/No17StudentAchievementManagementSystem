package edu.ccut.computer.software.dao.imp;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import edu.ccut.computer.software.dao.ScoreDao;
import edu.ccut.computer.software.model.Score;
import edu.ccut.computer.software.model.ScoreId;

public class ScoreDaoImp extends HibernateDaoSupport implements ScoreDao {
	public void deleteOneCourseInfo(String courseId) {
		getHibernateTemplate().deleteAll(this.getCourseScoreList(courseId));
	}

	public void deleteOneStudentScore(String studentId) {
		getHibernateTemplate().deleteAll(getStudentScoreList(studentId));
	}

	public void deleteScore(String studentId, String courseId) {
		getHibernateTemplate().delete(getStudentScore(studentId, courseId));
	}

	public List findAllScore(int pageNow, int pageSize) {
		Session session = getHibernateTemplate().getSessionFactory()
				.openSession();
		Transaction ts = session.beginTransaction();
		Query query = session
				.createQuery("select c.id.studentId,a.name,b.courseName,c.score,c.credit,c.id.courseId from Student a,Course b,Score c where a.studentId=c.id.studentId and b.courseId=c.id.courseId");
		query.setFirstResult((pageNow - 1) * pageSize);
		query.setMaxResults(pageSize);
		List list = query.list();
		ts.commit();
		session.close();
		return list;
	}

	public int findScoreSize() {
		return getHibernateTemplate().find("from Score").size();
	}

	public List getCourseScoreList(String courseId) {
		return getHibernateTemplate().find("from Score where courseId=?",
				courseId);
	}

	public Score getStudentScore(String studentId, String courseId) {
		ScoreId scoreId = new ScoreId();
		scoreId.setStudentId(studentId);
		scoreId.setCourseId(courseId);
		return (Score) getHibernateTemplate().get(Score.class, scoreId);
	}

	public List getStudentScoreList(String studentId) {
		return getHibernateTemplate()
				.find("select c.id.studentId,a.name,b.courseName,c.score,c.credit from Student a,Course b,Score c where c.id.studentId=? and a.studentId=c.id.studentId and b.courseId=c.id.courseId",
						studentId);
	}

	public void saveorupdateScore(Score score) {
		getHibernateTemplate().saveOrUpdate(score);
	}

}
