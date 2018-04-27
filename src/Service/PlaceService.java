package Service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import Dao.PlaceDao;
import entity.PageBean;
import entity.Place;
	
@Transactional
public class PlaceService {
		
		private PlaceDao placeDao;	
		public void setPlaceDao(PlaceDao placeDao) {
			this.placeDao = placeDao;
		}

		public void add(){
			System.out.println("service..........");
			placeDao.show();		
		}

		public List<Place> show() {
			return placeDao.show();
		}



		public PageBean listPage(Integer currentPage) {
			//创建PageBean 对象
			PageBean pageBean = new PageBean();
			//当前页
			pageBean.setCurrentPage(currentPage);
			//总记录数
			int totalCount = placeDao.findCount();
			pageBean.setTotalCount(totalCount);			
			//每页显示记录数
			int pageSize =10;
			int totalpage = 0;
			//总页数    ==  总记录数/每页记录数
			if(totalCount%pageSize==0)
			{
				totalpage = totalCount/pageSize;
			}else{
				totalpage=totalCount/pageSize+1;
			}	
			pageBean.setTotalPage(totalpage);
			//开视位置
			int begin=(currentPage-1)*pageSize;
			//每页记录list
			List<Place> list = placeDao.findPage(begin,pageSize);
			pageBean.setList(list);
			
			
			return pageBean;
			
			
		}
			
}
