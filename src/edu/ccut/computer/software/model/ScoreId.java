package edu.ccut.computer.software.model;

/*
 * 
 * duwenbo
 * 
 * */
public class ScoreId implements java.io.Serializable {
	private String studentId;
	private String courseId;

	public ScoreId() {
	}

	public ScoreId(String studentId, String courseId) {
		this.studentId = studentId;
		this.courseId = courseId;
	}

	@Override
	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof ScoreId))
			return false;
		ScoreId castOther = (ScoreId) other;

		return ((this.getStudentId() == castOther.getStudentId()) || (this
				.getStudentId() != null && castOther.getStudentId() != null && this
				.getStudentId().equals(castOther.getStudentId())))
				&& ((this.getCourseId() == castOther.getCourseId()) || (this
						.getCourseId() != null
						&& castOther.getCourseId() != null && this
						.getCourseId().equals(castOther.getCourseId())));
	}

	public String getCourseId() {
		return this.courseId;
	}

	public String getStudentId() {
		return this.studentId;
	}

	@Override
	public int hashCode() {
		int result = 17;

		result = 37 * result
				+ (getStudentId() == null ? 0 : this.getStudentId().hashCode());
		result = 37 * result
				+ (getCourseId() == null ? 0 : this.getCourseId().hashCode());
		return result;
	}

	public void setCourseId(String courseId) {
		this.courseId = courseId;
	}

	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}

}