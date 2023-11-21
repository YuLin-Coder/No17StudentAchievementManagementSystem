package edu.ccut.computer.software.action;

import java.util.Arrays;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import edu.ccut.computer.software.model.Login;
import edu.ccut.computer.software.service.LoginService;

public class LoginAction extends ActionSupport implements ModelDriven<Login>{
	private LoginService loginService;
	private Login login = new Login();
	
	@Override
	public Login getModel() {
		// TODO Auto-generated method stub
		return login;
	}
	
	public String updatePwd() {
		String username = login.getUsername();
		String oldPwd = login.getOldPassword();
		String newPwd1 = login.getNewPassword1();
		String newPwd2 = login.getNewPassword2();
		
		System.out.println("username:"+username);
		System.out.println("old:"+oldPwd);
		System.out.println("new1:"+newPwd1);
		System.out.println("new2:"+newPwd2);
		
		String Info = null;
		
		Login user = loginService.find(username, oldPwd);
		
		
		if (user != null) {
			
			if(newPwd1.equals(newPwd2)) {
				user.setPassword(newPwd1);
				loginService.update(user);
				System.out.println("Pwd:"+user.getPassword());
			}else {
				Info = "两次密码不一致";
			}
			
		} else {
			Info = "用户名或原密码输入错误";
		}
		System.out.println("INFO:"+Info);
		
		if(Info == null)
			return SUCCESS;
		else
		{
			
			ActionContext.getContext().getApplication().put( "Info", Info) ;
			return "error";
		}
		
	}
	
	public String updatePwdView() {
		return SUCCESS;
	}
	public String exit() {
		
		 ActionContext.getContext().getSession().clear();
		return SUCCESS;
	}
	

	@Override
	public String execute() throws Exception {
		Login user = loginService
				.find(login.getUsername(), login.getPassword());
		if (user != null) {
			Map session = ActionContext.getContext().getSession();
			session.put("user", user);
			return SUCCESS;
		} else
			return ERROR;
	}

	public Login getLogin() {
		return login;
	}

	public LoginService getLoginService() {
		return loginService;
	}

	public void setLogin(Login login) {
		this.login = login;
	}

	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}



}
