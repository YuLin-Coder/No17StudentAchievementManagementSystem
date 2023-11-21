package edu.ccut.computer.software.action;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import edu.ccut.computer.software.model.Course;
import edu.ccut.computer.software.model.Score;
import edu.ccut.computer.software.model.ScoreId;
import edu.ccut.computer.software.service.CourseService;
import edu.ccut.computer.software.service.ScoreService;
import edu.ccut.computer.software.service.StudentService;
import edu.ccut.computer.software.tool.Pager;

public class ScoreAction extends ActionSupport {
	private int pageNow = 1;
	private int pageSize = 8;
	private Score score;
	private StudentService studentService;
	private CourseService courseService;
	private ScoreService scoreService;

	public String addorupdateStudentscore() throws Exception {
		Score score1 = null;
		ScoreId scoreId1 = new ScoreId();
		scoreId1.setStudentId(score.getId().getStudentId());
		scoreId1.setCourseId(score.getId().getCourseId());

		if (scoreService.getStudentScore(score.getId().getStudentId(), score
				.getId().getCourseId()) == null) {
			score1 = new Score();
			score1.setId(scoreId1);
		} else {
			score1 = scoreService.getStudentScore(score.getId().getStudentId(),
					score.getId().getCourseId());
		}
		Course course1 = courseService.find(score.getId().getCourseId());

		score1.setScore(score.getScore());
		if (score.getScore() > 60 || score.getScore() == 60) {
			score1.setCredit(course1.getCredit());
		} else
			score1.setCredit(0);
		scoreService.saveorupdateScore(score1);
		return SUCCESS;
	}

	public String deleteOneStudentscore() throws Exception {
		String xh = score.getId().getStudentId();
		String courseh = score.getId().getCourseId();
		scoreService.deleteScore(xh, courseh);
		Map request = (Map) ActionContext.getContext().get("request");
		return SUCCESS;
	}



	public String findStudentscore() throws Exception {
		List list = scoreService.getStudentScoreList(score.getId()
				.getStudentId());
		if (list.size() > 0) {
			Map request = (Map) ActionContext.getContext().get("request");
			request.put("list", list);
			return SUCCESS;
		} else
			return ERROR;
	}

	public int getPageNow() {
		return pageNow;
	}

	public int getPageSize() {
		return pageSize;
	}

	public Score getScore() {
		return score;
	}

	public String scoreInfo() throws Exception {
		List list = scoreService.findAllScore(this.getPageNow(),
				this.getPageSize());
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("list", list);
		Pager page = new Pager(this.getPageNow(), scoreService.findScoreSize());
		System.out.println(scoreService.findScoreSize());
		request.put("page", page);
		
		List list1 = studentService
				.findAll(1, studentService.findStudentSize());
		List list2 = courseService.findAll(1, courseService.findCourseSize());
		//Map request = (Map) ActionContext.getContext().get("request");
		request.put("list1", list1);
		request.put("list2", list2);
		
		//System.out.println("exe执行了................");
		
		return SUCCESS;
	}

	public void setCourseService(CourseService courseService) {
		this.courseService = courseService;
	}

	public void setPageNow(int pageNow) {
		this.pageNow = pageNow;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public void setScore(Score score) {
		this.score = score;
	}

	public void setScoreService(ScoreService scoreService) {
		this.scoreService = scoreService;
	}

	public void setStudentService(StudentService studentService) {
		this.studentService = studentService;
	}
}
