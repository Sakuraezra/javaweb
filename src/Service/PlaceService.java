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
			//����PageBean ����
			PageBean pageBean = new PageBean();
			//��ǰҳ
			pageBean.setCurrentPage(currentPage);
			//�ܼ�¼��
			int totalCount = placeDao.findCount();
			pageBean.setTotalCount(totalCount);			
			//ÿҳ��ʾ��¼��
			int pageSize =10;
			int totalpage = 0;
			//��ҳ��    ==  �ܼ�¼��/ÿҳ��¼��
			if(totalCount%pageSize==0)
			{
				totalpage = totalCount/pageSize;
			}else{
				totalpage=totalCount/pageSize+1;
			}	
			pageBean.setTotalPage(totalpage);
			//����λ��
			int begin=(currentPage-1)*pageSize;
			//ÿҳ��¼list
			List<Place> list = placeDao.findPage(begin,pageSize);
			pageBean.setList(list);
			
			
			return pageBean;
			
			
		}
			
}
