package service;

import java.util.ArrayList;
import java.util.HashMap;

public interface IRequestClassService {

	
	public int resistRequest(HashMap<String, Object> params);
	public int removeRequest(String id);
	public int modifyRequest(HashMap<String, Object> params);
	public HashMap<String, Object> viewRequest(String id);
	public ArrayList<HashMap<String, Object>> searchRequest(HashMap<String, Object> params);
	public int addLog(HashMap<String, Object> params);
	
	
	
}
