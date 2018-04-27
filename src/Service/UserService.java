package Service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import Dao.UserDao;
import entity.Place;
import entity.User;


@Transactional
public class UserService {
	
	private UserDao userDao;
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public List<Place> show() {
		return userDao.show();
	}
	

	public List<User> findByName(String sname) {
		List<User> list =(List<User>)userDao.findByName(sname);
		return list;
	}

	public List<User> findById(String id) {
		return null;
	}
	
	
	public void reg(User user) throws Exception  {
		User _user =(User)userDao.findByName1(user.getSname());
		if(_user==null)		
		userDao.add(user);
		else{
			throw new Exception("用户名已存在");
		}
	}

	public List<User> findByName1(String sname) {
		List<User> list =(List<User>)userDao.findByName(sname);
		return list;
	}

	public void dl() {
		userDao.dl();
	}
}
