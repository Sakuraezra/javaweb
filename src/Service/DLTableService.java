package Service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import Dao.DLTableDao;
import entity.DL;
import entity.Place;
	
@Transactional
public class DLTableService {
		
		private DLTableDao dltableDao;	
		public void setDltableDao(DLTableDao dltableDao) {
			this.dltableDao = dltableDao;
		}
		private DL dl;

		public void input(DL dl)
		{
			this.dl = dl;
		}

		public DL output()
		{
			return this.dl;
		}
		
		public String traintree(DL dl) {
			// TODO Auto-generated method stub
			return dltableDao.traintree(dl);
		}


		public int getdbsize() {
			return dltableDao.getdbsize();
			 
		}	
		public List<Place> plshow(DL _dl) {
			return dltableDao.plshow(_dl);
		}


		
}
