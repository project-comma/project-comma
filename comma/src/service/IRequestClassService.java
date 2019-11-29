package service;

import java.util.ArrayList;
import java.util.HashMap;

public interface IRequestClassService {

	
	public int resistRequest(HashMap<String, Object> params);
	public int removeRequest(String id);
	public int modifyRequest(HashMap<String, Object> params);
	public HashMap<String, Object> viewRequest(int num);
	public HashMap<String, Object> searchRequest(HashMap<String, Object> params, int page);
	public int addLog(HashMap<String, Object> params);
	
	
	
}
