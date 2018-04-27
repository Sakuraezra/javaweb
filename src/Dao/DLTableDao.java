package Dao;

import java.util.List;

import entity.DL;
import entity.DLTable;
import entity.Place;


public interface DLTableDao {

	

	String traintree(DL dl);
	public List<DL> getDLList();

	void savaDLTable(List<DLTable> dlTables);

	int getdbsize();
	List<Place> plshow(DL _dl);
	
}
