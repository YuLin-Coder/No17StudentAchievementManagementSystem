package edu.ccut.computer.software.model;

/*
 * duwenbo
 * 
 * 
 * */
import java.util.Date;

public class Student implements java.io.Serializable {
	private String studentId;
	private Major major;
	private String name;
	private Byte sex;
	private Date birthDate;
	private Integer totalCredits;
	private String other;
	private byte[] photo;

	public Student() {
	}

	public Student(Major major, String name, Byte sex, Date birthDate,
			Integer totalCredits, String other, byte[] photo) {
		this.major = major;
		this.name = name;
		this.sex = sex;
		this.birthDate = birthDate;
		this.totalCredits = totalCredits;
		this.other = other;
		this.photo = photo;
	}

	public Date getBirthDate() {
		return birthDate;
	}

	public Major getMajor() {
		return major;
	}

	public String getName() {
		return name;
	}

	public String getOther() {
		return other;
	}

	public byte[] getPhoto() {
		return photo;
	}

	public Byte getSex() {
		return sex;
	}

	public String getStudentId() {
		return studentId;
	}

	public Integer getTotalCredits() {
		return totalCredits;
	}

	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}

	public void setMajor(Major major) {
		this.major = major;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setOther(String other) {
		this.other = other;
	}

	public void setPhoto(byte[] photo) {
		this.photo = photo;
	}

	public void setSex(Byte sex) {
		this.sex = sex;
	}

	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}

	public void setTotalCredits(Integer totalCredits) {
		this.totalCredits = totalCredits;
	}

}