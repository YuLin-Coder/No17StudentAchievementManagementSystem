package edu.ccut.computer.software.action;

import java.io.File;
import java.io.FileInputStream;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import edu.ccut.computer.software.model.Student;
import edu.ccut.computer.software.service.MajorService;
import edu.ccut.computer.software.service.StudentService;
import edu.ccut.computer.software.tool.Pager;

public class StudentAction extends ActionSupport {
	private int pageNow = 1;
	private int pageSize = 8;
	private File photofile;
	// ���רҵ����
	private List list;
	private Student student;

	private StudentService studentService;
	private MajorService majorService;

	public String addStudent() throws Exception {
		Student stu = new Student();
		String studentId1 = student.getStudentId();
		if (studentService.find(studentId1) != null) {
			return ERROR;
		}
		stu.setStudentId(student.getStudentId());
		stu.setName(student.getName());
		stu.setSex(student.getSex());
		stu.setBirthDate(student.getBirthDate());
		System.out.println(student.getBirthDate());
		stu.setTotalCredits(student.getTotalCredits());
		stu.setOther(student.getOther());
		stu.setMajor(majorService.getOneMajor(student.getMajor().getId()));
		if (this.getPhotofile() != null) {
			FileInputStream fis = new FileInputStream(this.getPhotofile());
			byte[] buffer = new byte[fis.available()];
			fis.read(buffer);
			stu.setPhoto(buffer);
		}

		studentService.save(stu);
		return SUCCESS;
	}

	public String addStudentView() throws Exception {
		return SUCCESS;
	}

	public String deleteStudent() throws Exception {
		String studentId = student.getStudentId();
		studentService.delete(studentId);
		return SUCCESS;
	}

	@Override
	public String execute() throws Exception {
		System.out.println(this.getPageNow());
		List list = studentService.findAll(pageNow, pageSize);
		Map request = (Map) ActionContext.getContext().get("request");
		Pager page = new Pager(getPageNow(), studentService.findStudentSize());
		request.put("list", list);
		request.put("page", page);
		return SUCCESS;
	}

	public String findStudent() throws Exception {
		String studentId = student.getStudentId();
		Student stu2 = studentService.find(studentId);
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("student", stu2);
		return SUCCESS;
	}

	public String getImage() throws Exception {
		HttpServletResponse response = ServletActionContext.getResponse();
		String studentId = student.getStudentId();
		Student student3 = studentService.find(studentId);
		byte[] img = student3.getPhoto();
		response.setContentType("image/jpeg");
		ServletOutputStream os = response.getOutputStream();
		if (img != null && img.length != 0) {
			for (int i = 0; i < img.length; i++) {
				os.write(img[i]);
			}
			os.flush();
		}
		return NONE;
	}

	public List getList() {
		return majorService.getAll();// ����רҵ����
	}

	public int getPageNow() {
		return pageNow;
	}

	public int getPageSize() {
		return pageSize;
	}

	public File getPhotofile() {
		return photofile;
	}

	public Student getStudent() {
		return student;
	}

	public StudentService getStudentService() {
		return studentService;
	}

	public MajorService getMajorService() {
		return majorService;
	}
	
	public void setList(List list) {
		this.list = list;
	}

	public void setMajorService(MajorService majorService) {
		this.majorService = majorService;
	}

	public void setPageNow(int pageNow) {
		this.pageNow = pageNow;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public void setPhotofile(File photofile) {
		this.photofile = photofile;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public void setStudentService(StudentService studentService) {
		this.studentService = studentService;
	}

	public String updateStudent() throws Exception {
		System.out.println("进来了...");
		Student student1 = studentService.find(student.getStudentId());
		student1.setName(student.getName());
		student1.setSex(student.getSex());
		//student1.setMajor(majorService.getOneMajor(student.getMajor().getId()));
		student1.setBirthDate(student.getBirthDate());
		student1.setTotalCredits(student.getTotalCredits());
		student1.setOther(student.getOther());
		System.out.println("jinru");
		/*if (this.getPhotofile() != null) {
			FileInputStream fis = new FileInputStream(this.getPhotofile());
			byte[] buffer = new byte[fis.available()];
			fis.read(buffer);
			student1.setPhoto(buffer);
		}*/
		Map request = (Map) ActionContext.getContext().get("request");
		studentService.update(student1);
		return SUCCESS;
	}

	public String updateStudentView() throws Exception {
		String studentId = student.getStudentId();
		Student studentInfo = studentService.find(studentId);
		List majors = majorService.getAll();
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("studentInfo", studentInfo);
		request.put("majors", majors);
		return SUCCESS;
	}
}
