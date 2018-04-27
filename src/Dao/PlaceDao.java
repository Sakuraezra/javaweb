package Dao;

import java.util.List;

import entity.PageBean;
import entity.Place;

public interface PlaceDao {

	public void add();
	public List<Place> show();
	public PageBean listPage(int pc, int ps);
	public int findCount();
	public List<Place> findPage(int begin, int pageSize);
}
