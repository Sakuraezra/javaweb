package Dao;

import java.util.List;

import entity.Place;
import entity.User;

public interface UserDao {


	

	List<Place> show();

	List<User> findByName(String sname);
	List<User> findById(String username);

	public User findByName1(String sname);

	public void add(User user);

	public String checkUserName(String sname);

	public void dl();

	


}
