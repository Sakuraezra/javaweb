package interceptor;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;


public class LoginInterceptor extends MethodFilterInterceptor {

	

	@Override
	protected String doIntercept(ActionInvocation invocation) throws Exception {

		HttpServletRequest request =ServletActionContext.getRequest();
		Object obj = request.getSession().getAttribute("sname");
		if(obj!=null){
			//���ء�
			return invocation.invoke();
		}
	
		return "index";
	}

	
}
