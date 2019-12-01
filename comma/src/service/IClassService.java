package service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;


public interface IClassService {

	
	public int resistClass(HashMap<String, Object> params);
	public int removeClass(String number);
	public int modifyClass(HashMap<String, Object> params);
	public HashMap<String, Object> viewClass(int number);
	public HashMap<String, Object> searchClass(HashMap<String, Object> params);
	public ArrayList<HashMap<String, Object>> popList();
	public ArrayList<HashMap<String, Object>> allList();
	public ArrayList<HashMap<String, Object>> historyClass(int max);
	public ArrayList<HashMap<String, Object>> orderClass(HashMap<String, Object> params);
	public String interClass(String number);
	
	
	
	public int addReview(HashMap<String, Object> params);
	public int addLog(HashMap<String, Object> params);
	
	
	
}
