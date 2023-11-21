package edu.ccut.computer.software.model;



/**
 * @author duwenbo
 *
 */
public class Login implements java.io.Serializable {
	private Integer id;
	private String username;
	private String password;
	private String oldPassword;
	private String newPassword1;
	public String getNewPassword1() {
		return newPassword1;
	}


	public void setNewPassword1(String newPassword1) {
		this.newPassword1 = newPassword1;
	}


	public String getNewPassword2() {
		return newPassword2;
	}


	public void setNewPassword2(String newPassword2) {
		this.newPassword2 = newPassword2;
	}

	private String newPassword2;

	public String getOldPassword() {
		return oldPassword;
	}


	public void setOldPassword(String oldPassword) {
		this.oldPassword = oldPassword;
	}


	public Login() {
	}

	
	public Login(Integer id, String username, String password) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
	}


	public Login(String username, String password) {
		this.username = username;
		this.password = password;
	}

	public Integer getId() {
		return id;
	}

	public String getPassword() {
		return password;
	}

	public String getUsername() {
		return username;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setUsername(String username) {
		this.username = username;
	}

}