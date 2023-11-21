package edu.ccut.computer.software.model;


/**
 * @author duwenbo
 *
 */
public class Course implements java.io.Serializable {

	private String courseId;
	private String courseName;
	private Short courseDate;
	private Short student;
	private int credit;

	public Course() {
	}
	
	
	public Course(String courseId, String courseName, Short courseDate, Short student, int credit) {
		super();
		this.courseId = courseId;
		this.courseName = courseName;
		this.courseDate = courseDate;
		this.student = student;
		this.credit = credit;
	}


	public Course(String courseName, Short courseDate, Short student, int credit) {
		this.courseName = courseName;
		this.courseDate = courseDate;
		this.student = student;
		this.credit = credit;
	}

	public Short getCourseDate() {
		return courseDate;
	}

	public String getCourseId() {
		return courseId;
	}

	public String getCourseName() {
		return courseName;
	}

	public int getCredit() {
		return credit;
	}

	public Short getStudent() {
		return student;
	}

	public void setCourseDate(Short courseDate) {
		this.courseDate = courseDate;
	}

	public void setCourseId(String courseId) {
		this.courseId = courseId;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public void setCredit(int credit) {
		this.credit = credit;
	}

	public void setStudent(Short student) {
		this.student = student;
	}
}