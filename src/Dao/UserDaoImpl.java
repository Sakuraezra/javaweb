package Dao;

import java.util.List;

import org.springframework.orm.hibernate4.HibernateTemplate;

import DataMing_CART.CARTTool2;
import entity.DL;
import entity.Place;
import entity.User;


public class UserDaoImpl implements UserDao{
	
	private HibernateTemplate hibernateTemplate;
	List<Place> placelist = null;
	List<User> userlist = null;
	List<DL> dlList = null;
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	


	public List<Place> show() {
			placelist = (List<Place>) hibernateTemplate.find("from Place");
			for(Place place :placelist){
				System.out.println(place.getPname()+"...."+place.getPnumN()+" ...."+place.getPnumS());
			}
		return placelist;
	}

	
	public List<User> findByName(String sname) {
		userlist = (List<User>) hibernateTemplate.find("from User where sname = ? " ,sname);  
            if (userlist!= null && userlist.size() >= 1)  
            {  
                return userlist;  
            }  
		return null;
	}

	public User findByName1(String sname) {
		List<User> _userlist= (List<User>)hibernateTemplate.find("from User where SNAME = ?",sname); 	
        if(_userlist==null||_userlist.size()==0){
        	return null;
        }
        else{
        	System.out.println(_userlist);
		return _userlist.get(0);
        }
	}


	@Override
	public void add(User user) {
		hibernateTemplate.save(user);
	}


	public List<User> findById(String sid) {
		User _user=hibernateTemplate.get(User.class,sid);
		return null;
	}


	@Override
	public String checkUserName(String sname) {
		return null;
	}
	

	public void dl() {
		CARTTool2 cart = new CARTTool2();		
	}



	


	
	
	
}
