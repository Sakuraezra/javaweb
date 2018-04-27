package Dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate4.HibernateTemplate;

import entity.PageBean;
import entity.Place;


public class PlaceDaoImpl implements PlaceDao{
	
	private HibernateTemplate hibernateTemplate;

	List<Place> list=null;
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}


	public void add(){
	
	}
	
	
	public List<Place> show(){		
	list = (List<Place>) hibernateTemplate.find("from Place");		
	return list;
	}


	@Override
	public PageBean listPage(int pc, int ps) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public int findCount() {
		
		List<Object> list =(List<Object>)hibernateTemplate.find("select count(*) from Place");
		if(list!=null && list.size()!=0)
		{
		Object obj=list.get(0);
		Long logj=(Long)obj;
		int count = logj.intValue();
		return count;

		}
		return 0;
	}



	public List<Place> findPage(int begin, int pageSize) {
		//使用离线对象
		
		DetachedCriteria criteria =DetachedCriteria.forClass(Place.class);
		
		List<Place> list =(List<Place>) hibernateTemplate.findByCriteria(criteria,begin,pageSize);

		return list;
	}


	
}
