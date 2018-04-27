package Action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import DataMing_CART.CARTTool2;
import Service.UserService;
import entity.Place;
import entity.User;

public class UserAction extends ActionSupport implements ModelDriven<User> {
	private CARTTool2 cartTool2;
	
	public void setCartTool2(CARTTool2 cartTool2) {
		this.cartTool2 = cartTool2;
	}
	private UserService userService;
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	private User user=new User();
	
	public User getModel(){
		return user;
	}
	public String sword2;
	
	
	public String getSword2() {
		return sword2;
	}

	public void setSword2(String sword2) {
		this.sword2 = sword2;
	}

	public String logout(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session=request.getSession();
		if(session!=null)
		session.removeAttribute("sname");
		return "logout";
	}
	
	
	
	//��ʾ��ͨlist
	public String list(){
		List<Place> list=userService.show();
		HttpServletRequest request =ServletActionContext.getRequest();
		request.setAttribute("list",list);
		return "list";
	}
	
	public String toreg(){
		return "toreg";		
	}

	public String index(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session=request.getSession();
		if(session.getAttribute("sname")!=null)
			return "service";
		return "index";
	}
	

	public String reg(){
		try {
			userService.reg(user);
			
		} catch (Exception e) {
			if (e.getMessage().equals("�û����Ѵ���"))
				{
					HttpServletRequest request=ServletActionContext.getRequest();
					request.setAttribute("msg","�û����Ѵ���");
					return "fail";
				}
			}
		return "reg";		
	}
	
	public String login(){		
		HttpServletRequest request = ServletActionContext.getRequest();		
		List<User> list= userService.findByName(user.getSname());
		if(list == null){
			request.setAttribute("msg", "�û���������");
			return "login";
		}
		User _user=list.get(0);
		if(_user.getSword().equals(user.getSword()))
		{
			request.getSession().setAttribute("sname",_user.getSname());
			return "loginsuccess";
		}else{
			request.setAttribute("msg","�������");
			return "login";
		}
	}
	
	public String execute() throws Exception {
		System.out.println("action............");		
		return NONE;
	}



}
