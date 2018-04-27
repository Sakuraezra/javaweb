package Action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import DataMing_CART.CARTTool2;
import Service.DLTableService;
import entity.DL;
import entity.Place;

public class DLTableAction extends ActionSupport implements ModelDriven<DL>{

	private DLTableService dltableService;
	public void setDltableService(DLTableService dltableService) {
		this.dltableService = dltableService;
	}
	private CARTTool2 cartTool2;
	
	public void setCartTool2(CARTTool2 cartTool2) {
		this.cartTool2 = cartTool2;
	}
	
	private String saddress;
	private DL dl=new DL();

	public String getSaddress() {
		return saddress;
	}

	public void setSaddress(String saddress) {
		this.saddress = saddress;
	}

	public DL getModel(){
		return dl;
	}
	
	//��ʾ�û�ר����list
		public String plist(){
			DL _dl =dltableService.output();
			System.out.println(_dl.toString());
			HttpServletRequest request =ServletActionContext.getRequest();
			String _pro=_dl.getProvince();
			String _dis=_dl.getDistance();
			List<Place> list=dltableService.plshow(_dl);
			
			request.setAttribute("list",list);
			return "plist";
		}
	
	public String input(){
		
		DL _dl=new DL();
		//�ӱ��л�ȡ����    ����  ���� ����  ���� Ȼ�����ת��		
		System.out.println();
		if(dl.getAge().equals(null))
		{
			System.out.println("null");
		}
		else{
			System.out.println("the age is "+ dl.getAge());
			//��Stringת��Ϊint��Ȼ����д����ڽ��б���
			int a = Integer.parseInt(dl.getAge());
			if(a>0&&a<30){
				dl.setAge("Youth");
		
			}else if(a<50){
				
				dl.setAge("Middle-age");
			}
			else{
				dl.setAge("Old");
			}
		}
		dl.getDistance();
		dl.getIncome();
		dl.getWeather();
		int dbsize=dltableService.getdbsize();	
		System.out.println(dl.getDistance()+dl.getIncome()+dl.getWeather());
		_dl=dl;
		_dl.setRid(dbsize+1);
		System.out.println(_dl);
		dltableService.input(_dl);
	//	HttpSession session = request.get
		return "input";
	}

	public String traintree(){
		System.out.println(dltableService.output());
		DL _dl =dltableService.output();
		//placelist = (List<Place>) hibernateTemplate.find("from Place");
		dltableService.traintree(_dl);
		System.out.println();
		HttpServletRequest request =ServletActionContext.getRequest();
		request.setAttribute("result",dltableService.traintree(_dl));
		return "traintree";		
	}
	
	public String execute() throws Exception {
		System.out.println("action............");
		return NONE;
	}
	
	public String DL(){
		cartTool2.startBuildingTree();
		return "DL";
	}
	
}


