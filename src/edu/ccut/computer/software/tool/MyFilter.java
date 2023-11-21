package edu.ccut.computer.software.tool;

import java.util.Map;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

import edu.ccut.computer.software.model.Login;

public class MyFilter extends AbstractInterceptor {
	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
		// TODO Auto-generated method stub
		Map session = arg0.getInvocationContext().getSession();
		Login user = (Login) session.get("user");
		if (user == null) {
			return Action.LOGIN;
		}
		return arg0.invoke();
	}
}
