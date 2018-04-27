package Action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import Service.PlaceService;
import entity.PageBean;
import entity.Place;

public class PlaceAction extends ActionSupport {

	private PlaceService placeService;

	public void setPlaceService(PlaceService placeService) {
		this.placeService = placeService;
	}

	public String list() {
		List<Place> list = placeService.show();
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("list", list);
		return "list";
	}

	public String execute() throws Exception {
		System.out.println("action............");
		return NONE;
	}

	private Integer currentPage;
	
	
	public Integer getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

	//使用属性封装获取当前页
	public String listpage(){
		PageBean pageBean =placeService.listPage(currentPage);
		//放到域对象里面
		ServletActionContext.getRequest().setAttribute("pageBean",pageBean);
		
		return "listpage";		
	}
	
	 
	

	

}
